<%-- 
    Document   : amortizacao-constante
    Created on : 12/09/2020, 13:14:44
    Author     : Maria Carolina
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.NumberFormat"%>
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
        <div class="jumbotron jumbotron-fluid bg-secondary">
            <div class="container">
              <h1 class="display-4 text-center text-white"> Amortização constante</h1>
              <p class="lead text-center text-white">Calcule aqui sua <b>Amortização Constante</b></p>
            </div>
        </div>
        </header>
        <div class="container">
            <form>
            <div class="form-row p-3 border ">
                <div class="col text-center">
                  <label for="valorFinanciamento">Valor do financiamento</label>
                  <input type="number" min="1" id="valorFinanciamento" class="form-control" name="valorDivida" placeholder="Em R$">
                </div>
                <div class="col text-center">
                  <label for="qtdParcelas">Quantidade de Parcelas</label>
                  <input type="number" min="1" id="qtdParcelas" class="form-control" name="periodo" placeholder="Número de parcelas">
                </div>
                <div class="col text-center">
                  <label for="vlTaxa">Valor da Taxa (a.m)</label>
                  <input type="number" min="1" id="vlTaxa" class="form-control" name="taxa" placeholder="Em %">
                </div>
            </div>
                <div class="text-center mt-5 mb-5">
                <button type="reset" class="btn btn-outline-warning">Limpar</button>
                <button type="submit" class="btn btn-outline-success ml-5" >Calcular</button>
                </div>
            </form>
        </div>
                
             
            <%
            try {
                double valorDivida = Double.parseDouble(request.getParameter("valorDivida"));
                int periodo = Integer.parseInt(request.getParameter("periodo"));
                double taxa = Double.parseDouble(request.getParameter("taxa")) / 100;
                NumberFormat nf = new DecimalFormat("#,##0.00");
                double prestacaoMensal = 0, tPrestacaoMensal = 0, saldoDevedor = valorDivida, totalJuros = 0, juros = 0, tAmortizacao = 0, amortizacao = 0;
                //a amortização do sistema SAC é constante, por isso valor esta calculado antes do for
                amortizacao = saldoDevedor / periodo;
            %>
            <div class="container">
        <table class="table table-bordered table-dark">
            <thead>
              <tr>
                <th scope="col"> Período </th>
                <th scope="col"> Prestação </th>
                <th scope="col"> Juros </th>
                <th scope="col"> Amortização </th>
                <th scope="col"> Saldo Devedor </th>
              </tr>
            </thead>
            <tbody>
                <tr>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                    <td><%= NumberFormat.getCurrencyInstance().format(saldoDevedor)%></td>                             
                </tr>
            <% for (int i = 1; i <= periodo; i++) {
                            //juros é calculado primeiro fora do for pois é feito com base no valor inicial da dívida
                            juros = saldoDevedor * taxa;
                            prestacaoMensal = amortizacao + (saldoDevedor * taxa);
                            tPrestacaoMensal = tPrestacaoMensal + prestacaoMensal;
                            //nesta linha é concatenado o juros anterior e depois soma com todos os juros calculados no loop
                            totalJuros = totalJuros + juros;
                            tAmortizacao = amortizacao + tAmortizacao;
                    %>
                    <tr>
                        <td><%= i%></td> <!-- representa o período conforme a iteração do for (o mês/parcela) -->
                        <td><%= NumberFormat.getCurrencyInstance().format(prestacaoMensal)%></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(juros)%></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(amortizacao)%></td>
                        <% //a cada iteração o saldo devedor é subtraído o valor de amortização (que é constante)
                            saldoDevedor = saldoDevedor - amortizacao;%>
                        <td><%= NumberFormat.getCurrencyInstance().format(saldoDevedor)%></td>
                        <%  //ainda dentro do for a taxa de juros é calculada novamente em cima do novo valor de saldo devedor
                            }
                        %>
                    </tr>
                    <tr>
                        <td><%="TOTAL"%></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(tPrestacaoMensal)%></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(totalJuros)%></td>
                        <td><%= NumberFormat.getCurrencyInstance().format(tAmortizacao)%></td>
                        <td> - </td>
                    </tr>
                </tbody>
            
            <%} catch (Exception ex) {
        
            }%>
        </div>
    </body>
</html>
