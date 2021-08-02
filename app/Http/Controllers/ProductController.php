<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function createProduct(Request $request)
    {
        $response = [];

        $productValidation = Validator::make($request->all(),[
            'product_name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'product_image' => 'required',
        ]);

        if($productValidation->fails()){
            $response["Errors"] = $productValidation->errors();
            $response["code"] = 400;
        }
        else{

            DB::beginTransaction();

            try
            {
                $productData = $productValidation->validated();
                $product = Product::create($productData);

                DB::commit();

                $response["message"] =  $product;
                $response["code"] = 200;
            }
            catch(Exception $e)
            {
                $response["Message"] = "Failed to add product . $e";
                $response["code"] = 400;
            }
        }

        return  response($response, $response["code"]);
    }



    public function getAllProducts()
    {
        $response=[];

        try
        {
            $productData = Product::all();

            $response['message'] = $productData;
            $response['code'] = 200;
        }
        catch(Exception $e)
        {
            $response['message'] = 'Unable to get the product!';
            $response['code'] = 400;
        }

        return response($response, $response['code']);
    }


    public function getProductById($id)
    {
        $response=[];

        try
        {
            $getProduct = Product::where('id',$id)->get();

            $response['message'] = $getProduct;
            $response['code'] = 200;
        }
        catch(Exception $e)
        {
            $response['message'] = 'Unable to get the product!';
            $response['code'] = 400;
        }

        return response($response, $response['code']);
    }


     /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroyProduct($id)
    {
        $response=[];

        try
        {
            $deleteProduct = Product::where('id',$id)->delete();

            $response['message'] = $id;
            $response['code'] = 200;
        }
        catch(Exception $e)
        {
            $response['message'] = "Unable to delete!";
            $response['code'] = 400;
        }

        return response($response, $response['code']);
    }


/**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */

    public function updateProduct(Request $request, $id)
    {
        $response=[];

        $validateProduct = Validator::make($request->all(), [
            'product_name' => 'required',
            'price' => 'required',
            'description' => 'required',
            'product_image' => 'required',
        ]);

        if($validateProduct->fails()){
            $response["Errors"] = $validateProduct->errors();
            $response["code"] = 400;
        }
        else
        {

            DB::beginTransaction();

            try
            {
                $productData = $validateProduct->validated();
                $product = Product::where('id',$id)->update($productData);
            
                DB::commit();

                $response["Message"] = $productData;
                $response["code"] = 201;
            }
            catch(Exception $e)
            {
                $response["Message"] = "Failed to update! . $e";
                $response["code"] = 400;
            }
        }

        return response($response, $response["code"]);
    }



    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    
   

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        //
    }

   
}
