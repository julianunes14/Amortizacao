<%-- 
    Document   : amortizacao-americana
    Created on : 12/09/2020, 13:14:58
    Author     : Victor
--%>

<%@page import="java.text.NumberFormat"%>
<%@page import="javax.swing.JOptionPane"%>
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
              <h1 class="display-4 text-center text-white">Amortização Americana</h1>
              <p class="lead text-center text-white">Calcule aqui sua <b>Amortização Americana</b></p>
            </div>
        </div>
        </header>
        <div class="container">
            <form>
            <div class="form-row p-3">
                <div class="col text-center">
                  <label for="valorFinanciamento">Valor do financiamento</label>
                  <input type="number" min="1" id="valorFinanciamento" class="form-control" name="valorFinanciamento" placeholder="Insira aqui o valor do financiamento">
                </div>
                <div class="col text-center">
                  <label for="parcelas">Quantidade de Parcelas</label>
                  <input type="number" min="1" class="form-control" name="parcelas" placeholder="Parcelas">
                </div>
                <div class="col text-center">
                  <label for="taxa">Valor da Taxa</label>
                  <input type="text" min="1" class="form-control" name="taxa" placeholder="Taxa (a.m)">
                </div>
            </div>
                <div class="text-center">
                <button type="reset" class="btn btn-outline-primary">Limpar</button>
                <button type="submit" class="btn btn-outline-primary" >Calcular</button>
                </div>
            </form>
        <%
            try {
                double divida = Double.parseDouble(request.getParameter("valorFinanciamento"));
                double parcelas = Double.parseDouble(request.getParameter("parcelas"));
                double tax = Double.parseDouble(request.getParameter("taxa"));
                double parcela = 0, montante = 0, totalJuros = 0, totalDivida = 0;
        %>
        <div class="container mt-5">
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
                    <td><%= NumberFormat.getCurrencyInstance().format(divida)%></td>                             
                </tr>
                <% for (int i = 1; i <= parcelas; i++) {
                %>
                <tr>
                    <td ><%=i%></td>
                    <td><% if (i < parcelas) { %>
                        0
                        <%} else if (i == parcelas) {%>
                        <%= NumberFormat.getCurrencyInstance().format(divida)%>
                        <%}%>
                    </td>
                    <td>
                        <% if (i < parcelas + 1) { %>
                        <%parcela = (divida / 100) * tax;%>
                        <%=NumberFormat.getCurrencyInstance().format(parcela)%>
                        <% montante = montante + parcela;%>
                        <% }%>
                    </td>
                    <td>

                        <%=NumberFormat.getCurrencyInstance().format(divida)%>

                    </td>
                    <td>
                        <% if (i < parcelas) {%>   
                        <%=NumberFormat.getCurrencyInstance().format(montante)%>
                        <%} else if (i == parcelas) {%>
                        <%=NumberFormat.getCurrencyInstance().format(montante)%>
                        <%} else { %>
                        <% montante = montante + divida;%>
                        <%=NumberFormat.getCurrencyInstance().format(montante)%>
                        <%}
                            totalJuros = montante;
                            totalDivida = totalJuros + divida;%>
                    </td>
                </tr>
                <%}%>
                <tr>
                    <td><%="TOTAL"%></td>
                    <td><%= NumberFormat.getCurrencyInstance().format(divida)%></td>
                    <td><%= NumberFormat.getCurrencyInstance().format(totalJuros)%></td>
                    <td> A pagar com juros --></td>
                    <td><%= NumberFormat.getCurrencyInstance().format(totalDivida)%></td>
                </tr>
            </tbody>
        </table>
        <%} catch (Exception ex) {
        
        }%>
        </div>
    </div>
</body>
</html>
