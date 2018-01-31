<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\House;

class HouseController extends Controller
{
    public function add(Request $request)
    {
        // $data = request()->toArray();
        // $data['roomCount'] = json_encode($data['roomCount']);
        // $data['direction'] = json_encode($data['direction']);
        // (new House)->fill($data)->save();

        // dd((new House)::find(1)->toArray());
        return (new House)->get();
    }

    public function read()
    {
        if ($id = request('id'))
            return (new House)->find($id);
        return (new House)->get();
    }
}
