@extends('layout.main')
@section('kriteria')
    <div class="content-wrapper">
        <div class="container">
            <div class="row mb-2">
                <div class="col-sm-6">

                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Bobot</li>
                    </ol>
                </div>

            </div>



            <h1>Daftar Alternatif</h1>
            <a href="{{ route('admin.alternatif.create') }}" class="btn btn-primary">Tambah Alternatif</a>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Harga</th>
                        <th>Desain</th>
                        <th>Kualitas</th>
                        <th>Kenyaman</th>
                        <th>Ukuran</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($alternatifs as $alternatif)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $alternatif->nama }}</td>
                            <td>{{ $alternatif->harga }}</td>
                            <td>{{ $alternatif->desain }}</td>
                            <td>{{ $alternatif->kualitas }}</td>
                            <td>{{ $alternatif->kenyaman }}</td>
                            <td>{{ $alternatif->ukuran }}</td>
                            <td>
                                <a href="{{ route('admin.alternatif.edit', $alternatif->id) }}"
                                    class="btn btn-warning">Edit</a>
                                <form action="{{ route('admin.alternatif.destroy', $alternatif->id) }}" method="POST"
                                    style="display:inline;">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Hapus</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
