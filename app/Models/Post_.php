<?php

namespace App\Models;


class Post
{
    private static $post_blog = [[
        "judul" => "Judul post pertama",
        "slug" => "judul-post-pertama",
        "author" => "Ari Purnama",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur hic sed ratione alias, enim at. Quaerat dolor beatae ipsa eligendi nemo molestiae ratione nesciunt tempora architecto inventore culpa dignissimos, earum blanditiis corrupti aspernatur autem quidem magni recusandae at odit commodi id quam minima. Ad odio, adipisci optio consequuntur error distinctio accusantium maxime fugit deleniti temporibus sapiente. Laudantium provident consequatur labore, obcaecati dicta deleniti praesentium ex dignissimos reiciendis sequi doloribus quisquam facilis modi sunt amet similique ea libero ipsum aliquam voluptate."
    ],
    [
        "judul" => "Judul post kedua",
        "slug" => "judul-post-kedua",
        "author" => "Deni caknan",
        "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur hic sed ratione alias, enim at. Quaerat dolor beatae ipsa eligendi nemo molestiae ratione nesciunt tempora architecto inventore culpa dignissimos, earum blanditiis corrupti aspernatur autem quidem magni recusandae at odit commodi id quam minima. Ad odio, adipisci optio consequuntur error distinctio accusantium maxime fugit deleniti temporibus sapiente. Laudantium provident consequatur labore, obcaecati."
    ]
    ];

    public static function all()
    {
        return collect(self::$post_blog);
    }

    public static function find($slug)
    {
        $posts = static::all();
        // $post = [];
        // foreach ($posts as  $p ) {
        //     if( $p['slug'] == $slug){
        //         $post = $p ;
        //     }
        // }
        // return $post;
        
        return $posts->firstWhere('slug', $slug);
    }
}
