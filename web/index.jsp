<%-- 
    Document   : home
    Created on : 12/09/2020, 13:10:22
    Author     : Victor
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
                    <h1 class="display-4 font-weight-bold text-dark">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class=" font-weight-bold text-dark">Amortização Constante: Forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor 
                    total do empréstimo. </p>
                     
                </div>
            </div>
            <div class="carousel-item" >
              <img class="d-block w-100" src="img/img2.jpg" style="height:80vh; opacity: 0.6; filter:grayscale(100%);">
              <div class="carousel-caption d-none d-md-block">
                    <h1 class="display-4 font-weight-bold text-dark">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class="font-weight-bold text-dark">Amortização Americana: É um tipo de quitação de empréstimo para aqueles que desejam pagar com uma única parcela, porém os juros devem ser pagos 
                    periodicamente ou, dependendo do contrato firmado entre as partes, 
                    os juros são capitalizados e pagos junto ao valor principal</p>
                    
              </div>
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="img/img3.jpg" style="height:80vh; opacity: 0.6;">
              <div class="carousel-caption d-none d-md-block">
                    <h1 class="display-4 font-weight-bold text-dark">CÁLCULO DE AMORTIZAÇÃO</h1>
                    <p class="font-weight-bold text-dark">Tabela Price: É um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. Usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo</p>
                     
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
    <div class="container mt-5 text-center" id="equipe">
        <h1>Equipe</h1>
        <div class="row mt-5">
            <div class="col-lg-4">
              <img class="bd-placeholder-img rounded-circle" src="img/maria.jpg" width="140" height="140" >
              <h2 class="mt-2 mb-2">Maria Martins</h2>
              <p>Desenvolveu a classe Amortização Constante</p>
              <p><a class="btn btn-outline-primary" href="http://www.github.com/MariaCarolinaa" target="_blank" role="button">Ver github &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img class="bd-placeholder-img rounded-circle" src="img/victor.jpg" width="140" height="140" >              
              <h2 class="mt-2 mb-2">Victor Luã</h2>
              <p>Desenvolveu a classe Amortização Americana</p>
              <p><a class="btn btn-outline-primary" href="http://www.github.com/victor212luan" target="_blank" role="button">Ver github &raquo;</a></p>
            </div>
            <div class="col-lg-4">
              <img class="bd-placeholder-img rounded-circle" src="img/julia.jpg" width="140" height="140" >              
              <h2 class="mt-2 mb-2">Júlia Nunes</h2>
              <p>Desenvolveu a classe Tabela Price</p>
              <p><a class="btn btn-outline-primary" href="http://www.github.com/julianunes14" target="_blank" role="button">Ver github &raquo;</a></p>
            </div>
        </div>
    </div>
    <%@include file="WEB-INF/components/footer.jspf" %>
    </body>
</html>
