<?php include('rutas/aside.php'); ?>

<div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title"> ELIMINAR REGISTRO LIBRO DISPONIBLES </h3>
        </div>
         <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Primer Forma de Eliminar</h4>
                        <p>Un solo registro</p>
                        <form class="forms-sample">
                        <div class="form-group">
                            <label for="primerDelete"></label>
                            <input type="text" class="form-control" id="primerDelete" placeholder="3">
                        </div>
                        <button type="submit" class="btn btn-primary mr-2">Buscar y Eliminar</button>
                        </form>
                    </div>
                    <div class="card-body">
                        <h4 class="card-title">Segunda Forma de Eliminar</h4>
                        <p>Multiples Registros</p>
                        <form class="forms-sample">
                        <div class="form-group">
                            <label for="segundoDelete"></label>
                            <input type="text" class="form-control" id="segundoDelete" placeholder="23-1-3-5">
                        </div>
                        <button type="submit" class="btn btn-primary mr-2">Buscar y ELiminar</button>
                        </form>
                    </div>
                    </div>
                </div>
              <div class="col-md-6  align-items-stretch">
                <div class="row">
                  <div class="col-md-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title">Titulo Libro</h4>
                        <p class="card-description"> Fecha Publicacion </p>
                        <p class="card-description"> ISBN Libro </p>
                        <p class="card-description"> Autor </p>
                        <p class="card-description"> Genero </p>
                        <p class="card-description"> Editorial </p>
                        <p class="card-description"> Clasificacion </p>
                        <button type="submit" class="btn  btn-danger">Eliminar</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

        </div>    
    </div>


<?php include('rutas/footer.php'); ?>