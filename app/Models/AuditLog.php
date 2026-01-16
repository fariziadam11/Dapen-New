<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AuditLog extends Model
{
    protected $table = 'audit_logs';

    public $timestamps = false;

    protected $fillable = [
        'user_id',
        'action',
        'table_name',
        'record_id',
        'old_values',
        'new_values',
        'ip_address',
        'user_agent',
        'created_at',
    ];

    protected $casts = [
        'old_values' => 'array',
        'new_values' => 'array',
        'created_at' => 'datetime',
    ];

    /**
     * Get the user
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    /**
     * Log an action
     */
    public static function log($action, $tableName, $recordId = null, $oldValues = null, $newValues = null)
    {
        return self::create([
            'user_id' => auth()->id(),
            'action' => $action,
            'table_name' => $tableName,
            'record_id' => $recordId,
            'old_values' => $oldValues,
            'new_values' => $newValues,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
            'created_at' => now(),
        ]);
    }

    /**
     * Log create action
     */
    public static function logCreate($tableName, $recordId, $newValues)
    {
        return self::log('create', $tableName, $recordId, null, $newValues);
    }

    /**
     * Log update action
     */
    public static function logUpdate($tableName, $recordId, $oldValues, $newValues)
    {
        return self::log('update', $tableName, $recordId, $oldValues, $newValues);
    }

    /**
     * Log delete action
     */
    public static function logDelete($tableName, $recordId, $oldValues)
    {
        return self::log('delete', $tableName, $recordId, $oldValues, null);
    }

    /**
     * Log view action
     */
    public static function logView($tableName, $recordId)
    {
        return self::log('view', $tableName, $recordId);
    }

    /**
     * Log download action
     */
    public static function logDownload($tableName, $recordId)
    {
        return self::log('download', $tableName, $recordId);
    }

    /**
     * Scope by user
     */
    public function scopeByUser($query, $userId)
    {
        return $query->where('user_id', $userId);
    }

    /**
     * Scope by table
     */
    public function scopeByTable($query, $tableName)
    {
        return $query->where('table_name', $tableName);
    }

    /**
     * Scope by action
     */
    public function scopeByAction($query, $action)
    {
        return $query->where('action', $action);
    }

    /**
     * Scope by date range
     */
    public function scopeDateRange($query, $from, $to)
    {
        return $query->whereBetween('created_at', [$from, $to]);
    }
}
