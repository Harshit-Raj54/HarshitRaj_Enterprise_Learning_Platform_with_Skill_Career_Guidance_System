import java.util.*;

public class PriorityQueueExample {
    public static void main(String[] args) {

        PriorityQueue<Integer> pq = new PriorityQueue<>();

        pq.offer(40);
        pq.offer(10);
        pq.offer(30);
        pq.offer(20);

        while(!pq.isEmpty()){
            System.out.println(pq.poll());
        }
    }
}