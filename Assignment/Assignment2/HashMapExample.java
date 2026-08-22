import java.util.*;

public class HashMapExample {
    public static void main(String[] args) {

        HashMap<Integer,String> map = new HashMap<>();

        map.put(101,"Rahul");
        map.put(102,"Amit");

        System.out.println(map);

        for(Map.Entry<Integer,String> e : map.entrySet()){
            System.out.println(e.getKey()+" "+e.getValue());
        }
    }
}   