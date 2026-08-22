import java.util.*;

public class ArrayListExample {
    public static void main(String[] args) {

        ArrayList<String> list = new ArrayList<>();

        list.add("Harshit");
        list.add("Rohan");
        list.add("Kartik");

        System.out.println(list);

        list.remove("Rohan");

        for(String s : list){
            System.out.println(s);
        }
    }
}