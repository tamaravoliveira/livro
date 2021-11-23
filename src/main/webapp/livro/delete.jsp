<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!--diretiva que "controla" a página, tipo de documento, linguagem, idioma e etc.-->
    <!DOCTYPE html> <!--iniciando a tag com DOCTYPE para compreensão nos navegadores.-->
    <html> <!--iniciando a tag HTML.-->

    <head> <!--iniciando o cabeçalho -->
        <meta charset="utf-8" /> <!--tag para formatação de idiomas (serve para os acentos).-->
        <title>Deletar um Livro</title> <!--tag de título da página.-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!--link para a utilização de estilização do Bootstrap.-->
    </head> <!--fechando o cabeçalho.-->

    <body> <!--iniciando o corpo da pág<!--abrindo tag Main que define o conteúdo principal do corpo da página.-->ina.-->
        <main class="container"> 
            <h1>Deletar um livro</h1> <!--tag específica para estilização de textos.-->
            <hr>
            <p>Tem certeza que deseja deletar o livro<em>"${livro.titulo}"</em>?</p> <!--tag responsável por criar um parágrafo de acordo com o seu conteúdo.-->
            <form action="/livro/delete" method="post"> <!--criando o formulário-->
                <input type="hidden" name="id" value="${livro.id}" /> <!--cria um campo de texto que recebe o valor do id do livro.-->

                <a href="/livro/list" class="btn btn-primary">Voltar</a> <!--botão para voltar que redireciona para livro/list.-->
                <input type="submit" value="Deletar" class="btn btn-secondary"></button> <!--define um valor fixo para a entrada de dados (excluir).-->
            </form> <!--fechando formulário.-->
        </main> <!--fechando Main.-->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->
    </body> <!--finalizando o corpo da página-->

    </html> <!--finalizando o HTML-->
