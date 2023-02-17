<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class DBshow extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'showDB';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'show Current DB';

    /**
     * Execute the console command.
     */
    public function handle(): void
    {
        //
    }
}
