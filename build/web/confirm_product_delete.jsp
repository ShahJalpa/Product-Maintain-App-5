<%-- 
    Document   : confirm_product_delete
    Created on : Sep 14, 2015, 1:12:44 PM
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
        <h1>Are you sure you want to delete this product?</h1>
       
        <label>Product Code:</label>
        <span>${product.code}</span><br>
        <label>Product Description:</label>
        <span>${product.description}</span><br>
        <label>Product Price</label>
        <span>${product.price}</span><br>
        
        <form action="productMaint" method="post">
            <input type="hidden" name="action" value="deleteProduct">
            <input type="hidden" name="productCode" value="${product.code}">
            <input type="submit" name="yesButton" value="Yes">
        </form>
        
        <form action="productMaint" method="get">
            <input type="hidden" name="action" value="displayProducts">
            <input type="submit" value="No">
        </form>
        
        
        
        
    </body>
</html>

