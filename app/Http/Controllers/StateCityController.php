<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use DB;

class StateCityController extends Controller
{
	/* State List with Property Count */
	public function getStateList()
	{
		$obj =  DB::table('states')->select(DB::raw('distinct states.name'),"states.id",DB::raw("(select count(re_properties.id) from re_properties,cities where cities.id = re_properties.city_id and states.id = cities.state_id) as count"));
		//$obj = $obj->leftJoin('cities', 'states.id', '=', 'cities.state_id');
		$obj = $obj->orderBy('states.name', 'asc');
		//$stateListArr = $obj->toSql();
		//echo "<pre>";print_r($stateListArr);exit;
		$stateListArr = $obj->get()->toArray();
		return response()->json($stateListArr);
	}

	/* City List with Property Count */
	public function getCityList(Request $request)
	{
		$obj =  DB::table('cities')->select(DB::raw('distinct cities.name'),"cities.id",DB::raw("(select count(re_properties.id) from re_properties where cities.id = re_properties.city_id) as count"));
		
		if(!empty($request->get('stateID')))
			$obj = $obj->where('cities.state_id', $request->get('stateID'));

		$obj = $obj->orderBy('cities.name', 'asc');
		//$cityListArr = $obj->toSql(); 
		//echo "<pre>";print_r($cityListArr);exit;
		$cityListArr = $obj->get()->toArray();
		return response()->json($cityListArr);
	}
}