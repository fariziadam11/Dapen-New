<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseFunction extends Model
{
    use SoftDeletes;

    protected $table = 'base_functions';

    protected $fillable = [
        'function_name',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get menu functions using this function
     */
    public function menuFunctions()
    {
        return $this->hasMany(BaseMenuFunction::class, 'id_function');
    }

    /**
     * Get privileges using this function
     */
    public function privileges()
    {
        return $this->hasMany(BasePrivilege::class, 'id_function');
    }
}
