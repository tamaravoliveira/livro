package application.models; //pacote para manipulação de informações.


import javax.persistence.Entity; //import do Entity do Java.
import javax.persistence.GeneratedValue; //import do GeneratedValue do Java.
import javax.persistence.GenerationType; //import do GenerationType do Java.
import javax.persistence.Id; //import do Id do Java.
import javax.persistence.Table; //import do Table do Java.

@Entity //anotação para indicar que a classe livro é uma entidade.
@Table(name="livros") //anotação que especifíca a tabela para o Entity.
public class Livro { //criando classe Livro.

    @Id //anotação que especifíca a chave primário da Entity.
    @GeneratedValue(strategy = GenerationType.IDENTITY) //informando a geração do valor do identificador único.
    private int id; //criando variável id.
    private String titulo; //criando variável titulo.

    public int getId() { //criando função getId(), tem como funcionalidade pegar o valor de id.
        return id; //retorna o valor de id.
    }
    public void setId(int id) { //criando função setId(), tem como funcionalidade definir o valor de id.
        this.id = id; //configura o valor de id, conforme o passado no parâmetro.
    }
    public String getTitulo() { //criando função getTitulo(), tem como funcionalidade pegar o valor de titulo.
        return titulo; ////retorna o valor de titulo.
    }
    public void setTitulo(String titulo) { //criando função setTitulo(), tem como funcionalidade definir o valor de titulo.
        this.titulo = titulo; ////configura o valor de titulo, conforme o passado no parâmetro.
    }


    
}