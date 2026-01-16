<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DocumentWorkflowHistory extends Model
{
    protected $table = 'document_workflow_history';

    public $timestamps = false;

    protected $fillable = [
        'id_workflow',
        'action',
        'action_by',
        'action_at',
        'notes',
    ];

    protected $casts = [
        'action_at' => 'datetime',
    ];

    /**
     * Get the workflow
     */
    public function workflow()
    {
        return $this->belongsTo(DocumentWorkflow::class, 'id_workflow');
    }

    /**
     * Get the actor
     */
    public function actor()
    {
        return $this->belongsTo(User::class, 'action_by');
    }

    /**
     * Get action label
     */
    public function getActionLabelAttribute()
    {
        $labels = [
            'created' => 'Dibuat',
            'submitted' => 'Diajukan',
            'reviewed' => 'Direview',
            'approved' => 'Disetujui',
            'rejected' => 'Ditolak',
            'revised' => 'Revisi',
        ];
        return $labels[$this->action] ?? $this->action;
    }
}
