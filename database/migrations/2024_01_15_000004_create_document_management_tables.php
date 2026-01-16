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
        // Document Folders
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

        // Document Versions
        Schema::create('document_versions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('document_type', 100)->comment('Table name of document');
            $table->unsignedInteger('document_id');
            $table->integer('version_number');
            $table->string('file', 255)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->bigInteger('file_size')->nullable();
            $table->unsignedBigInteger('uploaded_by');
            $table->timestamp('upload_date')->useCurrent();
            $table->text('change_notes')->nullable();
            $table->boolean('is_current')->default(false);
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('uploaded_by')->references('id')->on('users')->onDelete('cascade');

            $table->index(['document_type', 'document_id'], 'idx_document');
            $table->index(['document_type', 'document_id', 'is_current'], 'idx_document_current');
            $table->index('version_number', 'idx_version');
        });

        // Document Workflow
        Schema::create('document_workflow', function (Blueprint $table) {
            $table->increments('id');
            $table->string('document_type', 100)->comment('Table name of document');
            $table->unsignedInteger('document_id');
            $table->enum('workflow_status', ['draft', 'pending_review', 'approved', 'rejected', 'revision'])->default('draft');
            $table->unsignedBigInteger('maker_id');
            $table->unsignedBigInteger('checker_id')->nullable();
            $table->unsignedBigInteger('approver_id')->nullable();
            $table->timestamp('submitted_at')->nullable();
            $table->timestamp('reviewed_at')->nullable();
            $table->timestamp('approved_at')->nullable();
            $table->text('rejection_reason')->nullable();
            $table->text('revision_notes')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('maker_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('checker_id')->references('id')->on('users')->onDelete('set null');
            $table->foreign('approver_id')->references('id')->on('users')->onDelete('set null');

            $table->index(['document_type', 'document_id'], 'idx_document');
            $table->index(['workflow_status', 'checker_id'], 'idx_workflow_status');
            $table->index('maker_id', 'idx_maker');
        });

        // Document Workflow History
        Schema::create('document_workflow_history', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_workflow');
            $table->enum('action', ['created', 'submitted', 'reviewed', 'approved', 'rejected', 'revised']);
            $table->unsignedBigInteger('action_by');
            $table->timestamp('action_at')->useCurrent();
            $table->text('notes')->nullable();

            $table->foreign('id_workflow')->references('id')->on('document_workflow')->onDelete('cascade');
            $table->foreign('action_by')->references('id')->on('users')->onDelete('cascade');

            $table->index(['id_workflow', 'action_at'], 'idx_workflow_action');
            $table->index('action_by', 'idx_action_by');
        });

        // Folder Permissions
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

        // File Access Requests (NEW - for file access request feature)
        Schema::create('file_access_requests', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('id_user');
            $table->string('document_type', 100)->comment('Table name of document');
            $table->unsignedInteger('document_id');
            $table->unsignedInteger('id_divisi');
            $table->enum('status', ['pending', 'approved', 'rejected'])->default('pending');
            $table->text('request_reason')->nullable();
            $table->text('response_reason')->nullable();
            $table->unsignedBigInteger('responded_by')->nullable();
            $table->timestamp('responded_at')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('cascade');
            $table->foreign('responded_by')->references('id')->on('users')->onDelete('set null');

            $table->index(['id_user', 'status'], 'idx_user_status');
            $table->index(['id_divisi', 'status'], 'idx_divisi_status');
        });

        // Role Division Access
        Schema::create('role_division_access', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_role');
            $table->unsignedInteger('id_divisi');
            $table->unsignedInteger('id_module');
            $table->enum('access_level', ['read', 'write', 'full'])->default('read');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_role')->references('id')->on('base_roles')->onDelete('cascade');
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('cascade');
            $table->foreign('id_module')->references('id')->on('base_modules')->onDelete('cascade');

            $table->unique(['id_role', 'id_divisi', 'id_module'], 'unique_role_division_module');
        });

        // Audit Logs
        Schema::create('audit_logs', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('action', 50);
            $table->string('table_name', 100);
            $table->unsignedInteger('record_id')->nullable();
            $table->json('old_values')->nullable();
            $table->json('new_values')->nullable();
            $table->string('ip_address', 45)->nullable();
            $table->text('user_agent')->nullable();
            $table->timestamp('created_at')->useCurrent();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('set null');

            $table->index(['user_id', 'action'], 'idx_user_action');
            $table->index(['table_name', 'record_id'], 'idx_table_record');
            $table->index('created_at', 'idx_created_at');
        });

        // Maintenance Queries
        Schema::create('maintenance_queries', function (Blueprint $table) {
            $table->increments('id');
            $table->text('query')->nullable();
            $table->string('status', 25)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('maintenance_queries');
        Schema::dropIfExists('audit_logs');
        Schema::dropIfExists('role_division_access');
        Schema::dropIfExists('file_access_requests');
        Schema::dropIfExists('folder_permissions');
        Schema::dropIfExists('document_workflow_history');
        Schema::dropIfExists('document_workflow');
        Schema::dropIfExists('document_versions');
        Schema::dropIfExists('document_folders');
    }
};
