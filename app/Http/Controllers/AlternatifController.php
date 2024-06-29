<?php

namespace App\Http\Controllers;

use App\Models\Alternatif;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class AlternatifController extends Controller
{
     // Menampilkan daftar alternatif
     public function index()
     {
         $alternatifs = Alternatif::all();
         return view('alternatifs.index', compact('alternatifs'));
     }

     // Menampilkan form untuk menambah alternatif baru
     public function create()
     {
         return view('alternatifs.create');
     }

     // Menyimpan alternatif baru
     public function store(Request $request)
     {
         $validatedData = $request->validate([
             'nama' => 'required|string|max:255',
             'harga' => 'required|integer',
             'desain' => 'required|integer',
             'kualitas' => 'required|integer',
             'kenyaman' => 'required|integer',
             'ukuran' => 'required|integer',
         ]);
        //  var_dump($request->all());
         Alternatif::create($validatedData);

         return redirect()->route('admin.alternatif.index');
     }


     public function edit($id)
     {
         $alternatif = Alternatif::findOrFail($id);
         return view('alternatifs.edit', compact('alternatif'));
     }

     // Memperbarui alternatif
     public function update(Request $request, $id)
     {
         $validatedData = $request->validate([
             'nama' => 'sometimes|required|string|max:255',
             'harga' => 'sometimes|required|integer',
             'desain' => 'sometimes|required|integer',
             'kualitas' => 'sometimes|required|integer',
             'kenyaman' => 'sometimes|required|integer',
             'ukuran' => 'sometimes|required|integer',
         ]);

         $alternatif = Alternatif::findOrFail($id);
         $alternatif->update($validatedData);

         return redirect()->route('admin.alternatif.index');
     }

     // Menghapus alternatif
     public function destroy($id)
     {
         $alternatif = Alternatif::findOrFail($id);
         $alternatif->delete();

         return redirect()->route('admin.alternatif.index');
     }
}
