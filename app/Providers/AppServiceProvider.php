<?php

namespace App\Providers;

use Illuminate\Http\Request;

use Illuminate\Support\ServiceProvider;
use App\Models\Comment;
use App\Models\Episode;
use App\Models\Movie;
use App\Models\Category;
use App\Models\Genre;
use App\Models\Country;
use App\Models\access;
use Carbon\Carbon;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if($this->app->environment('production')) {
            \URL::forceScheme('https');
        }
        view()->composer('*',function($view ){

        $category_count = Category::all()->count();
        $episode_count = Episode::all()->count();
        $genre_count  = Genre::all()->count();
        $movie_count =Movie::all()->count();
        $country_count=Country::all()->count();
        $lastweek = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(8)->toDateString();
        $lastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(13)->toDateString();
        $thlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(18)->toDateString();
        $forlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(23)->toDateString();
        $fivelastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(28)->toDateString();
        $weedday = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday()->startOfweek()->toDateString();
        $visitors_of_fivelastweektoo = Access::whereBetween('date_access',[$fivelastweektoo,$forlastweektoo])->get();
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
       //5 tuần trước
        $visitors_of_fivelastweektoo = Access::whereBetween('date_access',[$fivelastweektoo,$forlastweektoo])->get();
        $visitors_fivelastweektoo_count = $visitors_of_fivelastweektoo->count();
        //4 tuan truoc
        $visitors_of_forlastweektoo = Access::whereBetween('date_access',[$forlastweektoo,$thlastweektoo])->get();
        $visitors_forlastweektoo_count = $visitors_of_forlastweektoo->count();
        //3 tuan truoc
        $visitors_of_thlastweektoo = Access::whereBetween('date_access',[$thlastweektoo,$lastweektoo])->get();
        $visitors_thlastweektoo_count = $visitors_of_thlastweektoo->count();
        $early_this_month = Carbon::now('Asia/Ho_Chi_Minh')->startOfMonth()->toDateString();
        $oneyears = Carbon::now('Asia/Ho_Chi_Minh')->subdays(365)->toDateString();
        $now = Carbon::now('Asia/Ho_Chi_Minh')->toDateString();
        $lastweek = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(8)->toDateString();
        $lastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(13)->toDateString();
        $thlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(18)->toDateString();
        $forlastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(23)->toDateString();
        $fivelastweektoo = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday(28)->toDateString();
        $weedday = Carbon::now('Asia/Ho_Chi_Minh')->subWeekday()->startOfweek()->toDateString();
         $list_view_port = Movie::orderBy('port_view','DESC')->take(10)->get();
//tuan truoc nua
        $visitors_of_lastweektoo = Access::whereBetween('date_access',[$lastweektoo,$lastweek])->get();
        $visitors_lastweektoo_count = $visitors_of_lastweektoo->count();

//tuan nay
        $visitors_of_weedday = Access::whereBetween('date_access',[$weedday,$now])->get();
        $visitors_weedday_count = $visitors_of_weedday->count();

//tuan truoc
        $visitors_of_lastweek = Access::whereBetween('date_access',[$lastweek, $weedday])->get();
        $visitors_lastweek_count = $visitors_of_lastweek->count();

        $request = app(\Illuminate\Http\Request::class);
        $user_ip_address = $request->ip();
        $visitors_current = access::where('ip_address',$user_ip_address)->get();
        $visitors_count = $visitors_current->count();
$early_last_month = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->startOfMonth()->toDateString();
        $end_of_last_month = Carbon::now('Asia/Ho_Chi_Minh')->subMonth()->endOfMonth()->toDateString();

        $visitors_of_lastmonth = access::whereBetween('date_access',[ $early_last_month,$end_of_last_month])->get();
        $visitors_last_month_count = $visitors_of_lastmonth->count();

        $visitors_of_thismonth = access::whereBetween('date_access',[$early_this_month,$now])->get();
        $visitors_thismonth_count = $visitors_of_thismonth->count();

        //tong nam

        $visitors_of_year = access::whereBetween('date_access',[$oneyears,$now])->get();
        $visitors_year_count = $visitors_of_year->count();
        //tat ca
        $visitors = access::all();
        $visitors_total = $visitors->count();
        

        $view->with('category_count', $category_count)->with('episode_count', $episode_count)->with('genre_count', $genre_count)->with('movie_count', $movie_count)->with('country_count', $country_count)->with('visitors_fivelastweektoo_count',$visitors_fivelastweektoo_count)->with('visitors_forlastweektoo_count',$visitors_forlastweektoo_count)->with('visitors_thlastweektoo_count',$visitors_thlastweektoo_count)->with('visitors_lastweektoo_count',$visitors_lastweektoo_count)->with('visitors_weedday_count',$visitors_weedday_count)->with('visitors_lastweek_count',$visitors_lastweek_count)->with('visitors_count',$visitors_count)->with('user_ip_address',$user_ip_address)->with('visitors_last_month_count',$visitors_last_month_count)->with('visitors_thismonth_count',$visitors_thismonth_count)->with('visitors_year_count',$visitors_year_count)->with('visitors_total',$visitors_total)->with('early_this_month',$early_this_month)->with('list_view_port',$list_view_port);

        });
    }
}
