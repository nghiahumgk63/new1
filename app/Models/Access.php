<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class access extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = [
        'ip_address','date_access','count_access'
    ];
    protected $primaryKey = 'id_access';
    protected $table = 'access';
}
