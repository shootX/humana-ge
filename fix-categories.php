<?php

require __DIR__.'/vendor/autoload.php';

$app = require_once __DIR__.'/bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Http\Kernel::class);
$response = $kernel->handle(
    $request = Illuminate\Http\Request::capture()
);

// ვიპოვოთ აქტიური workspace
$workspace = App\Models\Workspace::first();
if (!$workspace) {
    echo "No workspace found!\n";
    exit;
}

// შევქმნათ საწყისი კატეგორიები
$tools = App\Models\InventoryCategory::firstOrCreate(
    ['name' => 'Tools', 'workspace_id' => $workspace->id],
    ['description' => 'Equipment and tools', 'created_by' => $workspace->created_by]
);

$supplies = App\Models\InventoryCategory::firstOrCreate(
    ['name' => 'Supplies', 'workspace_id' => $workspace->id],
    ['description' => 'Consumable materials', 'created_by' => $workspace->created_by]
);

echo "Created categories: " . $tools->name . ", " . $supplies->name . "\n"; 