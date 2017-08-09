<%-- 
    Document   : product
    Created on : Sep 14, 2015, 1:11:58 PM
    Author     : jalpa
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Product Maintenance</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Product</h1>
        <%--@ taglib uri="/WEB-INF/maint.tld" prefix="item" --%>
        
          <p>${message}</p>
          
          <form action="productMaint" method="post">
            <label class="pad_top">Product Code: </label>
            <input type="text" name="productCode" value="${product.code}"><br>
            <label class="pad_top">Product Description: </label>
            <input type="text" name="productDescription" value="${product.description}"><br>
            <label class="pad_top">Product Price: </label>
            <input type="text" name="productPrice" value="${product.price}"><br>
            <input type="hidden" name="action" value="updateProduct">
            <input type="submit" value="Update Product"> <br>
          </form>
        
          
          <form action="productMaint" method="get">
            <input type="hidden" name="action" value="displayProducts">
            <input type="submit" value="View Product">
          </form>
       
        
    </body>
</html>

