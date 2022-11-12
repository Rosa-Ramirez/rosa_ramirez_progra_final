<%-- 
    Document   : home
    Created on : 9/11/2022, 18:34:29
    Author     : ramir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
          <head>
                    <title>Registrar Ingreso</title>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
                    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
                    <!-- JavaScript Bundle with Popper -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
                    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
                    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                    <script src="js/script.js"></script>
                    <link href="style.css" rel="stylesheet" type="text/css"/>
          </head>
          <% 
              response.setHeader("Cache-Control", "nocache, no-store, must-revalidate");
              if(session.getAttribute("user")==null){
                  response.sendRedirect("index.jsp");
              }
          %>
          <body><header class="header">
                              <nav class="navbar navbar-expand-lg navbar-light">
                                        <div class="container-fluid">
                                                  <a class="navbar-brand" href="#">
                                                            REGISTRAR COMPUTADORA
                                                  </a>
                                                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                                            <span class="navbar-toggler-icon"></span>
                                                  </button>
                                                  <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                                            <ul class="navbar-nav m-auto">
                                                                      <li class="nav-item active">
                                                                                <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                                                                      </li>

                                                                      <li class="nav-item dropdown">
                                                                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                          Registrar
                                                                                </a>
                                                                                <ul class="dropdown-menu dropdown-menu-dark" id="menu-navbar">
                                                                                          <li><hr class="dropdown-divider"></li>
                                                                                </ul>
                                                                      </li>
                                                                      <li class="nav-item dropdown">
                                                                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                                                          Reportes
                                                                                </a>
                                                                                <ul class="dropdown-menu dropdown-menu-dark" id="menu-navbar2">
                                                                                </ul>
                                                                      </li>
                                                            </ul>
                                                            <form class="d-flex" role="search">
                                                                      <a class="btn btn-outline-dark text-white" id="btnSearch" href="Logout">Cerrar Sesion - ${UsuarioLogueado}</a>
                                                            </form>
                                                  </div>
                                        </div>
                              </nav>
                    </header>
                    <div class="d-flex justify-content-around mx-4 mb-5 mt-4">
                              <div class="shadow-lg p-3 bg-white rounded">
                                        <form method="POST" id="form" name="form" action="EntryController">
                                                  <div class="mt-3 mb-5 mx-4">
                                                            <h2 class="display-4 text-center my-4">REGISTRO COMPUTADORA</h2>
                                                            <div class="row my-3">
                                                                      <div class="col">
                                                                                <label for="dpiDriver">MODELO</label>
                                                                                <input type="text" class="form-control" name="dpiDriver" id="dpiDriver">
                                                                      </div>
                                                                      <div class="col">
                                                                                <label for="dpiTransporter">TAMAÑO PANTALLA</label>
                                                                                <input type="text" class="form-control"  name="dpiTransporter" id="dpiTransporter">
                                                                      </div>
                                                                      <div class="col">
                                                                                <label for="plate">RAM</label>
                                                                                <input type="text" class="form-control"  name="plate" id="plate">
                                                                      </div>
                                                            </div>
                                                            <div class="row my-3">
                                                                      <div class="col">
                                                                                <label for="depot">MARCA</label>
                                                                                <select class="form-select" id="depot" name="depot">
                                                                                          <option selected>Marca...</option>
                                                                                          <option value="1">MARCA 1</option>
                                                                                          <option value="2">MARCA 2</option>
                                                                                          <input type="hidden" name="control" value="SAVE">
                                                                                </select>
                                                                      </div>
                                                            </div>

                                                            <div class="row my-3">
                                                                      <div class="col">
                                                                                <label for="origin">SISTEMA OPERATIVO</label>
                                                                                <input type="text" class="form-control"  name="origin" id="origin">
                                                                      </div>
                                                                      
                                                                      <div class="col">
                                                                                <label for="plate">ALMACENAMIENTO</label>
                                                                                <input type="text" class="form-control"  name="plate" id="plate">
                                                                      </div>
                                                            </div>
                                                            <input type="button" onclick="sendForm()" class="btn btn-outline-dark" value="Registrar">
                                                            <button type="reset" class="btn btn-outline-danger">Vaciar</button>
                                                  </div>
                                        </form>
                              </div>
                    </div>
          </body>
</html>