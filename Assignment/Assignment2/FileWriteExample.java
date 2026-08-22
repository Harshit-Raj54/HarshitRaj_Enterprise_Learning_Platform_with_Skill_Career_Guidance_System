import java.io.*;

public class FileWriteExample {
    public static void main(String[] args) throws IOException {

        FileWriter fw = new FileWriter("test.txt");
        fw.write("I am writing data to a file using FileWriter class in Java.");
        fw.close();
        System.out.println("Data Written");
    }
}