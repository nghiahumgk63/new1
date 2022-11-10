<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class userCustomerController extends Controller
{
    public function loginCustomer(){
        return view('authCustomer.login');
    }
}
