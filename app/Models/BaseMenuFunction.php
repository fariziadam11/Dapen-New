<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseMenuFunction extends Model
{
    use SoftDeletes;

    protected $table = 'base_menu_functions';

    protected $fillable = [
        'id_menu',
        'id_function',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get the menu
     */
    public function menu()
    {
        return $this->belongsTo(BaseMenu::class, 'id_menu');
    }

    /**
     * Get the function
     */
    public function function()
    {
        return $this->belongsTo(BaseFunction::class, 'id_function');
    }
}
