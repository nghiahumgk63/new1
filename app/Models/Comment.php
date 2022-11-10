<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Comment extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'comment','Comment_name','Comment_date','id','comment_status','title_phim','slug_phim','movie_id','rep_comment'
    ];
    protected $primaryKey = 'comment_id';
    protected $table = 'comments';

    public function id_movie(){
        return $this->belongsTo('App\Models\Movie');
    }
    public function movie(){
        return $this->belongsTo(Movie_Genre::class);
    }
    public function movie_episode(){
        return $this->belongsTo(Episode::class,'id');
    }
    public function movie_list(){
        return $this->belongsTo(Movie::class);
    }

}
