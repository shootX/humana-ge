<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class WarehouseItem extends Model
{
    protected $fillable = [
        'warehouse_id',
        'inventory_item_id',
        'quantity',
        'note',
        'workspace_id',
        'created_by'
    ];

    /**
     * Get the warehouse that owns the item.
     */
    public function warehouse(): BelongsTo
    {
        return $this->belongsTo(Warehouse::class);
    }

    /**
     * Get the inventory item that this record is for.
     */
    public function inventoryItem(): BelongsTo
    {
        return $this->belongsTo(InventoryItem::class);
    }

    /**
     * Get the workspace that owns this record.
     */
    public function workspace(): BelongsTo
    {
        return $this->belongsTo(Workspace::class);
    }

    /**
     * Get the user that created this record.
     */
    public function creator(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
