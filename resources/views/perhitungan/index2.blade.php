@extends('layout.main')

@section('kriteria')
    <div class="content-wrapper">
        <div class="container-fluid">
            <h2>Vektor S</h2>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>
                            Nama
                        </th>
                        <th>
                            Nilai
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($vektorS as $item)
                        <tr>
                            <td>{{ $loop->iteration }} </td>
                            <td>
                                {{ $item->nama }}
                            </td>
                            <td>
                                {{ $item->score }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
