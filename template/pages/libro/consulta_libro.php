<?php include('rutas/aside.php'); ?>

    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title"> LIBROS DISPONIBLES </h3>
        </div>
        <div class="row">
          <div class="col-12 grid-margin">
            <!-- APARTADO DEL FORMULARIO -->

            <div class="row ">
              <div class="col-12 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Consulta Libros</h4>
                    <div class="table-responsive">
                      <table class="table" style="color: white;">
                        <thead>
                          <tr>
                            <th> Id Libro</th>
                            <th> Titulo Libro </th>
                            <th> ISBN </th>
                            <th> Pagina </th>
                            <th> Autor </th>
                            <th> Genero </th>
                            <th> Editorial </th>
                            <th> Clasificación </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                                1 <!-- AQUI EL ID DEL LIBRO QUE VIENE DE LA B (AUTOINCREMENT) -->
                            </td>
                            <td>
                              <span class="pl-2">Luis Castillo</span> <!-- AQUI IMPRIMES EL TITULO -->
                            </td>
                            <td> 02312-12-3-4-1 </td>    <!-- AQUI IMPRIMES EL ISBN -->
                            <td> 200 </td>  <!-- AQUI IMPRIMES LA CANTIDAD DE PAGINAS -->
                            <td> Benito Camelas </td> <!-- AQUI IMPRIMES EL AUTOR -->
                            <td> Terror </td> <!-- AQUI IMPRIMES EL GENERO -->
                            <td> MMC </td> <!-- AQUI IMPRIMES EL EDITORIAL -->
                            <td>
                              <!-- <div class="badge badge-outline-success">Approved</div> IGNORA ESTA LINEA --> 
                              Mayores <!-- Aqui imprims la clasificacion -->
                            </td>

                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div> 


          
            <!-- APARTADO DEL FORMULARIO -->
          </div>
        </div>    
    </div>

<?php include('rutas/footer.php'); ?>