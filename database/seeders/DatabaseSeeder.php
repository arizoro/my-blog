<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Post;
use App\Models\Category;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        
        User::create([
                'name' => 'Ari Purnama',
                'username'=> 'aripurnama',
                'email' => 'arizoro88@gmail.com',
                'password' => bcrypt('12345')
            ]);
            
        // User::create([
        //         'name' => 'Doni Setiawan',
        //         'email' => 'donistw@gmail.com',
        //         'password' => bcrypt('12345')
        //     ]);
        
        User::factory(4)->create();
        
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Category::create([
            'name' => 'Web Disign',
            'slug' => 'web-disign'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel',
        //     'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel ipsa optio debitis asperiores hic reprehenderit facere recusandae nemo? Et aspernatur amet quidem libero laboriosam magni quis beatae dignissimos, consequatur reiciendis quod fugiat! Dolores modi neque cupiditate incidunt porro, quibusdam quasi ex libero accusantium dicta, eum voluptatem dignissimos tempora nisi.</p><p> Consectetur ea amet rerum quas consequuntur, non ipsum? Autem tempora eos non ea reiciendis! Eligendi, itaque! Nisi a labore sequi ullam alias optio corporis quos, atque, excepturi sed assumenda aperiam non unde ex voluptatibus reiciendis fugit, obcaecati libero consequuntur! Ratione sed accusantium deserunt delectus sequi repellendus magni, accusamus voluptatum?</p>',
        //     'category_id' => 1 ,
        //     'user_id' => 1

        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel',
        //     'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel ipsa optio debitis asperiores hic reprehenderit facere recusandae nemo? Et aspernatur amet quidem libero laboriosam magni quis beatae dignissimos, consequatur reiciendis quod fugiat! Dolores modi neque cupiditate incidunt porro, quibusdam quasi ex libero accusantium dicta, eum voluptatem dignissimos tempora nisi.</p><p> Consectetur ea amet rerum quas consequuntur, non ipsum? Autem tempora eos non ea reiciendis! Eligendi, itaque! Nisi a labore sequi ullam alias optio corporis quos, atque, excepturi sed assumenda aperiam non unde ex voluptatibus reiciendis fugit, obcaecati libero consequuntur! Ratione sed accusantium deserunt delectus sequi repellendus magni, accusamus voluptatum?</p>',
        //     'category_id' => 1 ,
        //     'user_id' => 1

        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel',
        //     'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel ipsa optio debitis asperiores hic reprehenderit facere recusandae nemo? Et aspernatur amet quidem libero laboriosam magni quis beatae dignissimos, consequatur reiciendis quod fugiat! Dolores modi neque cupiditate incidunt porro, quibusdam quasi ex libero accusantium dicta, eum voluptatem dignissimos tempora nisi.</p><p> Consectetur ea amet rerum quas consequuntur, non ipsum? Autem tempora eos non ea reiciendis! Eligendi, itaque! Nisi a labore sequi ullam alias optio corporis quos, atque, excepturi sed assumenda aperiam non unde ex voluptatibus reiciendis fugit, obcaecati libero consequuntur! Ratione sed accusantium deserunt delectus sequi repellendus magni, accusamus voluptatum?</p>',
        //     'category_id' => 2 ,
        //     'user_id' => 1

        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel',
        //     'body' => '<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda, beatae vel ipsa optio debitis asperiores hic reprehenderit facere recusandae nemo? Et aspernatur amet quidem libero laboriosam magni quis beatae dignissimos, consequatur reiciendis quod fugiat! Dolores modi neque cupiditate incidunt porro, quibusdam quasi ex libero accusantium dicta, eum voluptatem dignissimos tempora nisi.</p><p> Consectetur ea amet rerum quas consequuntur, non ipsum? Autem tempora eos non ea reiciendis! Eligendi, itaque! Nisi a labore sequi ullam alias optio corporis quos, atque, excepturi sed assumenda aperiam non unde ex voluptatibus reiciendis fugit, obcaecati libero consequuntur! Ratione sed accusantium deserunt delectus sequi repellendus magni, accusamus voluptatum?</p>',
        //     'category_id' => 2 ,
        //     'user_id' => 2

        // ]);


    }
}
