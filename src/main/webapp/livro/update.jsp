<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!--diretiva que "controla" a página, tipo de documento, linguagem, idioma e etc.-->

<!DOCTYPE html> <!--iniciando a tag com DOCTYPE para compreensão nos navegadores-->
<html> <!--iniciando a tag HTML.-->
    <head> <!--iniciando o cabeçalho -->
        <meta charset="utf-8" /> <!--tag para formatação de idiomas (serve para os acentos).-->
        <title>Editar Livro</title> <!--tag de título da página.-->
    </head> <!--finalizando o cabeçalho.-->
    <body> <!--iniciando o corpo da página.-->
       <h1>Editar Livro</h1> <!--tag específica para estilização de textos.-->
           <hr>
           <form action= "/livro/update" method="post"> <!--criando o formulário-->
            <input type="hidden" name="id" value="${livro.id}"/> <!--cria um campo de texto que recebe o valor do id do livro-->
               <label for="titulo">Título</label> <!--mostra nome do que ele deve inserir, no caso o título do livro--> 

               <input type="text" name="titulo" value="${livro.titulo}"/> <!--espaço onde ele deve inserir o título-->
               <a href="/livro/list">Voltar</a> <!--botãoo voltar com diretório em livro/list-->
               <input type="submit" value="Salvar"/> <!--botão salvar-->
           </form> <!--fechando o formulário.-->
    </body> <!--finalizando o corpo da página-->
</html> <!--finalizando o HTML-->
