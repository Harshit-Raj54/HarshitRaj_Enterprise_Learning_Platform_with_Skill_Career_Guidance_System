import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@interface MyAnnotation{
    String value();
}

public class AnnotationExample {

    @MyAnnotation(value="Hello")
    public void display(){
        System.out.println("Display Method");
    }

    public static void main(String[] args){
        new AnnotationExample().display();
    }
}