<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{

 /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'product_name',
        'price',
        'description',
        'product_image',
    ];



    use HasFactory;

//Product belongs to many cart
    public function carts(){
        return $this->belongsToMany(Cart::class);
    }

//Product belongs to many order 
    public function orders(){
        return $this->belongsToMany(Order::class);
    }
}
