package eventsphere;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author bhupendraVerma
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {


    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String usertype =request.getParameter("usertpe");
            String username =request.getParameter("username");
            String password =request.getParameter("password");
            DBCon db =new DBCon();
            db.preparedStatement =db.connection.prepareStatement("SELECT * FROM login WHERE username=? and password=? and usertype=?");
            db.preparedStatement.setString(1, username);
            db.preparedStatement.setString(2, password);
            db.preparedStatement.setString(3, usertype);
            db.resultSet=db.preparedStatement.executeQuery();
            if(db.resultSet.next()){
                HttpSession session=request.getSession();
                session.setAttribute("username",username);
                if(usertype.equalsIgnoreCase("admin")){
                response.sendRedirect("admin/index.jsp?msg=Login successfull");     
                }else{
                    response.sendRedirect("employee/index.jsp?msg=Login successfull");

                }
            }else{
                response.sendRedirect("index.jsp?error=Incorrect credentials.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
