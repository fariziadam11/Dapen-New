<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\BaseMenu;
use App\Models\BaseModule;
use Illuminate\Http\Request;

class MenuController extends Controller
{
    public function index(Request $request)
    {
        $query = BaseMenu::with(['parent', 'module'])
            ->orderBy('order_number');

        if ($request->filled('search')) {
            $query->where('menu_name', 'like', '%' . $request->search . '%');
        }

        if ($request->filled('parent_id')) {
            $query->where('parent_id', $request->parent_id);
        } else {
            $query->whereNull('parent_id');
        }

        $menus = $query->paginate(20);
        $parentMenus = BaseMenu::whereNull('parent_id')->orderBy('order_number')->get();

        return view('admin.menus.index', [
            'menus' => $menus,
            'parentMenus' => $parentMenus,
        ]);
    }

    public function create()
    {
        $parentMenus = BaseMenu::whereNull('parent_id')->orderBy('order_number')->get();
        $modules = BaseModule::orderBy('module_name')->get();

        return view('admin.menus.create', [
            'parentMenus' => $parentMenus,
            'modules' => $modules,
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'menu_name' => 'required|string|max:100',
            'menu_code' => 'nullable|string|max:50',
            'parent_id' => 'nullable|exists:base_menus,id',
            'id_module' => 'nullable|exists:base_modules,id',
            'url' => 'nullable|string|max:255',
            'route_name' => 'nullable|string|max:100',
            'icon' => 'nullable|string|max:50',
            'section_name' => 'nullable|string|max:50',
            'order_number' => 'nullable|integer',
            'is_active' => 'boolean',
        ]);

        $validated['is_active'] = $request->boolean('is_active', true);
        $validated['order_number'] = $validated['order_number'] ?? BaseMenu::max('order_number') + 1;

        BaseMenu::create($validated);

        return redirect()->route('admin.menus.index')
            ->with('success', 'Menu berhasil ditambahkan');
    }

    public function edit(BaseMenu $menu)
    {
        $parentMenus = BaseMenu::whereNull('parent_id')
            ->where('id', '!=', $menu->id)
            ->orderBy('order_number')
            ->get();
        $modules = BaseModule::orderBy('module_name')->get();

        return view('admin.menus.edit', [
            'menu' => $menu,
            'parentMenus' => $parentMenus,
            'modules' => $modules,
        ]);
    }

    public function update(Request $request, BaseMenu $menu)
    {
        $validated = $request->validate([
            'menu_name' => 'required|string|max:100',
            'menu_code' => 'nullable|string|max:50',
            'parent_id' => 'nullable|exists:base_menus,id',
            'id_module' => 'nullable|exists:base_modules,id',
            'url' => 'nullable|string|max:255',
            'route_name' => 'nullable|string|max:100',
            'icon' => 'nullable|string|max:50',
            'section_name' => 'nullable|string|max:50',
            'order_number' => 'nullable|integer',
            'is_active' => 'boolean',
        ]);

        $validated['is_active'] = $request->boolean('is_active', true);

        $menu->update($validated);

        return redirect()->route('admin.menus.index')
            ->with('success', 'Menu berhasil diperbarui');
    }

    public function destroy(BaseMenu $menu)
    {
        // Check for children
        if ($menu->children()->count() > 0) {
            return back()->with('error', 'Tidak dapat menghapus menu yang memiliki sub-menu');
        }

        $menu->delete();

        return redirect()->route('admin.menus.index')
            ->with('success', 'Menu berhasil dihapus');
    }

    public function reorder(Request $request)
    {
        $orders = $request->input('orders', []);

        foreach ($orders as $id => $order) {
            BaseMenu::where('id', $id)->update(['order_number' => $order]);
        }

        return response()->json(['success' => true]);
    }
}
