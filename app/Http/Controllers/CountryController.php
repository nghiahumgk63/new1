<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Country;
class CountryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $list = Country::orderBy('id','ASC')->get();
       return view('admincp.country.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $list = Country::all();
        return view('admincp.country.form', compact('list'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $data = $request->validate(
            [
                'title'=>'required|unique:countries|max:255',
                'slug'=>'required|unique:countries|max:255',
                'description'=>'required',
                'status'=>'required',


            ],[
                'title.unique'=>'Tên quốc gia này đã có xin điền tên khác',
                'slug.unique'=>'Tên slug này đã có xin điền slug khác',
                'title.required'=>'bạn chưa nhập tên quốc gia nè',
                'slug.required'=>'bạn chưa nhập slug cho quốc gia nè',
                'description.required'=>'bạn chưa nhập mô tả nè',
            ]
        );
        $country = new Country();
        $country->title = $data['title'];
        $country->slug = $data['title'];
        $country->description = $data['description'];
        $country->status = $data['status'];
        $country->save();
        return redirect()->back();
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
        $country = Country::find($id);
        $list = Country::all();
        return view('admincp.country.form', compact('list','country'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $country = Country::find($id);
        $country->title = $data['title'];
        $country->slug = $data['title'];
        $country->description = $data['description'];
        $country->status = $data['status'];
        $country->save();
        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Country::find($id)->delete();
        return redirect()->back();
    }
}
