<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8" />

            <title>Livros</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        </head>

        <body>
            <main class="container">
                <h2>Lista de livros, Tamara!</h2>
                <a href="insert.jsp" type="button" class="btn btn-outline-primary">Novo Livro</a>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Título</th>
                    </tr>
                    <c:forEach var="l" items="${livros}">
                        <tr>
                            <td>${l.id}</td>
                            <td>${l.titulo}</td>
                            <td>
                                <a href="update.jsp" type="button" class="btn btn-outline-warning">Atualizar Livro</a>
                            </td>
                            <td>
                                <a href="delete.jsp" type="button" class="btn btn-outline-danger">Excluir Livro</a>
                            </td>
                        </tr>

                    </c:forEach>
                </table>
            </main>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        </body>

        </html>