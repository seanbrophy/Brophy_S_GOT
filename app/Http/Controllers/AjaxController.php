<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;

class AjaxController extends Controller
{
    /**
     * Responds to requests to GET /browse
     */
    public function __construct(){}

    public function getList() {
    	 //get request to ajax/list

    	$list = DB::select('select character_id,character_name from tbl_character') ;
		return Response::json($list);
    }

    public function getInfo($id) {
    	//get request to ajax/info/{id}

    	$char = DB::table('tbl_character')
            ->where('character_id', $id)
            ->first();
		return Response::json($char);
    }

}
