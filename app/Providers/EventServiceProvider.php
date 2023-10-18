<?php

namespace App\Providers;

use App\Models\Admin;
use App\Models\Blog;
use App\Models\Language;
use App\Models\SEO;
use App\Models\SiteText;
use App\Observers\AdminObserver;
use App\Observers\CacheObserver;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;
use TCG\Voyager\Models\Translation;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        Admin::observe(AdminObserver::class);

        Blog::observe(CacheObserver::class);

        Language::observe(CacheObserver::class);
        SEO::observe(CacheObserver::class);
        SiteText::observe(CacheObserver::class);
        Translation::observe(CacheObserver::class);
    }
}
