<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InventoryItem extends Model
{
    protected $fillable = [
        'name',
        'description',
        'category_id',
        'supplier_id',
        'warehouse_id',
        'barcode',
        'quantity',
        'unit',
        'unit_price',
        'status',
        'workspace_id',
        'created_by'
    ];

    public function category()
    {
        return $this->belongsTo(InventoryCategory::class, 'category_id');
    }

    public function supplier()
    {
        return $this->belongsTo(Supplier::class, 'supplier_id');
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    public function warehouse()
    {
        return $this->belongsTo(Warehouse::class, 'warehouse_id');
    }

    public function warehouseItems()
    {
        return $this->hasMany(WarehouseItem::class);
    }
}
