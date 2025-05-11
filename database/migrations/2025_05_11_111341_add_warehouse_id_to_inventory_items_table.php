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
            // თუ ვიყენებთ WarehouseItem ცხრილს, შეიძლება ეს სვეტი საჭირო აღარ იყოს,
            // მაგრამ დავტოვებთ როგორც "default warehouse" მნიშვნელობას
            $table->unsignedBigInteger('warehouse_id')->nullable()->after('supplier_id');
            $table->foreign('warehouse_id')->references('id')->on('warehouses')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('inventory_items', function (Blueprint $table) {
            $table->dropForeign(['warehouse_id']);
            $table->dropColumn('warehouse_id');
        });
    }
};
