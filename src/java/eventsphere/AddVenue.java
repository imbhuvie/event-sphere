package eventsphere;

import DB.DBCon;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

/**
 *
 * @author bhupendraVerma
 */
@MultipartConfig(maxFileSize = 16177215) // Set max file size to 16MB
@WebServlet(name = "AddVenue", urlPatterns = {"/AddVenue"})
public class AddVenue extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            out.print("Servlet");
//            vname=Anandi+Palace&vaddress=Lucknow&vcontact=877545362&capacity=1000&preferred=Marriage&vrent=250000
            // Get form parameters
            String vname = request.getParameter("vname");
            String vaddress = request.getParameter("vaddress");
            String vcontact = request.getParameter("vcontact");
            String capacity = request.getParameter("capacity");
            String preferred = request.getParameter("preferred");
            String vrent = request.getParameter("vrent");

            Part filePart = request.getPart("vimage");
//            out.print(filePart);
            InputStream inputStream = null;
            if (filePart != null) {
                inputStream = filePart.getInputStream();
//                out.print(inputStream);
            }
            DBCon db = new DBCon();
            db.preparedStatement = db.connection.prepareStatement("insert into venue values(?,?,?,?,?,?,?)");
            db.preparedStatement.setString(1, vname);
            db.preparedStatement.setString(2, vaddress);
            db.preparedStatement.setString(3, vcontact);
            db.preparedStatement.setString(4, capacity);
            db.preparedStatement.setString(5, preferred);
            db.preparedStatement.setString(6, vrent);
            if (inputStream != null) {
                db.preparedStatement.setBlob(7, inputStream);
            }
            int row = db.preparedStatement.executeUpdate();
                System.out.println("success------------");
            if (row != 0) {
                response.sendRedirect("admin/AddVenue.jsp?msg=Venue added.");
            } else {
                System.out.println("unsuccess-------------");
                response.sendRedirect("admin/AddVenue.jsp?error=Venue not added.");

            }

        } catch (Exception e) {
            out.print(e.getMessage());
            e.printStackTrace();
        }
    }

}
