<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DocumentVersion extends Model
{
    use SoftDeletes;

    protected $table = 'document_versions';

    protected $fillable = [
        'document_type',
        'document_id',
        'version_number',
        'file',
        'file_name',
        'file_size',
        'uploaded_by',
        'upload_date',
        'change_notes',
        'is_current',
    ];

    protected $casts = [
        'upload_date' => 'datetime',
        'is_current' => 'boolean',
    ];

    /**
     * Get the document (polymorphic)
     */
    public function document()
    {
        return $this->morphTo('document', 'document_type', 'document_id');
    }

    /**
     * Get the uploader
     */
    public function uploader()
    {
        return $this->belongsTo(User::class, 'uploaded_by');
    }

    /**
     * Get file URL
     */
    public function getFileUrlAttribute()
    {
        if ($this->file) {
            return asset('storage/documents/' . $this->file);
        }
        return null;
    }

    /**
     * Get formatted file size
     */
    public function getFormattedFileSizeAttribute()
    {
        $bytes = $this->file_size;
        if ($bytes >= 1073741824) {
            return number_format($bytes / 1073741824, 2) . ' GB';
        } elseif ($bytes >= 1048576) {
            return number_format($bytes / 1048576, 2) . ' MB';
        } elseif ($bytes >= 1024) {
            return number_format($bytes / 1024, 2) . ' KB';
        }
        return $bytes . ' bytes';
    }

    /**
     * Scope for current versions only
     */
    public function scopeCurrent($query)
    {
        return $query->where('is_current', true);
    }

    /**
     * Scope by document
     */
    public function scopeForDocument($query, $documentType, $documentId)
    {
        return $query->where('document_type', $documentType)
            ->where('document_id', $documentId);
    }

    /**
     * Create new version for document
     */
    public static function createVersion($documentType, $documentId, $file, $fileName, $fileSize, $userId, $notes = null)
    {
        // Mark previous current as not current
        self::forDocument($documentType, $documentId)
            ->where('is_current', true)
            ->update(['is_current' => false]);

        // Get next version number
        $lastVersion = self::forDocument($documentType, $documentId)
            ->max('version_number') ?? 0;

        return self::create([
            'document_type' => $documentType,
            'document_id' => $documentId,
            'version_number' => $lastVersion + 1,
            'file' => $file,
            'file_name' => $fileName,
            'file_size' => $fileSize,
            'uploaded_by' => $userId,
            'upload_date' => now(),
            'change_notes' => $notes,
            'is_current' => true,
        ]);
    }
}
