<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Post extends Model
{
    
    use HasFactory, Sluggable; 

    // protected $fillable = ['title' ,'excerpt' ,'body'];
    protected $guarded = ['id'];
    protected $with = ['category', 'author'];

    // public function scopeFilter($query )
    // {
    //     if( request('search') )
    //     {
    //         return $query->where('title' , 'like', '%'.$query('search').'%')
    //         ->orWhere('body', 'like', '%'.$query('search').'%');
    //     }
    // }
    
    public function scopeFilter($query , array $filters)
    {
        // if(isset($filters['search']) ? $filters['search'] : false)
        // {
        //     return $query->where('title' , 'like', '%'.$filters['search'].'%')
        //     ->orWhere('body', 'like', '%'.$filters['search'].'%');
        // }

        $query->when($filters['search'] ?? false , function($query , $search){
            return $query->where('title' , 'like', '%' . $search . '%')
            ->orWhere('body', 'like', '%' . $search . '%');
        });

        $query->when($filters['category'] ?? false , function($query , $category){
            return $query->whereHas('category', function($query) use ($category){
                $query->where('slug', $category );
            });
        });

        $query->when($filters['author'] ?? false, function($query, $author){
            return $query->whereHas('author', function($query) use ($author){
                $query->where('username', $author);
            });
        });

        // $query->when($filters['author'] ?? false ,fn($query,$author) =>
        //     $query->whereHas('author',fn($query) =>
        //     $query->where('username',$author));
    // );     
    }
    
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    // public function user(){
    //     return $this->belongsTo(User::class);
    // }

    //jika ingin mengubah key user_id menjadi author 
    public function author(){
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName()
{
    return 'slug';
}

public function sluggable(): array
{
    return [
        'slug' => [
            'source' => 'title'
        ]
        ];
}


}
