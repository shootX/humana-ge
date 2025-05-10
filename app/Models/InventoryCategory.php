<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InventoryCategory extends Model
{
    protected $fillable = [
        'name',
        'description',
        'workspace_id',
        'created_by'
    ];

    public function items()
    {
        return $this->hasMany(InventoryItem::class, 'category_id');
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
