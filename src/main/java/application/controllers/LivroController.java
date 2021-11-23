package application.controllers;//pacote responsável por fazer a intermediação da vizualização e model.
import java.util.Optional; //import do Optional do Java.

import org.springframework.beans.factory.annotation.Autowired; //import do Autowired do springframerwork.
import org.springframework.stereotype.Controller; //import do controlador de tipo de anotação, normalmente usado em combinação com métodos de manipulador anotados com base na RequestMapping. 
import org.springframework.web.bind.annotation.PathVariable; //import do PathVariable do springframerwork.
import org.springframework.web.bind.annotation.RequestMapping; //import do RequestMapping, é usado para mapear solicitações da web em métodos manipuladores em classes de manipulação de solicitações. 
import org.springframework.web.bind.annotation.RequestMethod; //import do RequestMethod.
import org.springframework.web.bind.annotation.RequestParam; //import do RequestParam.

import application.models.Livro; //import do model livro da aplicação.
import application.repositories.LivroRepository; //import do LivroRepository da aplicação.
import org.springframework.ui.Model; //import do model do springframework.

@Controller //anotação Controller.
@RequestMapping("/livro") //realiza o mapeamento, o controlador receberá requisições no endereço indicado ("/livro").
public class LivroController { //declaração da classe LivroController.
    @Autowired //anotação para injeção de dependências automáticas.
    private LivroRepository livrosRepo; //criando o objeto privado livrosRepo do tipo LivroRepository.
    @RequestMapping("/list") //realiza o mapeamento, o controlador receberá requisições no endereço indicado ("/list").
    public String list(Model model){ //criando uma função pública list, com parâmetro model, que tem como função a listagem de todos os livros.
        model.addAttribute("livros", livrosRepo.findAll()); //adicionando o atributo livros no modelo e preenchendo com todos livros do livrosRepo.
        return "list.jsp"; //retorna o arquivo list.jsp.
        
    }
    public String listar(){ //criando função pública listar() sem parâmetro, que tem como função listar todos os livros dentro de "/livro".
        return "livro/list.jsp"; //retorna o arquivo list.jsp que se encontra na pasta livro.
    }

@RequestMapping("/insert") //realiza o mapeamento, o controlador receberá requisições no endereço indicado ("/insert").
public String formInsert(){ //criando função pública sem parâmetro para mostrar o caminho do insert.jsp.
    return "insert.jsp"; //retorna o arquivo insert.jsp.

}
@RequestMapping(value="/insert",method=RequestMethod.POST) //realiza o mapeamento, o controlador receberá requisições do tipo post no endereço indicado ("/insert").
public String saveInsert(@RequestParam("titulo")String titulo){ //criando função pública saveInsert, que tem como finalidade inserir um livro no livrosRepo.

    Livro livro=new Livro(); //criando método livro do tipo Livro.
    livro.setTitulo(titulo); //configurando o título para livro.
    livrosRepo.save(livro); //salvando o livro em livrosRepo.
    return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.

}
@RequestMapping("/delete/{id}") //realiza o mapeamento, o controlador receberá requisições no endereço indicado ("/delete/{id}").
public String formDelete(Model model,@PathVariable int id){ //criando função pública formDelete, que recebe o id do livro como parâmetro, tem finalidade de fazer a confirmação das possíveis remoções de títulos do repositório.
    Optional<Livro>livro=livrosRepo.findById(id); //realizando busca pelo id para verificar a existência do livro.
    if (!livro.isPresent()) //se o livro não estiver presente.
        return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.
     model.addAttribute("livro",livro.get()); //adiciona o atributo livro ao modelo e pega o livro.
 
    return "/livro/delete.jsp"; //redirecionando para o arquivo delete.jsp que se encontra na pasta livro.
    

}
@RequestMapping(value = "/delete",method=RequestMethod.POST) //realiza o mapeamento, o controlador receberá requisições do tipo post no endereço indicado ("/delete").
public String confirmDelete(@RequestParam("id")int id){ //criando  função pública  confirmDelete() com o parâmetro id, que serve para deletar o livro do repositório.
   livrosRepo.deleteById(id); //deleta o livro do repositório pelo id.
        return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.
     

}
@RequestMapping("/update/{id}") //realiza o mapeamento, o controlador receberá requisições no endereço indicado ("/update/{id}").
public String formUpdate(Model model,@PathVariable int id){ //criando função pública formUpdate, que recebe o id do livro como parâmetro, tem finalidade de fazer a confirmação das possíveis atualizações de títulos do repositório.
    Optional<Livro>livro=livrosRepo.findById(id); //realizando busca pelo id para verificar a existência do livro.
    if (!livro.isPresent()) //se o livro não estiver presente.
        return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.
     model.addAttribute("livro",livro.get()); //adiciona o atributo livro ao modelo e pega o livro.
 
    return "/livro/update.jsp"; //redirecionando para o arquivo update.jsp que se encontra na pasta livro.
    

}
@RequestMapping(value = "/update",method=RequestMethod.POST) //realiza o mapeamento, o controlador receberá requisições do tipo post no endereço indicado ("/update").
public String saveUpdate(@RequestParam("titulo")String titulo,@RequestParam("id")int id){ //criando função pública saveUpdate() com os parâmetros titulo e id, que tem como finalidade atualizar os livros do repositório.
    Optional<Livro>livro=livrosRepo.findById(id); //realizando busca pelo id para verificar a existência do livro.
    if (!livro.isPresent()) //se o livro não estiver presente.
        return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.
     livro.get().setTitulo(titulo); //se o livro existir, é realizada a alteração de dados.
     livrosRepo.save(livro.get()); //salvando o livro em livrosRepo.
 
     return "redirect:/livro/list"; //redirecionando para o arquivo list.jsp que se encontra na pasta livro.
    
     

}
}