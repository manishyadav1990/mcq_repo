<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = [
        'question','ans1','ans2','ans3','ans4','ans','category_id'
    ];
}
