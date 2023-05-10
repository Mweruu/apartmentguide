<?php

use App\Http\Controllers\BackDoorLoginController;
use App\Http\Controllers\StateCityController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
### Backdoor Login
Route::get('/backdoorlogin', [BackDoorLoginController::class, 'index'])->name('backdoor.login');
Route::post('/backdoorlogin/generateLink', [BackDoorLoginController::class, 'generateLink'])->name('backdoor.generateLink');


### State/City List
Route::post('/stateList', [StateCityController::class, 'getStateList']);
Route::post('/cityList', [StateCityController::class, 'getCityList']);

