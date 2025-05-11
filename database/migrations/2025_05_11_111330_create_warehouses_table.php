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
        Schema::create('warehouses', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('code')->nullable(); // უნიკალური კოდი საწყობისთვის (არასავალდებულო)
            $table->text('address')->nullable(); // საწყობის მისამართი
            $table->text('description')->nullable(); // აღწერა
            $table->string('status')->default('active'); // საწყობის სტატუსი: active, inactive
            $table->unsignedBigInteger('workspace_id'); // რომელ სამუშაო სივრცეს ეკუთვნის
            $table->unsignedBigInteger('created_by'); // ვინ შექმნა
            $table->timestamps();
            
            // Foreign keys
            $table->foreign('workspace_id')->references('id')->on('workspaces')->onDelete('cascade');
            $table->foreign('created_by')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('warehouses');
    }
};
