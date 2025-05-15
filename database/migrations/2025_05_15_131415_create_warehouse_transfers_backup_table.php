<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateWarehouseTransfersBackupTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('warehouse_transfers_backup', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('source_warehouse_id');
            $table->unsignedBigInteger('destination_warehouse_id');
            $table->string('reference_number')->nullable();
            $table->text('note')->nullable();
            $table->unsignedBigInteger('workspace_id');
            $table->unsignedBigInteger('created_by');
            $table->timestamps();
        });

        Schema::create('warehouse_transfer_items_backup', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('transfer_id');
            $table->unsignedBigInteger('inventory_item_id');
            $table->integer('quantity');
            $table->unsignedBigInteger('workspace_id');
            $table->timestamps();
        });

        // Copy all data from original tables to backup tables
        DB::statement('INSERT INTO warehouse_transfers_backup SELECT * FROM warehouse_transfers');
        DB::statement('INSERT INTO warehouse_transfer_items_backup SELECT * FROM warehouse_transfer_items');
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('warehouse_transfer_items_backup');
        Schema::dropIfExists('warehouse_transfers_backup');
    }
}
