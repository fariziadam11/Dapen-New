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
        // Drop folder_permissions first (has foreign key to document_folders)
        Schema::dropIfExists('folder_permissions');

        // Drop document_folders
        Schema::dropIfExists('document_folders');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Recreate document_folders
        Schema::create('document_folders', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('parent_id')->nullable();
            $table->string('folder_name', 100);
            $table->string('folder_path', 500);
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('id_module')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('parent_id')->references('id')->on('document_folders')->onDelete('cascade');
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
            $table->foreign('id_module')->references('id')->on('base_modules')->onDelete('set null');

            $table->index(['parent_id', 'folder_name'], 'idx_parent_folder');
            $table->index('folder_path', 'idx_folder_path');
        });

        // Recreate folder_permissions
        Schema::create('folder_permissions', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_folder');
            $table->unsignedInteger('id_role')->nullable();
            $table->unsignedBigInteger('id_user')->nullable();
            $table->enum('permission_type', ['read', 'write', 'delete', 'full'])->default('read');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_folder')->references('id')->on('document_folders')->onDelete('cascade');
            $table->foreign('id_role')->references('id')->on('base_roles')->onDelete('cascade');
            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');

            $table->index(['id_folder', 'id_role'], 'idx_folder_role');
            $table->index(['id_folder', 'id_user'], 'idx_folder_user');
        });
    }
};
