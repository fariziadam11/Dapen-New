<?php

namespace App\View\Composers;

use App\Services\MenuService;
use Illuminate\View\View;

class SidebarComposer
{
    /**
     * Bind data to the view.
     */
    public function compose(View $view): void
    {
        $user = auth()->user();

        // Use static menu for now (can switch to database-driven later)
        $menuSections = MenuService::getStaticMenu();

        // Filter sections based on user role
        $filteredSections = [];

        foreach ($menuSections as $section) {
            // Skip admin-only sections for non-admins
            if (isset($section['admin_only']) && $section['admin_only']) {
                if (!$user || !$user->isSuperAdmin()) {
                    continue;
                }
            }

            $filteredSections[] = $section;
        }

        // Get pending access count for badge
        $pendingAccessCount = 0;
        if ($user) {
            $pendingAccessCount = \App\Models\FileAccessRequest::pending()->count();
        }

        $view->with([
            'menuSections' => $filteredSections,
            'pendingAccessCount' => $pendingAccessCount,
        ]);
    }
}
