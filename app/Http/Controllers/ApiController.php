<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use Validator;

class ApiController extends Controller
{

    //(in path)if we want to fatch data by id it will show that id data and if you don't give id it show all the data 
    //get method used to retrive data 
    function getData($id = null)
    {

        return $id ? Employee::find($id) : Employee::all();

    }


    //if we want to save data in database by api 
    //post method used to send data in the db

    function add(Request $req)
    {
        $employee = new Employee;
        $employee->name = $req->name;
        $employee->email = $req->email;
        $employee->phone = $req->phone;
        $result = $employee->save();
        if ($result) {
            return ["result" => "data has been saved"];
        } else {
            return ["result" => "failed"];

        }

    }

    //if we want to update existing data in the database
    //put method used to update data in database
    function update(Request $req)
    {
        $employee = Employee::find($req->id);
        $employee->name = $req->name;
        $employee->email = $req->email;
        $result = $employee->save();
        if ($result) {
            return ["result" => "data has been saved"];
        } else {
            return ["result" => "failed"];

        }
    }

    //for delete the record by id 
    //delete method used to delete data from database
    function delete($id)
    {
        $employee = Employee::find($id);
        $result = $employee->delete();
        if ($result) {

            return ["result" => "record has been deleted " . $id];
        } else {
            return ["result" => "record not deleted " . $id];

        }

    }

    // for delete multiple record at once
    // function delete($id)
    // {   $id = '1,2,3';
    //     $ids = explode(",", $id);
    //     $result = Employee::whereIn('id', $ids)->delete();

    //     if($result){

    //         return ["result"=>"record has been deleted ".$id];
    //     }else{
    //         return ["result"=>"record not deleted ".$id];

    //     }

    // }

    //for search data in the database 
    //search method is used for searching the data in db
    function search($name)
    {

        $result = Employee::where("name", "like", "%" . $name . "%")->get();
        if (count($result) > 0) {

            return $result;

        } else {
            return "no result found";

        }
    }

    //for data validations like( email required,phone required) 
    //post method is used for validation 
    function validateData(Request $req)
    {
        $rules = array(
           "name"=>"required",
           "email"=>"required",
           "phone"=>"required | max:10",
          
           
        );
        $datavalidator = Validator::make($req->all(),$rules);
        if ($datavalidator->fails()) {

            return response()->json($datavalidator->errors(),401);

        } else {
            $employee= new Employee;
            $employee -> name = $req->name;
            $employee -> email = $req->email;
            $employee -> phone = $req->phone;
            $result=$employee -> save();
            if ($result) {

                return ["result" => "record has been add "];
            } else {
                return ["result" => "record not add "];
    
            }

        }
    }




}