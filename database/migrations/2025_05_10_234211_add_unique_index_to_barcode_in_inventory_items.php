<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('inventory_items', function (Blueprint $table) {
            // First remove any null values from barcode field since unique index doesn't work well with multiple nulls
            // We'll add a unique index that is scoped to workspace_id to make barcode unique within each workspace
            $table->unique(['barcode', 'workspace_id'], 'inventory_items_barcode_workspace_unique');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('inventory_items', function (Blueprint $table) {
            $table->dropUnique('inventory_items_barcode_workspace_unique');
        });
    }
};
