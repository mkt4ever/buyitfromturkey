<?php

namespace App\Providers;

use App\Models\Admin;
use App\Models\SiteText;
use App\Observers\AdminObserver;
use App\Observers\CacheObserver;
use App\Observers\SiteTextObserver;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;
use TCG\Voyager\Models\Translation;
use Illuminate\Support\Str;

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
        SiteText::observe(SiteTextObserver::class);
        Translation::observe(CacheObserver::class);

        $modelClasses = $this->getEloquentModelClasses();
        // Attach observers to the models based on naming conventions
        foreach ($modelClasses as $modelClass) {
                $modelClass::observe(CacheObserver::class);
        }
    }

    protected function getEloquentModelClasses()
    {
        // Implement a logic to get a list of your Eloquent model classes
        // For example, you can scan a directory for model files.
        // You may need to customize this based on your application's structure.
        // Here's a simplified example:

        $modelDirectory = app_path('Models'); // Adjust the path as needed
        $modelClasses = [];

        foreach (scandir($modelDirectory) as $file) {
            if (Str::endsWith($file, '.php')) {
                $modelClasses[] = 'App\\Models\\' . pathinfo($file, PATHINFO_FILENAME);
            }
        }

        return $modelClasses;
    }
}
