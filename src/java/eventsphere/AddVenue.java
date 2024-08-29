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
        try (PrintWriter out = response.getWriter()) {
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
            if (filePart != null) {
                InputStream inputStream = filePart.getInputStream();
//                out.print(inputStream);
            }
            DBCon db =new DBCon();
            db.preparedStatement=db.connection.prepareStatement("insert into ");
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
