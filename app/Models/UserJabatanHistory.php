<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserJabatanHistory extends Model
{
    use SoftDeletes;

    protected $table = 'user_jabatan_history';

    protected $fillable = [
        'id_user',
        'nik',
        'id_jabatan',
        'id_divisi',
        'id_department',
        'valid_from',
        'valid_till',
        'is_active',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = [
        'valid_from' => 'date',
        'valid_till' => 'date',
        'is_active' => 'boolean',
    ];

    /**
     * Get the user
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    /**
     * Get the jabatan
     */
    public function jabatan()
    {
        return $this->belongsTo(MasterJabatan::class, 'id_jabatan');
    }

    /**
     * Get the division
     */
    public function divisi()
    {
        return $this->belongsTo(MasterDivisi::class, 'id_divisi');
    }

    /**
     * Get the department
     */
    public function department()
    {
        return $this->belongsTo(MasterDepartment::class, 'id_department');
    }

    /**
     * Scope for active records
     */
    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    /**
     * Scope for current positions (valid now)
     */
    public function scopeCurrent($query)
    {
        return $query->where('valid_from', '<=', now())
            ->where(function ($q) {
                $q->whereNull('valid_till')
                    ->orWhere('valid_till', '>=', now());
            });
    }
}
