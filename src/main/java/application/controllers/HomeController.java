package application.controllers; //pacote da hierarquização de pastas.

import org.springframework.stereotype.Controller; //import controlador de tipo de anotação, normalmente usado em combinação com métodos de manipulador anotados com base na RequestMapping. 
import org.springframework.web.bind.annotation.RequestMapping; //import do RequestMapping, é usado para mapear solicitações da web em métodos manipuladores em classes de manipulação de solicitações. 
import org.springframework.web.bind.annotation.RequestMethod; //import do RequestMethod.

@Controller //anotação Controller.
public class HomeController { //criando classe HomeController.
    @RequestMapping(method=RequestMethod.GET) //anotação com parâmetro que faz mapeamento o endereço do arquivo.
    public String index() { //criando método index.
        return "home/index.jsp"; //retorna o arquivo index.jsp que se encontra na pasta home.
    }
}