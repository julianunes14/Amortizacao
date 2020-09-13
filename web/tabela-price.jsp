<%-- 
    Document   : tabela-price
    Created on : 12/09/2020, 13:15:14
    Author     : Julia Nunes
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
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
        <div class="jumbotron jumbotron-fluid bg-dark">
            <div class="container">
              <h1 class="display-4 text-center text-white"> Amortização Tabela Price</h1>
              <p class="lead text-center text-white">Calcule aqui sua <b>Amortização - Tabela Price</b></p>
            </div>
        </div>
        </header>
        <div class="container">
            <form>
            <div class="form-row p-3 border ">
                <div class="col text-center">
            <%if (request.getParameter("enviar") == null) {  %>
            <div class="form-row p-3 border ">
                <div class="col text-center">
                  <label for="valorFinanciado">Valor do financiamento</label>
                  <input type="number" min="1" id="valorFinanciado" class="form-control" name="valorDivida" placeholder="Valor em reais (R$) Ex.: 1000">
                </div>
                <div class="col text-center">
                  <label for="valorFinanciado">Quantidade de Parcelas</label>
                  <input type="number" min="1" class="form-control" name="periodo" placeholder="Prazo em meses (m) Ex.: 12">
                </div>
                <div class="col text-center">
                  <label for="valorFinanciado">Valor da Taxa</label>
                  <input type="number" min="1" class="form-control" name="taxa" placeholder="Taxa por cento (%): Ex.: 5">
                </div>
            </div>
                <div class="text-center">
                <input type="submit" class="btn btn-primary" name="enviar" value="Enviar"/>
                </div>
        </form>
            </div>
                    

                    <% } else { %>

                        <% Locale localeBR = new Locale("pt","BR"); %>
                        <% NumberFormat currencyBr = NumberFormat.getCurrencyInstance(localeBR); %>
                        
                        <% try {
                        
                            double valorFinanciado = Double.valueOf(request.getParameter("valorDivida"));
                            double prazo = Double.valueOf(request.getParameter("periodo"));
                            double txJuros = Double.valueOf(request.getParameter("taxa"))/100;

                            double saldoDevedor = Double.valueOf(valorFinanciado);
                            double parcela = valorFinanciado * (txJuros/(1 - Math.pow((1+txJuros),(-prazo))));
                            double juros = 0;
                            double amortizacao = 0;

                            double somaParcelas = 0;
                            double somaAmortizacoes = 0;
                            double somaJuros = 0;
                        %>
                        
                        <div class="alignCenter">
                            <b>Valor Financiado:</b> <%= currencyBr.format(valorFinanciado) %>  |  <b>Prazo:</b> <%= (int) prazo + " meses" %>  |  <b>Taxa de juros mensal:</b> <%= txJuros*100 + "%" %>
                        </div>
                        
                        <br/>

                        <table id="tabelaPrice">
                            <tr>
                              <th id="indice">#</th>
                              <th>Parcelas</th>
                              <th>Amortizações</th>
                              <th>Juros</th>
                              <th>Saldo Devedor</th>
                            </tr>

                            <tr>
                              <td class="alignCenter">0</td>
                              <td class="alignCenter">-</td>
                              <td class="alignCenter">-</td>
                              <td class="alignCenter">-</td>
                              <td class="alignRight"><%= currencyBr.format(saldoDevedor) %></td>
                            </tr>

                            <% for (int i=1; i <= prazo; i++) {
                                juros = saldoDevedor * txJuros;
                                saldoDevedor += (juros - parcela);
                                amortizacao = parcela - juros; %>

                                <tr>         
                                  <td class="alignCenter"><%= i %></td>
                                  <td class="alignRight"><%= currencyBr.format(parcela) %></td>
                                  <td class="alignRight"><%= currencyBr.format(amortizacao) %></td>
                                  <td class="alignRight"><%= currencyBr.format(juros) %></td>
                                  <td class="alignRight"><%= currencyBr.format(saldoDevedor) %></td>
                                </tr>

                                <%  somaParcelas += parcela; 
                                    somaAmortizacoes += amortizacao;
                                    somaJuros += juros; 
                                %>

                            <% }%>
                            
                            <tr id="trTotais">
                              <td class="alignCenter">#</td>
                              <td class="alignCenter"><%= currencyBr.format(somaParcelas) %></td>
                              <td class="alignCenter"><%= currencyBr.format(somaAmortizacoes) %></td>
                              <td class="alignCenter"><%= currencyBr.format(somaJuros) %></td>
                              <td class="alignCenter">TOTAIS</td>
                            </tr>
                            
                        </table>
                            
                        <% }catch(Exception e){%>
                            <h2 class="valorInvalido">Valores Inválidos</h2>
                        <% }%>
                        
                    <% }%> 
                        
                </div>
            </div>
        </div>
    </body>
</html>
