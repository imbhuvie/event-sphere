
package DB;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author bhupendraVerma
 */
public class DBCon {
    
    public Connection connection;
    public Statement statement;
    public PreparedStatement preparedStatement;
    public ResultSet resultSet;
    public DBCon(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost:3310/eventsphere","root","root");
            System.out.println(connection);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    
}
//    public static void main(String[] args) {
//        new DBCon();
//    }
}
