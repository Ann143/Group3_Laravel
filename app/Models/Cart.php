<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    public $timestamps = false;


//cart belongs to many user
    public  function user(){
        return $this->belongsTo(User::class);
    }

    //cart belongs to many products
    public function products(){
        return $this->belongsToMany(Product::class);
    }
}
