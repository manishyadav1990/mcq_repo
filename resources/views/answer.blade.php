
@extends('layouts.app')

@section('content')
<div class="container">

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">{{ __('Answer') }}</div>
                    <div class="card-body">

                     <h2>Your Quiz results</h2>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Total number of Questions</th>
                                <th><?php echo $data['total_question']; ?></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Attempted qusetions</td>
                                <td><?php echo $data['attempt_qus'];?></td> 
                            </tr>
                            <tr>
                                <td>Right answer </td>
                                <td><?php echo $data['right'];?></td>
                            </tr>
                            <tr>
                                <td>Wrong answer</td>
                                <td><?php echo $data['wrong'];?></td>
                            </tr>
                            <tr>
                                <td>No answer</td>
                                <td><?php echo $data['notAttempt'];?></td>
                            </tr>
                            <tr>
                                <td>Your result</td>
                                <td><?php echo $data['score'];?></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
</div>
@endsection
