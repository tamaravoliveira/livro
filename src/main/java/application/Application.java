package application; //pacote que vem do java.

import org.springframework.boot.SpringApplication; //importando o SpringApplication.
import org.springframework.boot.autoconfigure.SpringBootApplication; //import que executa o programa.

@SpringBootApplication
public class Application { //criando classe Application.
    public static void main(String[] args) { //criando método main.
        SpringApplication.run(Application.class, args); //classe que executa o programa.
    }
}