<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\EpisodeController;
use App\Http\Controllers\CommentsControll;
use App\Http\Controllers\UserController;
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


Route::get('logout', function ()
{
    auth()->logout();
    Session()->flush();

    return Redirect::to('/login');
})->name('logout');



Route::get('/', [IndexController::class, 'home'])->name('homepage');
Route::get('/danh-muc/{slug}', [IndexController::class, 'category'])->name('category');
Route::get('the-loai/{slug}', [IndexController::class, 'genre'])->name('genre');
Route::get('/quoc-gia/{slug}', [IndexController::class, 'country'])->name('country');
Route::get('/phim/{slug}', [IndexController::class, 'movie'])->name('movie');
Route::get('/xem-phim/{slug}/{tap}', [IndexController::class, 'watch'])->name('watch');
Route::get('/so-tap', [IndexController::class, 'episode'])->name('so-tap');
Route::get('/nam/{year}', [IndexController::class, 'year']);
Route::get('/tag/{tag}', [IndexController::class, 'tag']);
Route::get('/hienrin', [IndexController::class, 'hienrin']);
Route::get('/sinh-nhat-em', [IndexController::class, 'sinhnhatem']);
Route::get('/sinh-nhat-hien', [IndexController::class, 'sinhnhathien']);





Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

 Route::middleware(['auth'])->group(function () {

Route::resource('category', CategoryController::class);
Route::resource('genre', GenreController::class);
Route::resource('country', CountryController::class);
Route::resource('episode', EpisodeController::class);
Route::resource('comments', CommentsControll::class);
Route::resource('accesswebsite', AccesslistController::class);
Route::resource('user', UserController::class);

Route::get('select-movie',[EpisodeController::class, 'select_movie'])->name('select-movie');
Route::resource('movie', MovieController::class);





Route::get('/update-year-phim', [MovieController::class, 'update_year']);
Route::get('/update-topview-phim', [MovieController::class, 'update_topview']);

Route::get('/update-season-phim', [MovieController::class, 'update_season']);
Route::post('resorting', [CategoryController::class,'resorting'])->name('resorting');
Route::post('resorting-ep', [EpisodeController::class,'resorting_ep'])->name('resorting-ep');

Route::POST('/allow-comment', [CommentsControll::class, 'allow_comment'])->name('allow-comment');
Route::POST('/rep-comment', [CommentsControll::class, 'rep_comment'])->name('rep-comment');


});

Route::post('/filter-topview-phim', [MovieController::class, 'filter_topview']);
Route::post('/filter-topview-default', [MovieController::class, 'filter_default']);
 Route::get('/load-comment', [EpisodeController::class, 'load_comment'])->name('load-comment');
 Route::get('/send-comment', [EpisodeController::class, 'send_comment'])->name('send-comment');
 Route::get('/add-episode/{id}', [EpisodeController::class, 'add_episode'])->name('add-episode');
 Route::get('/tim-kiem', [IndexController::class, 'timkiem'])->name('tim-kiem');
 Route::get('/filter-wb', [IndexController::class, 'filter'])->name('filter-wb');
 Route::post('/add-rating', [IndexController::class, 'add_rating'])->name('add-rating');
