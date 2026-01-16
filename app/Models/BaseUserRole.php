<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseUserRole extends Model
{
    use SoftDeletes;

    protected $table = 'base_user_roles';

    protected $fillable = [
        'id_user',
        'id_roles',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get the user
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    /**
     * Get the role
     */
    public function role()
    {
        return $this->belongsTo(BaseRole::class, 'id_roles');
    }
}
