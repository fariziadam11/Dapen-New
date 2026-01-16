<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BaseModule extends Model
{
    protected $table = 'base_modules';

    public $timestamps = false;

    protected $fillable = [
        'name',
        'description',
    ];

    /**
     * Get menus for this module
     */
    public function menus()
    {
        return $this->hasMany(BaseMenu::class, 'id_module');
    }

    /**
     * Get divisions for this module
     */
    public function divisions()
    {
        return $this->hasMany(MasterDivisi::class, 'id_module');
    }

    /**
     * Get document folders for this module
     */
    public function documentFolders()
    {
        return $this->hasMany(DocumentFolder::class, 'id_module');
    }
}
