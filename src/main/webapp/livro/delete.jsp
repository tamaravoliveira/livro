<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>Apagar Livro</title>
      
    </head>
    <body>
        <h1>Apagar Livro</h1>
        <hr>

        <p>Deseja mesmo excluir o livro<em>"${livro.titulo}"</em>?</p>

        <form action="livro/delete" method="post">
            <input type="hidden" name="id"value="${livro.id}"/>

            <a href="/livro/list">Voltar</a>
            <input type="submit" value="Excluir"/>
        </form>
        </body>
</html>