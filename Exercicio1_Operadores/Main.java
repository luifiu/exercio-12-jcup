import java.io.*;
import java_cup.runtime.Symbol;

public class Main {
  public static void main(String[] args) throws Exception {
    Reader reader = new FileReader("entrada.txt");
    Lexer lexer = new Lexer(reader);
    Parser parser = new Parser(lexer);
    Object result = parser.parse().value;
    System.out.println("Resultado final: " + result);
  }
}