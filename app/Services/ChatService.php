<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class ChatService
{
    private function initChatHeader()
    {
        return Http::withoutVerifying()->withHeaders([
            'Content-Type'      => 'application/json',
            'Authorization'     => 'Bearer ' . env('OPENAI_API_KEY'),
            'OpenAI-Beta'       => 'assistants=v1',
        ]);
    }

    private function getBaseUrl(){

        return 'https://api.openai.com/v1/' ;

    }


    public function createAndRunThread($userMessage)
    {
        $apiName = 'Create thread and run';

        $url = $this->getBaseUrl() . 'threads/runs';

        $data = [
            'assistant_id' => env('Assistant_Id'),
            'thread' => [
                'messages' => [
                    [
                        'role' => 'user',
                        'content' => $userMessage,
                        'file_ids' => [env('assist_file_id')],
                    ]
                ],
            ],
        ];

        $response = $this->initChatHeader()->post($url, $data);

        if ($response->successful()) {
            if ($response->object()) {
                if ($response->object()->thread_id) {
                    return $response->object()->thread_id;
                }
            }
        }
        return [
            'error' => 'Failed to create thread. Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];
    }

    public function createThread(){

        $apiName = 'Create thread';

        $url = $this->getBaseUrl() . 'threads';

        $response = $this->initChatHeader()->post($url);

        if ($response->successful()) {
            // log::info(collect($response->object())) ;
            if ($response->object()) {
                if ($response->object()->id) {
                    return $response->object()->id;
                }
            }
        }
        return [
            'error' => 'Failed to create thread. Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    public function getAllMessages($thread_id){

        $apiName = 'List messages';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/messages';

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                $data = $response->object()->data ;
                $first_id = $response->object()->first_id ;
                
                return [
                    'data' => $data ,
                    'first_id' => $first_id ,
                ];
            }
        }
        return [
            'error' => 'Failed to get Messages from '.  $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];
        
    }

    public function getMessage($thread_id,$message_id){

        $apiName = 'Retrieve message';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/messages' . '/' . $message_id;

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                return $response->object() ;
            }
        }
        return [
            'error' => 'Failed to get Message from '.  $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }
    
    public function getLastMessage($thread_id,$message_id = null){

        $apiName = 'List messages with query before';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/messages?before=' . $message_id;

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                // $data = $response->object()->data ;
                $first_id = $response->object()->first_id ;
                $last_message = $this->getMessage($thread_id,$first_id);
                
                return [
                    'message' => $last_message->content[0]->text->value ,
                    'created_at' =>  $last_message->created_at ,
                ];
            }
        }
        return [
            'error' => 'Failed to get Messages from '.  $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    public function addMessage($thread_id,$userMessage){

        $apiName = 'Create message';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/messages' ;

        $data = [
            'role' => 'user',
            'content' => $userMessage,
        ];

        $response = $this->initChatHeader()->post($url,$data);

        if ($response->successful()) {
            if ($response->object()) {
                return $response->object()->id ;
            }
        }
        return [
            'error' => 'Failed to send a new message . Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];
    }

    public function createRun($thread_id){

        $apiName = 'Create run';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/runs' ;

        $data = [
            'assistant_id' => env('Assistant_Id'),
        ];

        $response = $this->initChatHeader()->post($url,$data);

        if ($response->successful()) {
            if ($response->object()) {
                return $response->object()->id ;
            }
        }
        return [
            'error' => 'Failed to send a new message . Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    public function getRunStatus($thread_id , $run_id){
        $apiName = 'Retrieve run';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/runs' . '/' . $run_id ;

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                return [
                    'status' => $response->object()->status,
                    'last_error' => $response->object()->last_error,
                    ] ;
            }
        }
        return [
            'error' => 'Failed to get run ' . $run_id .  ' status' . 'Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];
    }

    public function getAllRuns($thread_id){

        $apiName = 'List runs';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/runs' ;

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                return $response->object() ;
            }
        }
        return [
            'error' => 'Failed to get all runs from thread ' . $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    public function lastRunStatus($thread_id, $run_id = null){

        $apiName = 'List runs';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id  .'/runs?before=' . $run_id ;

        $response = $this->initChatHeader()->get($url);

        if ($response->successful()) {
            if ($response->object()) {
                $first_id = $response->object()->first_id ;
                $data = $this->getRunStatus($thread_id,$first_id);
                
                return [
                    // 'run' => $last_run->id ,
                    'status' => $data['status'] ,
                    'last_error' => $data['last_error'] ,
                    // 'created_at' =>  $last_run->created_at ,
                ];
            }
        }
        return [
            'error' => 'Failed to get all runs from thread ' . $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    public function deleteThread($thread_id){

        $apiName = 'Delete thread';

        $url = $this->getBaseUrl() . 'threads/'. $thread_id ;

        $response = $this->initChatHeader()->delete($url);

        if ($response->successful()) {
            if ($response->object()) {
                return $response->object() ;
            }
        }
        return [
            'error' => 'Failed to delete thread ' . $thread_id . ' Check the response for more details.',
            'response' => $response->json(), 
            'status_code' => $response->status(),
        ];

    }

    

}
