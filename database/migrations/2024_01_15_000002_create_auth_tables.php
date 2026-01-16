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
        // Modify users table to add additional columns
        Schema::table('users', function (Blueprint $table) {
            $table->string('username', 125)->nullable()->after('id');
            $table->string('nik', 20)->nullable()->unique()->after('username');
            $table->string('divisi', 100)->nullable()->after('nik');
            $table->date('valid_from')->nullable()->after('divisi');
            $table->date('valid_till')->nullable()->after('valid_from');
            $table->smallInteger('is_active')->unsigned()->nullable()->default(1)->after('remember_token');
            $table->softDeletes();
            $table->string('activation_key', 255)->nullable();

            $table->index('nik', 'idx_users_nik');
            $table->index(['is_active', 'valid_till'], 'idx_users_active_valid');
        });

        // Base Roles
        Schema::create('base_roles', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_group')->default(0);
            $table->unsignedInteger('id_divisi')->nullable();
            $table->enum('access_scope', ['global', 'division', 'department'])->default('division');
            $table->string('roles_name', 50)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_group');
            $table->index('id_divisi');
        });

        // Base User Roles
        Schema::create('base_user_roles', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('id_user')->nullable();
            $table->unsignedInteger('id_roles')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_user');
            $table->index('id_roles');
        });

        // Base Privileges
        Schema::create('base_privileges', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_roles')->nullable();
            $table->unsignedInteger('id_menu')->nullable();
            $table->unsignedInteger('id_function')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_roles');
            $table->index('id_menu');
            $table->index('id_function');
            $table->index(['id_roles', 'id_menu', 'id_function'], 'idx_privileges_role_menu_func');
        });

        // Users Profile
        Schema::create('users_profile', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_user');
            $table->string('nik', 20)->nullable();
            $table->string('divisi', 100)->nullable();
            $table->string('department', 100)->nullable();
            $table->enum('employee_status', ['Permanent', 'Contract', 'Internship'])->nullable();
            $table->date('join_date')->nullable();
            $table->string('npwp', 30)->nullable();
            $table->string('ktp', 20)->nullable();
            $table->string('emergency_contact_name', 100)->nullable();
            $table->string('emergency_contact_phone', 25)->nullable();
            $table->enum('blood_type', ['A', 'B', 'AB', 'O'])->nullable();
            $table->enum('religion', ['Islam', 'Kristen', 'Katolik', 'Hindu', 'Buddha', 'Konghucu'])->nullable();
            $table->enum('marital_status', ['Single', 'Married', 'Divorced', 'Widowed'])->nullable();
            $table->string('education_level', 50)->nullable();
            $table->string('signature_file', 255)->nullable();
            $table->string('first_name', 50)->nullable();
            $table->string('last_name', 50)->nullable();
            $table->string('photo', 150)->nullable();
            $table->smallInteger('gender')->unsigned()->nullable();
            $table->date('birth_date')->nullable();
            $table->string('id_vilages', 20)->nullable();
            $table->text('address')->nullable();
            $table->string('country', 25)->nullable();
            $table->string('city', 25)->nullable();
            $table->string('poscode', 12)->nullable();
            $table->string('phone', 25)->nullable();
            $table->string('twitter', 125)->nullable();
            $table->string('facebook', 125)->nullable();
            $table->string('instagram', 125)->nullable();
            $table->string('youtube', 125)->nullable();
            $table->string('website', 125)->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_user', 'idx_profile_user');
            $table->index('nik', 'idx_profile_nik');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users_profile');
        Schema::dropIfExists('base_privileges');
        Schema::dropIfExists('base_user_roles');
        Schema::dropIfExists('base_roles');

        Schema::table('users', function (Blueprint $table) {
            $table->dropIndex('idx_users_nik');
            $table->dropIndex('idx_users_active_valid');
            $table->dropColumn(['username', 'nik', 'divisi', 'valid_from', 'valid_till', 'is_active', 'deleted_at', 'activation_key']);
        });
    }
};
