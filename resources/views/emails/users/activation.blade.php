@component('mail::message')
# Account activation

You are receiving this email because your details has been used by HomeVerge to create a new account for you.

To use the system please use provided password below and email address you have been using for registration.

Password: <strong>{{ $password }}</strong>

@component('mail::button', ['url' => route("accounts.activate", $user)])
Activate
@endcomponent

If you did not request a account creation, no further action is required.

Thanks,<br>
{{ config('app.name') }}
@endcomponent
