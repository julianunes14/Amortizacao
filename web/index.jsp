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
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand text-white" href="#">Fatec PG</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link text-white" href="#">Página Inicial<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#jsp">Classes desenvolvidas</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#">Sobre o projeto</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="#">Equipe</a>
            </li>
          </ul>
        </div>
    </nav>
    <header>
        <div class="jumbotron jumbotron-fluid bg-light">
            <div class="container">
              <h1 class="display-4">Cálculo de amortização</h1>
              <p class="lead">Projeto desenvolvido para a matéria de Programação Orientada a Objetos.</p>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row" id="jsp">
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
