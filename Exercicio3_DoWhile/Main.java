import java.io.*;
public class Main {
  public static void main(String[] args) throws Exception {
    Lexer lexer = new Lexer(new FileReader("entrada.txt"));
    Parser parser = new Parser(lexer);
    parser.parse();
  }
}