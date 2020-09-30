<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->delete();  
         
        $categories = array(
            array(
            'id' => 1,
            'category_name' =>"Entertainment: Board Games",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 2,
            'category_name' =>"Politics",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 3,
            'category_name' =>"Entertainment: Video Games",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()        
        ),
            array(
            'id' => 4,
            'category_name' =>"Entertainment: Japanese Anime & Manga",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 5,
            'category_name' =>"Geography",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
            ),
            array(
            'id' => 6,
            'category_name' =>"History",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 7,
            'category_name' =>"Entertainment: Musicals & Theatres",
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),          
     );
        DB::table('categories')->insert($categories);

    }
}
