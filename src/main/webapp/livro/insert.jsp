<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> <!--diretiva que "controla" a página, tipo de documento, linguagem, idioma e etc.-->

<!DOCTYPE html> <!--iniciando a tag com DOCTYPE para compreensão nos navegadores-->
<html> <!--iniciando a tag HTML.-->
    <head> <!--iniciando o cabeçalho -->
        <meta charset="utf-8" /> <!--tag para formatação de idiomas (serve para os acentos).-->
        <title>Novo Livro</title> <!--tag de título da página.-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> <!--link para a utilização de estilização do Bootstrap.-->

    </head> <!--fechando o cabeçalho.-->
    <body> <!--iniciando o corpo da página.-->
       <h1>Novo Livro</h1> <!--tag específica para estilização de textos.-->
           <hr>
           <form action="insert" method="post"> <!--criando o formulário-->
               <label for="titulo">Título</label> <!--mostra nome do que ele deve inseri, no caso o título do livro.-->
               <input type="text" name="titulo"/> <!--spaço onde ele deve inserir o título.-->
               <a href="/livro/list" class="btn btn-secondary">Voltar</a> <!--botão voltar com direcionamento livro/list.-->
               <input type="submit" value="Salvar" class="btn btn-warning"/> <!--botão salvar.-->
           </form> <!--fechando o formulário.-->

  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script> <!--importação do Bootstrap, declara o separate.-->

    </body> <!--finalizando o corpo da página-->
</html> <!--finalizando o HTML-->
