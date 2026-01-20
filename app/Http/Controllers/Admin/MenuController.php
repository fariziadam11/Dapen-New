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
            ->orderBy('sequence');

        if ($request->filled('search')) {
            $query->where('menu_name', 'like', '%' . $request->search . '%');
        }

        if ($request->filled('parent_id')) {
            $query->where('parent_id', $request->parent_id);
        } else {
            $query->whereNull('parent_id');
        }

        $menus = $query->paginate(20);
        $parentMenus = BaseMenu::whereNull('parent_id')->orderBy('sequence')->get();

        return view('admin.menus.index', [
            'menus' => $menus,
            'parentMenus' => $parentMenus,
        ]);
    }

    public function create()
    {
        $parentMenus = BaseMenu::whereNull('parent_id')->orderBy('sequence')->get();
        $modules = BaseModule::orderBy('name')->get();

        return view('admin.menus.create', [
            'parentMenus' => $parentMenus,
            'modules' => $modules,
        ]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'menu_name' => 'required|string|max:100',
            'code_name' => 'nullable|string|max:50',
            'parent_id' => 'nullable|exists:base_menus,id',
            'id_module' => 'nullable|exists:base_modules,id',
            'path' => 'nullable|string|max:255',
            'icon' => 'nullable|string|max:50',
            'sequence' => 'nullable|integer',
        ]);

        $validated['sequence'] = $validated['sequence'] ?? BaseMenu::max('sequence') + 1;

        BaseMenu::create($validated);

        return redirect()->route('admin.menus.index')
            ->with('success', 'Menu berhasil ditambahkan');
    }

    public function edit(BaseMenu $menu)
    {
        $parentMenus = BaseMenu::whereNull('parent_id')
            ->where('id', '!=', $menu->id)
            ->orderBy('sequence')
            ->get();
        $modules = BaseModule::orderBy('name')->get();

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
            'code_name' => 'nullable|string|max:50',
            'parent_id' => 'nullable|exists:base_menus,id',
            'id_module' => 'nullable|exists:base_modules,id',
            'path' => 'nullable|string|max:255',
            'icon' => 'nullable|string|max:50',
            'sequence' => 'nullable|integer',
        ]);

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
            BaseMenu::where('id', $id)->update(['sequence' => $order]);
        }

        return response()->json(['success' => true]);
    }
}
