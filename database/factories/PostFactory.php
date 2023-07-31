<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(mt_rand(2,5)),
            'slug' => $this->faker->slug(),
            'excerpt' => $this->faker->paragraph(2,4),
            // 'body' => $this->faker->paragraphs(mt_rand(5,8)),
            // 'body' => '<p>' . implode('</p><p>',$this->faker->paragraphs(mt_rand(5,8))). '</p>' ,
            'body' => collect($this->faker->paragraphs(mt_rand(5,8)))
                        ->map(function($p){
                            return "<p?>$p</p>";
                        })->implode('') ,
            'category_id' => mt_rand(1,3),
            'user_id' => mt_rand(1,4)
        ];
    }
}
