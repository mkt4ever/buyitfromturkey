<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserChat;
use App\Services\ChatService;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class ChatbotController extends Controller
{
    public function chatBot(Request $request){

        log::info('start with ChatBot') ;
     
        $isFirst = ($request->query('isFirst') == 1) ? true : false;

        log::info('is this first message ' . $isFirst) ;

        $message = $request->query('message');

        log::info('message ' . $message) ;

        $this->validateMessage($message);

        $run_id = null ;
        $message_id = null ;

        if($isFirst){

            $thread_id = $this->creatConversation() ;

            log::info('Create new Thread ' . $thread_id) ;
        }
        else{

            if(Auth::check()){
                $user_id = Auth::user()->id ;
            }else{
                $guestUserName = 'Guest_' . session()->getId();
                $guestUser = User::where('name' , $guestUserName)->firstOrFail();
    
                $user_id = $guestUser->id ;
            }

            $userChat = UserChat::where('user_id' , $user_id)->orderBy('created_at' , 'DESC')->firstOrFail() ;
            $thread_id = $userChat->thread_id ;

            log::info('User Chat is ' . $userChat->id) ;

        }
        $data = $this->addNewMessage($thread_id, $message) ;
        

        log::info('Adding a new message ' . collect($data)) ;
        if(!$isFirst){
            // $run_id = $data['run_id'] ;
            // $message_id = $data['message_id'] ;
            // log::info('Not First message update last params ' . $run_id . ' | ' . $message_id) ;
        }
        
        // return response()->json('JUST ADD MESSAGE');


        $timeout = 15; // Set a timeout in seconds
        $start_time = time(); // Record the start time

        while (true) {
            // Check the last run status in each iteration
            $lastRunStatus = (new ChatService())->lastRunStatus($thread_id,$run_id);

            log::info('lastRunStatus ' . collect($lastRunStatus['status'])) ;

            if ($lastRunStatus['status'] == 'completed') {

                $last_message = $this->getLastMessage($thread_id , $message_id) ;

                return response()->json($last_message['message']) ;
                
            }

            if ($lastRunStatus['status'] == 'failed') {
                $error_message = $lastRunStatus['last_error']->message ;
                return response()->json($error_message) ;
            }

            // Check if the timeout has been reached
            if (time() - $start_time > $timeout) {
                log::info('time out ' ) ;
                break; // Exit the loop if the timeout is reached
            }

            sleep(1);
        }

    }

    public function destroy(Request $request){

        $user_id = null ;
        if(Auth::check()){
            $user_id = Auth::user()->id ;
        }else{
            $guestUserName = 'Guest_' . session()->getId();
            $guestUser = User::where('name' , $guestUserName)->get()->first();

            if(isset($guestUser)){
                $user_id = $guestUser->id ;
            }
            
        }
        if(isset($user_id)){

            $userChat = UserChat::where('user_id' , $user_id)->firstOrFail();

            $response = $this->deleteThread($userChat->thread_id) ;

            if($response->deleted){
                $userChat->delete();
                return response()->json('Hope you enjoyed with our ChatBot , happy to help you :-) ');
            }   

            
        }
        
        return response()->json($user_id);
    }

    public function creatConversation(){
        
        $thread_id = (new ChatService())->createThread() ;

        $userChat = new UserChat ;

            if (Auth::check()) {
                $userChat->user_id = User::findOrFail(Auth::user()->id);
            } else {
                $session_id = session()->getId();
                $guestUserName = 'Guest_' . $session_id;
    
                $guestUser = User::where('name', $guestUserName)->first();
    
                if (!$guestUser) {
                    $guestUser = User::create([
                        'name' => $guestUserName,
                        'email' => $guestUserName.'@guest.com' ,
                        'password' => '12345' ,
                    ]);
                }
    
                $userChat->user_id = $guestUser->id;
            }

        $userChat->thread_id = $thread_id ;

        $userChat->save() ;

        return $userChat->thread_id ;

    }


    public function startConversation($message){
 

        // $message = $request->query('message');


        // return response()->json($isFirst);
        // return response()->json($message);

        // $userChat = UserChat::where('user_id' , Auth::user()->id )->firstOrFail() ;

        // return response()->json($userChat->id);

        // $message = 'suggest to me product with lowest price ' ;

        try {
    
            $thread_id = (new ChatService())->createAndRunThread($message);

            $userChat = new UserChat ;

            if (Auth::check()) {
                $userChat->user_id = User::findOrFail(Auth::user()->id);
            } else {
                $session_id = session()->getId();
                $guestUserName = 'Guest_' . $session_id;
    
                $guestUser = User::where('name', $guestUserName)->first();
    
                if (!$guestUser) {
                    $guestUser = User::create([
                        'name' => $guestUserName,
                        'email' => 'guset@guest.com' ,
                        'password' => '12345' ,
                    ]);
                }
    
                $userChat->user_id = $guestUser->id;
            }

            $userChat->thread_id = $thread_id ;

            $userChat->save() ;
    
            return $userChat;
        } catch (ValidationException $e) {
            return response()->json(['error' => $e->errors()], 422);
        }

        

    }

    public function getLastMessage($thread_id , $message_id=null){

            $last_message = (new ChatService())->getLastMessage($thread_id,$message_id);

            return $last_message ;

    }

    public function deleteThread($thread_id){

        return (new ChatService())->deleteThread($thread_id);

    }

    public function addNewMessage($thread_id , $message){

        $message_id = (new ChatService())->addMessage($thread_id , $message) ;

        $run_id = (new ChatService())->createRun($thread_id) ;

        return [
            'message_id' => $message_id,
            'run_id' => $run_id,
        ];

    }

    public function validateMessage($message)
    {
        return validator(['message' => $message], [
            'message' => 'required|string|max:255',
        ])->validate();
    }



    public function test(){

        $data = (new ChatService())->getLastMessage('thread_FTpGEd7iIzPjwog9UwJSIEUb');

        dd($data) ;
    }

}
