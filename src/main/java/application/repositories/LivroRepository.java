package application.repositories; //pacote de repositórios.
import org.springframework.data.repository.CrudRepository; //import do CrudRepository do springframework.

import application.models.Livro; //import do model livro da aplicação.
public interface LivroRepository extends CrudRepository<Livro, Integer> { //criando  interface livroRepository, com a extensão do repositório crud.
    
}
