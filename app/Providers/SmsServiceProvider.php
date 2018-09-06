<?php

namespace App\Providers;

use App\SmsNotification;
use Illuminate\Support\ServiceProvider;

class SmsServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {

    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton("sms-notification", function ($app) {
            return new SmsNotification(config('sms'));
        });
    }
}
