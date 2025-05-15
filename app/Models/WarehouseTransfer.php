<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class WarehouseTransfer extends Model
{
    protected $fillable = [
        'source_warehouse_id',
        'destination_warehouse_id',
        'reference_number',
        'note',
        'workspace_id',
        'created_by'
    ];

    /**
     * Boot function to assign reference number if not provided
     */
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($transfer) {
            // Only assign if reference_number is not already set
            if (empty($transfer->reference_number)) {
                // Get latest transfer ID
                $latestTransfer = self::where('workspace_id', $transfer->workspace_id)
                    ->orderBy('id', 'desc')
                    ->first();
                
                $nextId = 1;
                if ($latestTransfer) {
                    $nextId = $latestTransfer->id + 1;
                }
                
                // Format: #TRF00001
                $transfer->reference_number = '#TRF' . sprintf("%05d", $nextId);
            }
        });
    }

    /**
     * Get the source warehouse.
     */
    public function sourceWarehouse(): BelongsTo
    {
        return $this->belongsTo(Warehouse::class, 'source_warehouse_id');
    }

    /**
     * Get the destination warehouse.
     */
    public function destinationWarehouse(): BelongsTo
    {
        return $this->belongsTo(Warehouse::class, 'destination_warehouse_id');
    }

    /**
     * Get the workspace that owns this transfer.
     */
    public function workspace(): BelongsTo
    {
        return $this->belongsTo(Workspace::class);
    }

    /**
     * Get the user that created this transfer.
     */
    public function creator(): BelongsTo
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    /**
     * Get the items included in this transfer.
     */
    public function items(): HasMany
    {
        return $this->hasMany(WarehouseTransferItem::class, 'transfer_id');
    }
} 