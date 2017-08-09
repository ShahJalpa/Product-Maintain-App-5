<%--
    Document   : products
    Created on : Sep 14, 2015, 1:11:42 PM
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
        <h1>Products</h1>
        <table>
            <tr>
                <th>Code</th>
                <th>Description</th>
                <th>Price</th>
                <th> </th>
                <th> </th>
            </tr>
            <%--@taglib prefix="c" uri="httep://java.sun.com/jsp/jstl/core"--%>
            <%@ taglib uri="/WEB-INF/maint.tld" prefix="item" %>
            <item:product>
            <!--c:forEach var="productItem" productList="<%--${product.productList}--%>"-->
                    <tr>
                        <td>${productCode}</td>
                        <td>${description}</td>
                        <td>${price}</td>
                        <td>
                            <a href="productMaint?action=displayProduct&productCode=${productCode}">Edit</a>
                        </td>
                        <td>
                            <a href="productMaint?action=deleteProduct&productCode=${productCode}">Delete</a>
                        </td>
                    </tr>
            </item:product>
            <!--/c:forEach-->
            
        </table> <br>
        <td>
            <form action ="productMaint" method ="get">
                <input type="hidden" name="action" value="addProduct"/>
                <input type="submit" value="Add Product">
        </form>
        </td>
        
    </body>
</html>
