<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>Livros</title>
      
    </head>
    <body>
        
        <h1>Lista de livros, Tamara.</h1>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Título</th>
                </tr>
                <c:forEach var="l" items="${livros}">
                    <tr>
                        <td>${l.id}</td>
                        <td>${l.titulo}</td>
                    </tr>

                </c:forEach>
        </table>
    </body>
</html>
