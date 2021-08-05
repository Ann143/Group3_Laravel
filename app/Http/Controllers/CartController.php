<?php

namespace App\Http\Controllers;

use App\Models\Cart;
use App\Models\User;
use Illuminate\Http\Request;

class CartController extends Controller
{
   
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request,User $user)
    {
        $cart = $user->cart;
        if(!$cart) {
            $cart = $user->cart()->create();
        }

        $cart->products()->syncWithoutDetaching([ $request->product_id /** Product id */=> [
            'qty' => $request->qty
        ]]);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function getCartProducts(Cart $cart)
    {
        return $cart->products;
    }

    public function checkout(Request $request, User $user) {
        $order = $user->orders()->create([
            'address' => $request->address,
            'phonenumber' => $request->phonenumber,
            'total' => $request->total,
            'status' =>$request->status
        ]);

        $order->products()->sync($request->product_ids);
        $user->cart->products()->detach($request->product_ids);
        
        return "success";
    }




    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cart $cart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart)
    {
        //
    }
}
