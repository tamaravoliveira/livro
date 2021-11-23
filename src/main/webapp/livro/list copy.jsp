<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!--diretiva que "controla" a página, tipo de documento, linguagem, idioma e etc.-->

<!DOCTYPE html> <!--iniciando a tag com DOCTYPE para compreensão nos navegadores-->
<html> <!--iniciando a tag HTML.-->
    <head> <!--iniciando o cabeçalho -->
        <meta charset="utf-8" /> <!--tag para formatação de idiomas (serve para os acentos).-->
        <title>Novo Livro</title> <!--tag de título da página.-->
    </head> <!--fechando o cabeçalho.-->
    <body> <!--iniciando o corpo da página.-->
       <h1>Novo Livro</h1> <!--tag específica para estilização de textos.-->
           <hr>
           <form action="insert" method="post"> <!--criando o formulário-->
               <label for="titulo">titulo</label> <!--mostra nome do que ele deve inserir, no caso o título do livro-->
               <input type="test" name="titulo"/> <!--espaço onde ele deve inserir o título-->
               <a href="/livro/list">Voltar</a> <!--botão para voltar que redireciona para livro/list.-->
               <input type="submit" value+"Salvar"/> <!--botão salvar-->
           </form> <!--fechando o formulário.-->

        <h1>Lista de livros, Tamara!</h1> <!--tag específica para estilização de textos.-->
    </body> <!--finalizando o corpo da página-->
</html> <!--finalizando o HTML-->
