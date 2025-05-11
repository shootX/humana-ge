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
        Schema::create('warehouse_items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('warehouse_id'); // რომელ საწყობს ეკუთვნის
            $table->unsignedBigInteger('inventory_item_id'); // რომელი ნივთია
            $table->integer('quantity')->default(0); // რაოდენობა
            $table->text('note')->nullable(); // შენიშვნა
            $table->unsignedBigInteger('workspace_id'); // რომელ სამუშაო სივრცეს ეკუთვნის
            $table->unsignedBigInteger('created_by'); // ვინ შექმნა
            $table->timestamps();
            
            // Foreign keys
            $table->foreign('warehouse_id')->references('id')->on('warehouses')->onDelete('cascade');
            $table->foreign('inventory_item_id')->references('id')->on('inventory_items')->onDelete('cascade');
            $table->foreign('workspace_id')->references('id')->on('workspaces')->onDelete('cascade');
            $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');
            
            // უნიკალური ინდექსი - კონკრეტული ნივთი კონკრეტულ საწყობში არ უნდა გამეორდეს
            $table->unique(['warehouse_id', 'inventory_item_id', 'workspace_id'], 'warehouse_item_unique');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('warehouse_items');
    }
};
