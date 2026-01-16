<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MaintenanceQuery extends Model
{
    use SoftDeletes;

    protected $table = 'maintenance_queries';

    protected $fillable = [
        'query',
        'status',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    const STATUS_PENDING = 'pending';
    const STATUS_EXECUTED = 'executed';
    const STATUS_FAILED = 'failed';

    /**
     * Get creator
     */
    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }
}
