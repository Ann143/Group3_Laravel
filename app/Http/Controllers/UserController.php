<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
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
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    //To register the user
    public function store(Request $request)
    {
        $response = [];

        $validation = Validator::make($request->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
            'username' => 'required|unique:users',
            'password' => 'required',
        ]);

        if($validation->fails()){
            $response["Errors"] = $validation->errors();
            $response["code"] = 400;
        }
        else{   

            DB::beginTransaction();

            try{
                $data = $validation->validated();
                $data["profile_image"] = "default.png";
                $data["usertype"] = "customer";
                $data["password"] = Hash::make($data["password"] );
                $user = User::create($data);

                DB::commit();

                $response["Message"] = "Successfully registered user!";
                $response["code"] = 201;
            }
            catch(\Exception $e){
                $response["Message"] = "Registration failed! . $e";
                $response["code"] = 400;
            }
        }

        return response($response, $response["code"]);

    }

     /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    //This is for update user
    public function updateUser(Request $request,  $id)
    {
        $response = [];

        $validateUser = Validator::make($request->all(), [
            'firstname' => 'required',
            'lastname' => 'required',
            'username' => 'required',
        ]);

        if($validateUser->fails()){
            $response["Errors"] = $validation->errors();
            $response["code"] = 400;
        }
        else
        {
            DB::beginTransaction();

            try
            {
                $data = $validateUser->validated();
                $data["userType"] = "customer";
                $user = User::where('id',$id)->update($data);

                DB::commit();

                    $response["Message"] = $data;
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
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $data = User::where('username', $request->username)->first();

        if(!$data || !Hash::check($request->password,$data->password)){
            return response(
                ["Message"=>"Login failed"], 400
            );
        }
        $token = $data->createToken('online_shopping')->plainTextToken;

        $response=[
            'message'=> "Login Successfully!",
            'logincredential' => $data,
            'token' => $token

        ];

        return response($response, 200);
    }

    public function logout(Request $request)
    {
        $response = [];

        try
        {
            $request->user()->currentAccessToken()->delete();

            $response['message']='Logout successfully!';
            $response['code']=200;
        }
        catch(Exception $e)
        {
            $response['message']='Logout failed!';
            $response['code'] = 400;
        }

        return response($response, $response['code']);

    }

//To get the users
    public function getUser()
    {
        $response=[];

        try
        {
            $data = User::all();

            $response['message'] = $data;
            $response['code'] = 200;
        }
        catch(Exception $e)
        {
            $response['message'] = 'Unable to get the user!';
            $response['code'] = 400;
        }

        return response($response, $response['code']);
    }

//To get the specific user by id
 public function getUserById($id)
    {
       $response=[];

       try
       {
        //$getUser = User::findOrFail($id);
        $getUser = User::where('id', $id)->get();

        $response['message'] = $getUser;
        $response['code'] = 200;

       }
       catch(Exception $e)
       {
        $response['message'] = 'Unable to get the user!';
        $response['code'] = 400;
       }

       return response($response, $response['code']);
    }


  /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $response=[];

        try
        {
            $deleteUser = User::where('id',$id)->delete();

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
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

   
    

  
}
