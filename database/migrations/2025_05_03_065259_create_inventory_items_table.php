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
        Schema::create('inventory_items', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->text('description')->nullable();
            $table->string('category')->nullable(); // Consider a separate categories table later if needed
            $table->integer('quantity')->default(0);
            $table->decimal('unit_price', 15, 2)->nullable(); // Adjust precision/scale as needed
            $table->string('status')->default('in_stock'); // e.g., in_stock, out_of_stock, low_stock
            $table->unsignedBigInteger('workspace_id');
            $table->unsignedBigInteger('created_by');
            $table->timestamps();

            // Define foreign key constraints if users and workspaces tables exist
            // $table->foreign('workspace_id')->references('id')->on('workspaces')->onDelete('cascade');
            // $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('inventory_items');
    }
};
