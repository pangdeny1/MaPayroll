<?php

namespace App\Listeners;

use App\Events\UserRegistered;
use App\Mail\UserActivation;
use Illuminate\Support\Facades\Mail;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendActivationEmail
{
    /**
     * Handle the event.
     *
     * @param  UserRegistered  $event
     * @return void
     */
    public function handle(UserRegistered $event)
    {
        try {
            Mail::to($event->user)->send(new UserActivation($event->user, $event->password));
        } catch(\Exception $e) {
            
        }
    }
}
