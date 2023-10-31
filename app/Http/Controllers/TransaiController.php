<?php

namespace App\Http\Controllers;

use App\Models\SiteText;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class TransaiController extends Controller
{
    public function transalte(Request $request){

        ini_set('max_execution_time', 50000);


        $siteTexts = SiteText::select('id','content')->get();

        $locales = config('voyager.multilingual.locales') ;

        if ($locales['0'] == 'tr') {
            unset($locales['0']);
        }
        
        $groupedItems = [];

        foreach($siteTexts as $siteText){

            $siteTextId = $siteText->id;

            foreach ($locales as $locale) {

                $translation = DB::table('translations')
                ->where('foreign_key', $siteTextId)
                ->where('column_name', 'content') 
                ->where('table_name', 'site_texts') 
                ->where('locale', $locale)
                ->first();

                if (!$translation || empty($translation->value)) {
                    $groupedItems[$locale][] = $siteText;
                }

            }
        }

        $sqlInsertStatements = [];
        if(count($groupedItems) > 0){
            foreach($groupedItems as $locale => $group) {

                $data = json_encode($group);
    
                // $test = '[{"id":2,"content":"What Would You Like To Get From T\u00fcrkiye ?"},{"id":3,"content":"Searching"}]';
    
                $res = $this->chatGPT($data, $locale);
    
                $iteration = $res['choices'][0]['message']['content'] ;
    
                $dataArray = json_decode($iteration, true);
    
                foreach ($dataArray as $item){
    
                    $id = $item['id'];
                    $content = $item['content'];
    
                    $sqlInsert = "INSERT INTO `translations` (`table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) 
                    VALUES (?, ?, ?, ?, ?, NOW(), NOW())";
                    $sqlInsertStatements[] = [
                        'sql' => $sqlInsert,
                        'bindings' => ['site_texts', 'content', $id, $locale, $content],
                    ];
    
                }
    
    
            }

            foreach ($sqlInsertStatements as $statement) {
                echo $statement['bindings'][2] . ' :: ' .$statement['bindings'][3] . ' - ' . $statement['bindings'][4] . '<br>' ;
                DB::statement($statement['sql'], $statement['bindings']);
            }
        }


        

    }

    public function chatGPT($data , $locale){

        $openaiApiKey = env('OPENAI_API_KEY');

        $url = 'https://api.openai.com/v1/chat/completions';

        $headers = [
            'Content-Type' => 'application/json',
            'Authorization' => 'Bearer ' . $openaiApiKey,
        ];

        $data = [
            'model' => 'gpt-4',
            'messages' => [
                [
                    'role' => 'system',
                    'content' => "we will be provided with JSON data , and your task is to translate only content into language ($locale) and return it in JSON format.",
                ],
                [
                    'role' => 'user',
                    'content' => $data,
                ],
            ],
        ];


        $response = Http::withHeaders($headers)->post($url, $data);

        return $response->json();
        
    }
}
