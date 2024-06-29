<?php

namespace App\Http\Controllers;

use App\Models\Kriteria;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class KriteriaController extends Controller
{
    //
    public function index()
    {
        $kriterias = Kriteria::all();
        return view('kriterias.index', compact('kriterias'));
    }

    public function create()
    {
        return view('kriterias.create');
    }

    public function store(Request $request)
    {
    
    }

    public function edit($id)
    {
        $kriteria = Kriteria::findOrFail($id);
        return view('kriterias.edit', compact('kriteria'));
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'kode' => 'sometimes|required|string|max:255',
            'nama_kriteria' => 'sometimes|required|string|max:255',
            'bobot' => 'sometimes|required|integer',
            'label' => 'sometimes|required|string|max:255',
        ]);

        $kriteria = Kriteria::findOrFail($id);
        $kriteria->update($validatedData);

        return redirect()->route('admin.kriteria');
    }

    public function destroy(Kriteria $kriteria)
    {
        $kriteria->delete();
        return redirect()->route('kriterias.index')->with('success', 'Kriteria deleted successfully.');
    }
}
