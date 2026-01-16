<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Base Modules
        Schema::create('base_modules', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 100)->nullable();
            $table->string('description', 191)->nullable();
        });

        // Base Functions (CRUD operations)
        Schema::create('base_functions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('function_name', 20)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();
        });

        // Base Groups
        Schema::create('base_groups', function (Blueprint $table) {
            $table->increments('id');
            $table->string('groups_name', 20)->nullable();
            $table->string('app_url', 191)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();
        });

        // Base Menus
        Schema::create('base_menus', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_group')->default(0);
            $table->unsignedInteger('id_module')->nullable()->default(0);
            $table->unsignedInteger('parent_id')->nullable();
            $table->unsignedInteger('parent_sub_id')->nullable();
            $table->unsignedInteger('parent_sub_parent_id')->nullable();
            $table->string('code_name', 50)->nullable();
            $table->string('menu_name', 50)->nullable();
            $table->string('menu_label', 50)->nullable();
            $table->integer('sequence')->nullable();
            $table->string('path', 191)->nullable();
            $table->string('icon', 191)->nullable();
            $table->tinyInteger('icon_type')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('code_name', 'idx_menus_code_name');
            $table->index(['id_group', 'id_module'], 'idx_menus_group_module');
        });

        // Base Menu Functions
        Schema::create('base_menu_functions', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_menu')->nullable();
            $table->unsignedInteger('id_function')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_menu');
            $table->index('id_function');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('base_menu_functions');
        Schema::dropIfExists('base_menus');
        Schema::dropIfExists('base_groups');
        Schema::dropIfExists('base_functions');
        Schema::dropIfExists('base_modules');
    }
};
