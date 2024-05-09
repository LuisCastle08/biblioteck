<!-- ESTE INCLUDE ES PARA AÑADIR EL ASIDE -->
<?php include('rutas/aside.php'); ?>

  <!-- AQUI COMIENZA LA VENTANA DE AÑADIR -->

    <div class="content-wrapper">
        <div class="page-header">
          <h3 class="page-title"> AÑADIR NUEVO LIBRO </h3>
        </div>
        <div class="row">
          <div class="col-12 grid-margin stretch-card">
            <!-- APARTADO DEL FORMULARIO -->
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Crear un nuevo registro de un libro</h4>
                <form class="forms-sample" method="post"  action="">
                  <div class="form-group">
                    <label for="exampleInputName1">Titulo del Libro</label>
                    <input type="text" class="form-control" name="titulo" id="exampleInputName1" placeholder="El señor de los anillos">
                  </div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="exampleInputName1">Fecha de Publicacion</label>
                      <input type="text" class="form-control" name="publicacion" id="exampleInputName1" placeholder="2020-05-15">
                    </div>
                    <div class="form-group col-6">
                      <label for="exampleInputName1">ISBN del Libro</label>
                      <input type="text" class="form-control" name="isbn" id="exampleInputName1" placeholder="978-2020-05-15-1-1">
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-3">
                      <label for="exampleInputPassword4">Numero de paginas</label>
                      <input type="number" class="form-control" name="paginas" id="exampleInputPassword4" placeholder="150">
                    </div>
                    <div class="form-group col-3">
                      <label for="exampleSelectGender">Idioma</label>
                      <select class="form-control" name="idioma" id="exampleSelectGender">
                        <option>Ingles</option>
                        <option>Español</option>
                      </select>
                    </div>
                    <div class="form-group col-3">
                      <label for="exampleSelectGender">Clasificacion</label>
                      <select class="form-control" name="clasificacion" id="exampleSelectGender">
                        <option>Sin Clasificacion</option>
                        <option>Ingles</option>
                        <option>Español</option>
                      </select>
                    </div>
                    <div class="form-group col-3">
                      <label for="exampleSelectGender">Genero</label>
                      <select class="form-control" name="genero" id="exampleSelectGender">
                        <option>Terror</option>
                        <option>Ingles</option>
                        <option>Español</option>
                      </select>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label for="exampleSelectGender">Editorial</label>
                      <select class="form-control" name="editorial" id="exampleSelectGender">
                        <option>San Bernardino Valley</option>
                        <option>Ingles</option>
                        <option>Español</option>
                      </select>
                    </div>
                    <div class="form-group col-6">
                      <label for="exampleSelectGender">Autor</label>
                      <select class="form-control" name="autor" id="exampleSelectGender">
                        <option>Bernardo</option>
                        <option>Ingles</option>
                        <option>Español</option>
                      </select>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary mr-2">AÑADIR LIBRO</button>
                  <button class="btn btn-danger">CANCELAR</button>
                </form>
              </div>
            </div>
            <!-- APARTADO DEL FORMULARIO -->
          </div>
        </div>    
    </div>
  



<?php include('rutas/footer.php'); ?>