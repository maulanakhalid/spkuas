@extends('layout.main')
@section('kriteria')
    <div class="content-wrapper">
        <div class="container">
            <h1>Tambah Alternatif</h1>

            <form action="{{ route('admin.kriteria.store') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="kode">Nama</label>
                    <input type="text" name="kode" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="nama_kriteria">Nama Kriteria</label>
                    <input type="text" name="nama_kriteria" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="bobot">Bobot</label>
                    <input type="number" name="bobot" class="form-control" step="0.01" required>
                </div>
                <div class="form-group">
                    <label for="">Nama Kriteria</label>
                    <input type="text" name="nama_kriteria" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </form>
        </div>
    </div>
@endsection
