<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DataTables;
use App\Category;
use DB;
use App\Result;
use Carbon\Carbon;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $category = Category::all();
        return view('home', compact('category'));
       // return view('home');
    }

    public function getCandidates(){
       
        $data = DB::table('users')
                ->join('results', 'users.id', '=', 'candidate_id')
                ->where('is_admin', false)
				->select('users.*','results.*')
                ->get();
        return Datatables::of($data)->make(true);     
        
    }

    public function getQuestions(Request $request){
        
        $categoryId = $request->input('categoryID');
        $question_details = DB::table('questions')
                            ->Where('category_id', '=', $categoryId)
                            ->get();
        return view('question', compact('question_details'));
    }

    public function getAnswers(Request $request){

        $right = 0;
        $wrong = 0;
        $notAttempt = 0;
        $category_id = $request->input('category_id');
        $answerId = $request->input('ans'); 
        
        $answer_details = DB::table('questions')
                            ->select('id','ans')
                            ->Where('category_id', '=', $category_id)
                            ->get();
                                                  
         foreach($answer_details as $answer_detail){
            if($answer_detail->ans == $answerId){
                $right++;
            
            }elseif($answerId == "no_attempt"){
                     $notAttempt++;           
            }else{  
                $wrong++;
            }     
                     
         }

    $total_question= $right+$wrong+$notAttempt;
    $attempt_qus= $right+$wrong;
    $per =($right*100)/($total_question);
    $id = Auth::id();
 
    Result::create([
        'right_answer' => $right,
        'wrong_answer' => $wrong,
        'notAttempt' => $notAttempt,
        'attempt_question' => $attempt_qus,
        'score' => $per,
        'candidate_id' => $id,
        'created_at' => Carbon::now(),
        'updated_at' => Carbon::now()
    ]);

         $data = array(
            "right" => $right,
            "wrong" => $wrong,
            "notAttempt" => $notAttempt,
            "total_question" => $total_question,
            "attempt_qus" => $attempt_qus,
            "score" => $per."%"
          );
          
        return view('answer', compact('data'));

    }

    public function show($id){
        // return view('answer');
    }


}
