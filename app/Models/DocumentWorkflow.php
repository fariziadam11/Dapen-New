<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DocumentWorkflow extends Model
{
    use SoftDeletes;

    protected $table = 'document_workflow';

    protected $fillable = [
        'document_type',
        'document_id',
        'workflow_status',
        'maker_id',
        'checker_id',
        'approver_id',
        'submitted_at',
        'reviewed_at',
        'approved_at',
        'rejection_reason',
        'revision_notes',
    ];

    protected $casts = [
        'submitted_at' => 'datetime',
        'reviewed_at' => 'datetime',
        'approved_at' => 'datetime',
    ];

    const STATUS_DRAFT = 'draft';
    const STATUS_PENDING_REVIEW = 'pending_review';
    const STATUS_APPROVED = 'approved';
    const STATUS_REJECTED = 'rejected';
    const STATUS_REVISION = 'revision';

    /**
     * Get the document (polymorphic)
     */
    public function document()
    {
        return $this->morphTo('document', 'document_type', 'document_id');
    }

    /**
     * Get the maker
     */
    public function maker()
    {
        return $this->belongsTo(User::class, 'maker_id');
    }

    /**
     * Get the checker
     */
    public function checker()
    {
        return $this->belongsTo(User::class, 'checker_id');
    }

    /**
     * Get the approver
     */
    public function approver()
    {
        return $this->belongsTo(User::class, 'approver_id');
    }

    /**
     * Get workflow history
     */
    public function history()
    {
        return $this->hasMany(DocumentWorkflowHistory::class, 'id_workflow')->orderBy('action_at', 'desc');
    }

    /**
     * Submit for review
     */
    public function submit($userId)
    {
        $this->update([
            'workflow_status' => self::STATUS_PENDING_REVIEW,
            'submitted_at' => now(),
        ]);

        $this->addHistory('submitted', $userId);
    }

    /**
     * Approve workflow
     */
    public function approve($userId, $notes = null)
    {
        $this->update([
            'workflow_status' => self::STATUS_APPROVED,
            'approver_id' => $userId,
            'approved_at' => now(),
        ]);

        $this->addHistory('approved', $userId, $notes);
    }

    /**
     * Reject workflow
     */
    public function reject($userId, $reason)
    {
        $this->update([
            'workflow_status' => self::STATUS_REJECTED,
            'rejection_reason' => $reason,
            'reviewed_at' => now(),
        ]);

        $this->addHistory('rejected', $userId, $reason);
    }

    /**
     * Request revision
     */
    public function requestRevision($userId, $notes)
    {
        $this->update([
            'workflow_status' => self::STATUS_REVISION,
            'revision_notes' => $notes,
            'reviewed_at' => now(),
        ]);

        $this->addHistory('revised', $userId, $notes);
    }

    /**
     * Add history record
     */
    protected function addHistory($action, $userId, $notes = null)
    {
        DocumentWorkflowHistory::create([
            'id_workflow' => $this->id,
            'action' => $action,
            'action_by' => $userId,
            'action_at' => now(),
            'notes' => $notes,
        ]);
    }

    /**
     * Scope by status
     */
    public function scopeByStatus($query, $status)
    {
        return $query->where('workflow_status', $status);
    }

    /**
     * Scope pending for user (as checker)
     */
    public function scopePendingForChecker($query, $userId)
    {
        return $query->where('workflow_status', self::STATUS_PENDING_REVIEW)
            ->where('checker_id', $userId);
    }
}
