import java.sql.*;

public class JDBCExample {

    public static void main(String[] args) {

        String url = "jdbc:mysql://localhost:3306/test";
        String user = "root";
        String password = "root";

        try{

            Connection con = DriverManager.getConnection(url,user,password);

            System.out.println("Connected Successfully");

            con.close();

        }catch(Exception e){
            e.printStackTrace();
        }
    }
}