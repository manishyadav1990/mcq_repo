
@extends('layouts.app')

@section('content')
<div class="container">
    @if(auth()->user()->is_admin == 1)
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('List of Candidates') }}</div>

                    <div class="card-body">
                    <table class="table border" id="myTable">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Score(%)</th>
            </tr>
        </thead>
    </table>
    <script>

    $(document).ready( function () {
     $('#myTable').DataTable({
        processing: false,
        serverSide: false,
        ajax: '{!! route('get.candidates') !!}',
        columns: [
            { data: 'id'},
            { data: 'name'},
            { data: 'email'},
            { data: 'score'}
        ],
    });
} );

</script>                       
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header"><b>{{ __('ONLINE MCQ IN LARAVEL') }}<b></div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif

                         <div class="container">
                        <center><button type="button" class="btn btn-primary" data-toggle="tab" href="#select" >Start Quiz</button><center>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4"> <br>
                        <div id="select" class="tab-pane fade">

                        <form method="post" action="{{ route('questions') }}" >
                        @csrf
                        <select class="form-control" id="categoryID" name="categoryID"> 
                        <option class="hidden" selected disabled>Select Category</option> 
                         @foreach ($category as $categories) 
                           <option value="{{ $categories->id }}">{{ $categories->category_name }}</option> 
                        @endforeach 
                        </select> <br>
                        <input type = "submit" value = "submit" class="btn btn-primary">

                        </form> 
                        </div> 
                        </div> 
                        
                        </div> 

                    </div>
                </div>
            </div>
        </div>
    @endif
</div>
@endsection
