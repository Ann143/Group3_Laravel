<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    public function getOrders(){
        $orders = Order::with('user','products')->get();
        // $orders = Order::all();
        return $orders;
    }
}
