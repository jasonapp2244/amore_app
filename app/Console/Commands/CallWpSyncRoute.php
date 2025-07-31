<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class CallWpSyncRoute extends Command
{
    protected $signature = 'call:wp-sync';
    protected $description = 'Run the syncUsersFromWP method directly';

    public function handle(): int
    {
        app()->call('App\Http\Controllers\WpUserSyncController@syncUsersFromWP');
        return self::SUCCESS;
    }
}
