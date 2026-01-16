<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class FileAccessRequest extends Model
{
    use SoftDeletes;

    protected $table = 'file_access_requests';

    protected $fillable = [
        'id_user',
        'document_type',
        'document_id',
        'id_divisi',
        'status',
        'request_reason',
        'response_reason',
        'responded_by',
        'responded_at',
    ];

    protected $casts = [
        'responded_at' => 'datetime',
    ];

    const STATUS_PENDING = 'pending';
    const STATUS_APPROVED = 'approved';
    const STATUS_REJECTED = 'rejected';

    /**
     * Get the requester
     */
    public function requester()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    /**
     * Get the division
     */
    public function divisi()
    {
        return $this->belongsTo(MasterDivisi::class, 'id_divisi');
    }

    /**
     * Get the responder
     */
    public function responder()
    {
        return $this->belongsTo(User::class, 'responded_by');
    }

    /**
     * Get the document (polymorphic)
     */
    public function document()
    {
        return $this->morphTo('document', 'document_type', 'document_id');
    }

    /**
     * Approve request
     */
    public function approve($userId, $reason = null)
    {
        $this->update([
            'status' => self::STATUS_APPROVED,
            'responded_by' => $userId,
            'responded_at' => now(),
            'response_reason' => $reason,
        ]);

        // Create folder permission for user
        // This would depend on the document type
    }

    /**
     * Reject request
     */
    public function reject($userId, $reason)
    {
        $this->update([
            'status' => self::STATUS_REJECTED,
            'responded_by' => $userId,
            'responded_at' => now(),
            'response_reason' => $reason,
        ]);
    }

    /**
     * Scope pending
     */
    public function scopePending($query)
    {
        return $query->where('status', self::STATUS_PENDING);
    }

    /**
     * Scope by division
     */
    public function scopeByDivision($query, $divisiId)
    {
        return $query->where('id_divisi', $divisiId);
    }

    /**
     * Scope by user
     */
    public function scopeByUser($query, $userId)
    {
        return $query->where('id_user', $userId);
    }

    /**
     * Get status label
     */
    public function getStatusLabelAttribute()
    {
        $labels = [
            self::STATUS_PENDING => 'Menunggu',
            self::STATUS_APPROVED => 'Disetujui',
            self::STATUS_REJECTED => 'Ditolak',
        ];
        return $labels[$this->status] ?? $this->status;
    }

    /**
     * Get status badge class
     */
    public function getStatusBadgeClassAttribute()
    {
        $classes = [
            self::STATUS_PENDING => 'badge-warning',
            self::STATUS_APPROVED => 'badge-success',
            self::STATUS_REJECTED => 'badge-danger',
        ];
        return $classes[$this->status] ?? 'badge-secondary';
    }
}
