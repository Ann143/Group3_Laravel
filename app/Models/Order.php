<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    //Order belongs to user
        public function user(){
            return $this->belongsTo(User::class);
        }

 //Order beelongs to many product
  public function products(){
      return $this->belongsToMany(Product::class);
  }
}
