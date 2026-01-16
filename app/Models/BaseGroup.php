<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseGroup extends Model
{
    use SoftDeletes;

    protected $table = 'base_groups';

    protected $fillable = [
        'groups_name',
        'app_url',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get menus for this group
     */
    public function menus()
    {
        return $this->hasMany(BaseMenu::class, 'id_group');
    }

    /**
     * Get roles for this group
     */
    public function roles()
    {
        return $this->hasMany(BaseRole::class, 'id_group');
    }
}
