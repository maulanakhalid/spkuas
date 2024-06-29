@extends('layout.main')
@section('kriteria')
<div class="content-wrapper">
<div class="container-fluid">
    <h1>Edit Kriteria</h1>
    <form action="{{ route('admin.kriteria.update', $kriteria->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label for="kode">Kode:</label>
            <input type="text" name="kode" class="form-control" value="{{ $kriteria->kode }}" required>
        </div>
        <div class="form-group">
            <label for="nama_kriteria">Nama Kriteria:</label>
            <input type="text" name="nama_kriteria" class="form-control" value="{{ $kriteria->nama_kriteria }}" required>
        </div>
        <div class="form-group">
            <label for="bobot">Bobot:</label>
            <input type="number" name="bobot" class="form-control" value="{{ $kriteria->bobot }}" required>
        </div>
        <div class="form-group">
            <label for="label">Label:</label>
            <input type="text" name="label" class="form-control" value="{{ $kriteria->label }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>
</div>
@endsection