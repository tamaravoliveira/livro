<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!--diretiva que "controla" a página, tipo de documento, linguagem, idioma e etc.-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--importando bibliotecas para o documento jsp.-->
<!DOCTYPE html> <!--iniciando a tag com DOCTYPE para compreensão nos navegadores.-->
<html> <!--iniciando a tag HTML.-->
    <head> <!--iniciando o cabeçalho -->
        <meta charset="utf-8" /> <!--tag para formatação de idiomas (serve para os acentos).-->
        <title>Livros</title> <!--tag de título da página.-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!--link para a utilização de estilização do Bootstrap.-->
    </head> <!--fechando o cabeçalho.-->
    <body> <!--iniciando o corpo da página.-->
        <main class="container"> <!--abrindo tag Main que define o conteúdo principal do corpo da página.-->
            <h1>Livros</h1> <!--tag específica para estilização de textos.-->
            <a href="/livro/insert" class="btn btn-primary">Novo livro</a>
        <table> <!--iniciando a tabela-->
            <tr>
                <th>ID</th> <!--campo id-->
                <th>Título</th> <!--campo título-->
            </tr>
            <c:forEach var="l" items="${livros}"> <!--tag responsável buscar todos os livros presentes na base de dados e aplicar a todos eles as próximas tags (uma espécie de loop), e nos items informamos qual a tabela ${livros} mais em baixo a ela fecha /c:forEach-->
                <tr>
                    <td>${l.id}</td> <!--campo id-->
                    <td>${l.titulo}</td> <!--campo título-->
                    <td><!--define uma célula da tabela-->
                        <a href="/livro/update/${l.id}" class="btn btn-primary">Atualizar livro</a> <!--botão para atualizar o livro-->
                    </td> <!--define uma célula da tabela-->
                    <td> <!--define uma célula da tabela-->
                        <a href="/livro/delete/${l.id}" class="btn btn-danger">Deletar livro</a> <!--botão para apagar o livro-->
                    </td> <!--define uma célula da tabela-->
                </tr>
            </c:forEach> <!---->
        </table> <!--encerrando a tabela-->

        <h1>Lista de livros, Tamara.</h1> <!--tag específica para estilização de textos.-->

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->
    </main> <!--finalizando Main-->
</body> <!--finalizando o corpo da página-->
</html> <!--finalizando o HTML-->
