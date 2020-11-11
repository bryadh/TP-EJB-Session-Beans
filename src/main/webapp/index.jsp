<%--
  Created by IntelliJ IDEA.
  User: ryadh
  Date: 04/11/2020
  Time: 09:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Converter</title>
</head>
<body>
    <!-- Imports  -->
    <%@page import="java.util.*" %>
    <%@page import="converter.ConverterBean" %>

    <!-- Injection de dependance  -->
    <jsp:useBean id="beanConv" class="converter.ConverterBean"/>

    <form action="index.jsp" method="get">

        <p>
            <label for="montant">Montant :</label>
            <input type="text" name="montant" id="montant">
        </p>

        <p>
            <label for="monnaie">Monnaie cible :</label>
            <input type="text" name="monnaie" id="monnaie">
        </p>

        <p>
            <input type="submit">
        </p>

    </form>

    <!-- Affichage du resultat -->
    <%

        if (request.getParameter("montant") == null || request.getParameter("monnaie") == null){

            System.out.println("Not parameters yet");

        } else {

            double amount  = Double.parseDouble(request.getParameter("montant"));
            String currency = request.getParameter("monnaie");

            ConverterBean cb = new ConverterBean();

            double result = cb.euroToOtherCurrency(amount, currency);


            out.println("<h4>Le montant converti en "+ currency +" est:"+ result +"</h4>");

        }

    %>

</body>
</html>
