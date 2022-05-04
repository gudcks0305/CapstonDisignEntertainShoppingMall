<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DTO.Product" %>

<jsp:useBean id="productDAO" class="DAO.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>상품 목록</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
    <%@ include file="Menu.jsp" %>

    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">
                상품 목록
            </h1>
        </div>
    </div>

    <%
        ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>

    <div class="container">
        <div class="row" align="center">
            <%
                for(int i=0; i<listOfProducts.size(); i++){
                    Product product = listOfProducts.get(i);
            %>

            <div class="col-md-4">
                <h3><%=product.getPname() %></h3>
                <p><%=product.getDescription() %>
                <p><%=product.getUnitPrice() %>원
            </div>

            <%
                }
            %>
        </div>

        <!-- 구분선 -->
        <hr>
    </div>

    <%@ include file="Footer.jsp" %>
    </body>
</html>