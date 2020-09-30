
@extends('layouts.app')

@section('content')
<div class="container">

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('List of Question') }}</div>

                    <div class="card-body">

        <form method="post" action="{{ route('answers') }}" >
         <fieldset id="group1">
         @csrf

       @foreach($question_details as $question_detail)       
            <table class="table table-bordered">
                <thead>
                <tr class = "table-danger">
                    <th>{{$question_detail->question}}</th>
                </tr>
                </thead>
                <tbody>
                @if(isset($question_detail->ans1)) 
                    <tr>    
                        <td><input type="radio" name="ans" value="0"> {{$question_detail->ans1}}  </td>
                    </tr>
                     @endif

                @if(isset($question_detail->ans2)) 
                    <tr> 
                         <td><input type="radio" name="ans" value ="1" > {{$question_detail->ans2}} </td>
                    </tr> 
                @endif

                @if(isset($question_detail->ans3)) 
                    <tr>                       
                        <td><input type = "radio" name="ans" value ="2">  {{$question_detail->ans3}} </td>
                    </tr> 
                @endif

                @if(isset($question_detail->ans4))
                    <tr>
                         <td><input type = "radio" name="ans" value ="3" > {{$question_detail->ans4}} </td>    
                    </tr>
                @endif
                      <tr>
                         <input class="checked" type="radio" checked style="visibility:hidden" name="ans" value ="no_attempt" /> 
                         <input type="hidden" name="category_id" value ="{{$question_detail->category_id}}" />    
                    </tr>
                @endforeach
                </tbody> 
            </table>
                        <center><button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button></center>                       
              </fieldset>
              </form>
                    </div>
                </div>
            </div>
        </div>
</div>
@endsection
