<?php

namespace App\Observers;

use App\Models\Admin;

class AdminObserver
{
    public function created(Admin $admin)
    {
        $admin->role_id = 3;
        $admin->save();
    }
}
