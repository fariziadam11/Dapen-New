<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckMenuAccess
{
    /**
     * Handle an incoming request.
     */
    public function handle(Request $request, Closure $next, ?string $menuRoute = null)
    {
        $user = $request->user();

        if (!$user) {
            return redirect()->route('login');
        }

        // Super admin bypasses all checks
        if ($user->isSuperAdmin()) {
            return $next($request);
        }

        // If no specific menu route provided, allow
        if (!$menuRoute) {
            return $next($request);
        }

        // Check if user has access to this menu
        if (!$user->hasMenuAccess($menuRoute)) {
            abort(403, 'Anda tidak memiliki akses ke halaman ini.');
        }

        return $next($request);
    }
}
