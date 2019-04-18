import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class JDBCTest {

    public static void main(String[] args) {

        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/join_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    ""
            );

            Statement stmt = connection.createStatement();

            String name = "secretary";

//            stmt.executeUpdate("INSERT INTO roles (name) VALUES('"+ name +"')");
            stmt.executeUpdate(String.format("INSERT INTO roles (name) VALUES('%s')", name));

            ResultSet rs = stmt.executeQuery("select * from roles");

            while(rs.next()){
                System.out.println("role = " + rs.getString("name"));
//                System.out.println(rs.getString(1));


            }

        } catch (SQLException e){
            e.printStackTrace();
        }

    }
}
