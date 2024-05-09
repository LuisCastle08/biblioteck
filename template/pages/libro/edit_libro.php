<?php include('rutas/aside.php'); ?>

  <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title"> EDITAR LIBROS DISPONIBLES </h3>
        </div>
         <div class="row">
            <div class="col-12 grid-margin">
              <div class="row ">
                <!-- CON ESTE MINI FORMULARIO BUSCARAS PRIMERO EL LIBRO -->
                  <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title">Buscar Libro</h4>
                        <p class="card-description"> Debes ingresar el #Id del Libro y el ISBN para poder buscar el libro y editarlo </p>
                        <form class="form-inline" method="post" action="">
                        <label class="sr-only" for="inlineFormInputGroupUsername2">IdLibro</label>
                          <div class="input-group mb-2 mr-sm-2">
                            <div class="input-group-prepend">
                              <div class="input-group-text">*</div>
                            </div>
                            <input type="text" name="" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Id del Libro">
                          </div>
<!--                           <label class="sr-only" for="inlineFormInputName2">ISBN</label>
                          <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="978-2020-05-15-1-1"> -->
                          <button type="submit" class="btn btn-primary mb-2">BUSCAR LIBRO</button>
                        </form>
                      </div>
                    </div>
                  </div>
                  <!-- SE RELLENARA ESTE FORMULARIO CON LOS DATOS DEL LIBRO A EDITAR -->
                  <div class="col-12 grid-margin stretch-card">
                    <div class="card">
                      <div class="card-body">
                        <h4 class="card-title">Editar el registro anterior</h4>
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
                  </div>

              </div> 
            </div>
        </div>    
    </div>

<?php include('rutas/footer.php'); ?>