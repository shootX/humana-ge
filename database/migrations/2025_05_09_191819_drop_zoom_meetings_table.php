<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::dropIfExists('zoom_meetings');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::create('zoom_meetings', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->integer('workspace_id')->default(0);
            $table->string('meeting_id')->nullable();
            $table->string('client_id')->default(0);
            $table->integer('project_id')->default(0);
            $table->string('member_ids')->nullable();
            $table->timestamp('start_date')->default(DB::raw('CURRENT_TIMESTAMP(0)'));
            $table->integer('duration')->default(0);
            $table->text('start_url')->nullable();
            $table->string('join_url')->nullable();
            $table->string('password')->nullable();
            $table->string('status')->default('waiting')->nullable();
            $table->integer('created_by')->default(0);
            $table->timestamps();
        });
    }
};
