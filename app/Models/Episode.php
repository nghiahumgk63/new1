<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Episode extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $fillable = [
        'movie_id','linkphim','episode','created_at','updated_at'
    ];
    protected $primaryKey = 'id';
    protected $table = 'episodes';

     public function movie(){
        return $this->belongsTo(Movie::class);
    }
    
    public function comment_movie(){
        return $this->hasMany(Comment::class);
    }
   
}
