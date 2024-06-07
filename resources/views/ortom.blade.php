@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
           <h1 class="text-center">Organisasi Otonom</h1> <hr>
            <br>
            <div class="card-body"> 
                
                  <div class="table-responsive">
                    <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                      <thead>
                      <tr>
                        <th>No</th>
                        <th>Nama ortom</th>
                        <th>Nama Ketua</th>
                      </tr>
                      </thead>
                      <tbody>
                          @foreach($ortoms as $index => $ortom)
                          <tr>
                              <td>{{ $ortoms->firstItem() + $index }}</td>
                              <td>{{ $ortom->nama_ortom }}</td>
                              <td>{{ $ortom->nama_ketua }}</td>

                          </tr> 
                          @endforeach
                      
                      </tbody>
                    </table>
                  </div>
                  <div class="d-flex justify-content-left mt-2">
                    {{ $ortoms->links() }}
                  </div>
            </div>
        </div>
    </div>
</div>
   
@endsection

@section('scripts')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {
        $('#clientside').DataTable({
            "paging": false,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false,
            "responsive": true,
            "lengthMenu": [10, 20, 50, 100],
            "pageLength": 10
        });
    });
</script>
@endsection
