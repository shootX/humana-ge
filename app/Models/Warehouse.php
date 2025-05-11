<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Warehouse extends Model
{
    protected $fillable = [
        'name',
        'code',
        'address',
        'description',
        'status',
        'workspace_id',
        'created_by'
    ];

    /**
     * Get the workspace that owns the warehouse.
     */
    public function workspace(): BelongsTo
    {
        return $this->belongsTo(Workspace::class);
    }

    /**
     * Get the user that created the warehouse.
     */
    public function creator(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    /**
     * Get the items in this warehouse.
     */
    public function warehouseItems(): HasMany
    {
        return $this->hasMany(WarehouseItem::class);
    }

    /**
     * Get the inventory items directly associated with this warehouse.
     */
    public function inventoryItems(): HasMany
    {
        return $this->hasMany(InventoryItem::class);
    }
}
