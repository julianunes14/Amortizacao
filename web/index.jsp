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
    <header>
        <div class="jumbotron jumbotron-fluid bg-light">
            <div class="container">
              <h1 class="display-4">Cálculo de amortização</h1>
              <p class="lead">Projeto desenvolvido para a matéria de Programação Orientada a Objetos.</p>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row" id="classes">
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
</body>
</html>
