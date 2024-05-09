
<?php include('php/rutas/aside.php'); ?>


        <div class="main-panel">
          <div class="content-wrapper">
            <div class="row">
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>CANTIDAD DE TABLAS</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">14</h2>
                          
                        </div>
                        <h6 class="text-muted font-weight-normal">La ultima tabla se creo el 07/05/2024</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-codepen text-primary ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>CANTIDAD DE VISTAS</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">18</h2>
                        </div>
                        <h6 class="text-muted font-weight-normal"> La utima vista se creo el 07/05/2024</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-monitor text-success ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>CANTIDAD DE LIBROS</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">75</h2>
                          
                        </div>
                        <h6 class="text-muted font-weight-normal">El ultimo libro fue añadido el 07/05/2024</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-wallet-travel text-danger ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="row justify-content-center align-items-center">
                            <div class="col-12 text-center">
                                <h3 class="mb-3">AÑADIR LIBRO</h3>
                            </div>
                            <div class="col-12 text-center">
                               <button type="button" onclick="window.location.href='pages/libro/add_libro.php'" class="btn btn-success btn-rounded btn-fw align">NUEVO REGISTRO</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
              <div class="card">
                  <div class="card-body">
                      <div class="row justify-content-center align-items-center">
                          <div class="col-12 text-center">
                              <h3 class="mb-3">VER LIBROS</h3>
                          </div>
                          <div class="col-12 text-center">
                              <button type="button" onclick="window.location.href='pages/libro/consulta_libro.php'" class="btn btn-warning btn-rounded btn-fw align">CONSULTAR REGISTROS</button>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div class="row justify-content-center align-items-center">
                        <div class="col-12 text-center">
                            <h3 class="mb-3">EDITAR LIBRO</h3>
                        </div>
                        <div class="col-12 text-center">
                            <button type="button" onclick="window.location.href='pages/libro/edit_libro.php'" class="btn btn-info btn-rounded btn-fw align">REVISAR REGISTROS</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
          <div class="card">
              <div class="card-body">
                  <div class="row justify-content-center align-items-center">
                      <div class="col-12 text-center">
                          <h3 class="mb-3">ELIMINAR LIBRO</h3>
                      </div>
                      <div class="col-12 text-center">
                          <button type="button" onclick="window.location.href='pages/libro/delete_libro.php'" class="btn btn-danger btn-rounded btn-fw align">ELIMINAR REGISTROS</button>
                      </div>
                  </div>
              </div>
          </div>
      </div>
            </div>
            <div class="row">
              <div class="col-md-4 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">CONTROL ESTADISTICO</h4>
                    <canvas id="transaction-history" class="transaction-chart"></canvas>
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-2 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">Cantidad de Libros</h6>
                        <p class="text-muted mb-0">07 Jan 2024, 09:12AM</p>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">$75</h6>
                      </div>
                    </div>
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-2 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">Cantidad Prestados</h6>
                        <p class="text-muted mb-0">07 Jan 2024, 09:12AM</p>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">$50</h6>
                      </div>
                    </div>
                    <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-2 px-4 px-md-3 px-xl-4 rounded mt-3">
                      <div class="text-md-center text-xl-left">
                        <h6 class="mb-1">Cantidad Devueltos</h6>
                        <p class="text-muted mb-0">07 Jan 2024, 09:12AM</p>
                      </div>
                      <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                        <h6 class="font-weight-bold mb-0">$25</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-md-8 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex flex-row justify-content-between">
                      <h4 class="card-title mb-1">Operaciones con Libros</h4>
                      <p class="text-muted mb-1">Acciones</p>
                    </div>
                    <div class="row">
                      <div class="col-12">
                        <div class="preview-list">
                          <div class="preview-item border-bottom">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-primary">
                                <i class="mdi mdi-file-document"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">CONSULTAR PRESTAMOS</h6>
                                <p class="text-muted mb-0">Consulta todos los libros, prestados y devueltos</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">CONSULTAR</button>
                              </div>
                            </div>
                          </div>
                          <div class="preview-item border-bottom">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-success">
                                <i class="mdi mdi-cloud-download"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">PRESTAR UN LIBRO</h6>
                                <p class="text-muted mb-0">Aqui tendremos el formulario de prestamos</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0 ">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">PRESTAR</button>
                              </div>
                            </div>
                          </div>
                          <div class="preview-item border-bottom">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-info">
                                <i class="mdi mdi-clock"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">REGISTRAR DEVOLUCIÓN</h6>
                                <p class="text-muted mb-0">Luego de que pase su tiempo  y lo devuelvan se mostrara aqui</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">DEVOLVER</button>
                              </div>
                            </div>
                          </div>
                          <div class="preview-item border-bottom">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-danger">
                                <i class="mdi mdi-email-open"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">REGISTRAR UN AUTOR</h6>
                                <p class="text-muted mb-0">Sent release details to team</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">REGISTRAR AUTOR</button>
                              </div>
                            </div>
                          </div>
                          <div class="preview-item">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-warning">
                                <i class="mdi mdi-chart-pie"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">REGISTRAR EDITORIAL</h6>
                                <p class="text-muted mb-0">Este apartado podra registrar Editoriales</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">REGISTRAR EDITOR</button>
                              </div>
                            </div>
                          </div>
                          <div class="preview-item">
                            <div class="preview-thumbnail">
                              <div class="preview-icon bg-dark">
                                <i class="mdi mdi-account-multiple-plus"></i>
                              </div>
                            </div>
                            <div class="preview-item-content d-sm-flex flex-grow">
                              <div class="flex-grow">
                                <h6 class="preview-subject">REGISTRAR USUARIO</h6>
                                <p class="text-muted mb-0">Este apartado creara usuarios</p>
                              </div>
                              <div class="mr-auto text-sm-right pt-2 pt-sm-0">
                                <button type="button" class="btn btn-secondary btn-rounded btn-fw align">REGISTRAR USER</button>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>


<?php include('php/rutas/footer.php'); ?>
