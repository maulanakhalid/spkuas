@extends('layout.main')

@section('kriteria')
    <div class="content-wrapper">
        <div class="container">
            <h1>Tambah Alternatif</h1>

            <form action="{{ route('admin.alternatif.store') }}" method="POST">
                @csrf
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" name="nama" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="harga">Harga</label>
                    <input type="number" name="harga" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="desain">Desain</label>
                    <input type="number" name="desain" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="kualitas">Kualitas</label>
                    <input type="number" name="kualitas" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="kenyaman">Kenyamanan</label>
                    <input type="number" name="kenyaman" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="ukuran">Ukuran</label>
                    <input type="number" name="ukuran" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-primary">Simpan</button>
            </form>
        </div>
    </div>
@endsection
