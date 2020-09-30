<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
class QuestionAnswerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('questions')->delete();  
         
        $questions = array(
            array(
            'id' => 1,
            'question' => "In a standard game of Monopoly, what colour are the two cheapest properties?",
            'ans1' => "Green",
            'ans2' => "Yellow",
            'ans3' => "Blue",
            'ans4' => "Brown",
            'ans'  => 3,
            'category_id' => 1,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 2,
            'question' => "Before 2011, Capitalist Radio was known by a different name. What was that name?",
            'ans1' => "True Conservative Radio",
            'ans2' => "True Republican Radio",
            'ans3' => "Texan Capitalist Radio",
            'ans4' => "United Capitalists",
            'ans'  => 0,
            'category_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 3,
            'question' => "Which of the following Pacific Islander countries is ruled by a constitutional monarchy?",
            'ans1' => "Palau",
            'ans2' => "Fiji",
            'ans3' => "Tonga",
            'ans4' => "Kiribati",
            'ans'  => 2,
            'category_id' => 2,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()        
        ),
            array(
            'id' => 4,
            'question' => "Why was the character Trevor Philips discharged from the Air Force?",
            'ans1' => "Injuries",
            'ans2' => "Mental Health Issues",
            'ans3' => "Disease",
            'ans4' => "Danger to Others",
            'ans'  => 1,
            'category_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
        array(
            'id' => 5,
            'question' => "Which of these stages is not playable in Super Smash Bros. for Wii U?",
            'ans1' => "Bridge of Eldin",
            'ans2' => "75m",
            'ans3' => "Miiverse",
            'ans4' => "Fountain of Dreams",
            'ans'  => 3,
            'category_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),

        array(
            'id' => 6,
            'question' => "In PUBATTLE GROUNDS which ammo type does the M24 use?",
            'ans1' => "5.56mm",
            'ans2' => "7.62mm",
            'ans3' => "9mm",
            'ans4' => ".300 Magnum",
            'ans'  => 1,
            'category_id' => 3,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 7,
            'question' => "Which of the following anime of the mecha genre began airing in 1982?",
            'ans1' => "Mobile Suit Gundam",
            'ans2' => "Armored Trooper VOTOMS",
            'ans3' => "The Super Dimension Fortress Macross",
            'ans4' => "Neon Genesis Evangelion",
            'ans'  => 2,
            'category_id' => 4,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
            ),
            array(
            'id' => 8,
            'question' => "Which of the following Japanese islands is the biggest?",
            'ans1' => "Honshu",
            'ans2' => "Hokkaido",
            'ans3' => "Shikoku",
            'ans4' => "Kyushu",
            'ans'  => 0,
            'category_id' => 5,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),
            array(
            'id' => 9,
            'question' => "In 1939, Britain and France declared war on Germany after it invaded which country?",
            'ans1' => "Czechoslovakia",
            'ans2' => "Poland",
            'ans3' => "Austria",
            'ans4' => "Hungary",
            'ans'  => 1,
            'category_id' => 6,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ), 
        
        array(
            'id' => 10,
            'question' => "After England, more Shakespeare plays are set in this present day country than in any other.",
            'ans1' => "United States",
            'ans2' => "Greece",
            'ans3' => "Italy",
            'ans4' => "France",
            'ans'  => 2,
            'category_id' => 7,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now() 
        ),          
     );
        DB::table('questions')->insert($questions);
        
    }
}
