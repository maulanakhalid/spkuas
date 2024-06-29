<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin.kriteria') }}" class="brand-link">

        <span class="brand-text font-weight-light">SPK PEMILIHAN SEPATU</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->

        <!-- SidebarSearch Form -->


        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
             with font-awesome or any other icon font library -->
                <li class="nav-item">

                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.kriteria') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Kriteria
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.alternatif.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Alternatif
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.perhitungan') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Normalisasi
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.vektor') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Vektor S
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.perangkingan') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Perangkingan
                        </p>
                    </a>
                </li>
                {{-- <li class="nav-item">
          <a href="" class="nav-link">
            <i class="nav-icon fas fa-th"></i>
            <p>
              
            </p>
          </a>
        </li> --}}
                <li class="nav-item">
                <li class="nav-item">
                    <a href="{{ route('logout') }}" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            Logout
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    {{-- <a href="{{ route('admin.clientside') }}" class="nav-link">
            <i class="nav-icon fas fa-th"></i>
            <p>
              User (ClientSide)
            </p>
          </a> --}}
                </li>
                <li class="nav-item">
                    {{-- <a href="{{ route('admin.serverside') }}" class="nav-link">
            <i class="nav-icon fas fa-th"></i>
            <p>
              User (ServerSide)
            </p>
          </a> --}}
                </li>
                <li class="nav-item">
                    {{-- <a href="{{ route('logout') }}" class="nav-link">
            <i class="nav-icon fas fa-th"></i>
            <p>
              Logout
            </p>
          </a> --}}
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
