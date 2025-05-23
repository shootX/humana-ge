<?php

namespace App\Models\Mail;

use App\Models\Client;
use App\Models\Project;
use App\Models\Utility;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ShareProjectToClient extends Mailable
{
    use Queueable, SerializesModels;
    public $client;
    public $project;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct(Client $client,Project $project)
    {
        $this->client = $client;
        $this->project = $project;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $setting = Utility::getAdminPaymentSettings();
        return $this->markdown('email.share')->subject('New Project Share - '.  $setting['app_name'] ? $setting['app_name'] : 'Taskly');;
    }
}
