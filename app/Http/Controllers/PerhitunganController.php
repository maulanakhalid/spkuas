<?php

namespace App\Http\Controllers;

use App\Models\VektorS;
use App\Models\VektorV;
use App\Models\Kriteria;
use App\Models\SumBobot;
use App\Models\Normalisasi;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PerhitunganController extends Controller
{
    //
    public function perhitungan(){
        $kriteria = Kriteria::all();
        $sumbobot = SumBobot::all();
        $normalisasi = Normalisasi::all();

        return view('perhitungan.index', compact('sumbobot','normalisasi','kriteria'));

    }

    public function vektor(){
        $vektorS = VektorS::all();
        return view('perhitungan.index2', compact('vektorS'));
    }

    public function perangkingan(){
        $vektorV = VektorV::orderBy('normalized_score', 'desc')->get();

        // Mengirim data ke view
        return view('perhitungan.perangkingan', compact('vektorV'));


    }
}
