<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    protected $fillable = [
        'right_answer','wrong_answer','notAttempt','attempt_question','score','candidate_id'
    ];
}
