<%-- 
    Document   : home
    Created on : 12/09/2020, 13:10:22
    Author     : Victo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Sistema de Amortização</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" crossorigin="anonymous">
</head>  
<body>
    <%@include file="WEB-INF/components/header.jspf" %>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="img\img1.jpg" style="height:80vh; opacity: 0.6;">
                <div class="carousel-caption d-none d-md-block">
                    <h1 class="display-4 font-weight-bold">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class=" font-weight-bold">Amortização Constante</p>
                </div>
            </div>
            <div class="carousel-item" >
              <img class="d-block w-100" src="img/img2.jpg" style="height:80vh; opacity: 0.6;">
              <div class="carousel-caption d-none d-md-block">
                    <h1 class="display-4 font-weight-bold">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class="font-weight-bold">Amortização Americana</p>
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="img/img3.jpg" style="height:80vh; opacity: 0.6;">
              <div class="carousel-caption d-none d-md-block">
                    <h1 class="display-4 font-weight-bold">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class="font-weight-bold">Tabela Price</p>
              </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div>
    <header id="classes">
        <div class="container">
          <h1 class="text-center mt-5 mb-5">Escolha um dos tipos de amortização abaixo</h1>
        </div>
    </header>
    <div class="container mb-5">
        <div class="row">
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Amortização Constante</h5>
                  <p class="card-text">Forma de amortização de um empréstimo por prestações que incluem os juros.</p>
                  <a href="amortizacao-constante.jsp" class="btn btn-primary">Calcular</a>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Amortização Americana</h5>
                  <p class="card-text">Favorece investimentos cujo retorno financeiro é superior aos juros pagos.</p>
                  <a href="amortizacao-americana.jsp" class="btn btn-primary">Calcular</a>
                </div>
              </div>
            </div>
            <div class="col-sm-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Tabela Price</h5>
                  <p class="card-text">Método usado em amortização de empréstimo com prestações iguais.</p>
                  <a href="tabela-price.jsp" class="btn btn-primary">Calcular</a>
                </div>
              </div>
            </div>
        </div>
    </div>  
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
