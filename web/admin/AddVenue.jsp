<%-- 
    Document   : AddVenue
    Created on : 29 Aug 2024, 4:54:26?am
    Author     : bhupendraVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<div class="main">
    <form action="../AddVenue" class="addvenueform" method="post" enctype="multipart/form-data">
        <h1>Add Venue</h1>
        
        <%
                            if(request.getParameter("msg")!=null){
                            out.print("<p style='color:green;text-align:center;margin-top:10px;'>"+request.getParameter("msg")+"</p>");
                            }
                            if(request.getParameter("error")!=null){
                            out.print("<p style='color:red;text-align:center;margin-top:10px;'>"+request.getParameter("error")+"</p>");
                            }
                        %>
            <input type="text" id="vname" name="vname" placeholder="Enter Venue Name" required>
            <input type="text" id="vaddress" name="vaddress" placeholder="Enter Venue Address" required>
            <input type="number" id="vcontact" name="vcontact" placeholder="Venue Contact" required>
            <input type="number" id="capacity" name="capacity" placeholder="Venue Capacity" required >
            <select name="preferred" id="preferred">
                <option name="">select</option>
                <option name="Marriage">Marriage</option>  
                <option name="Meeting">Meeting</option>
                <option name="Auction">Auction</option>
                <option name="Birthday">Birthday</option>
                <option name="Ring Ceremony">Ring Ceremony</option>
                <option name="Kitty Party">Kitty Party</option>
            </select>
            <input type="number" id="vrent" name="vrent" placeholder="Venue Rent" required>
            <input type="file" id="vimage" name="vimage" placeholder="uploade Venue Image" accept="image/*">
            <div class="buttons">
                <input type="submit" id="submit">
                <input type="reset" id="reset">
            </div>
    </form>
</div>
</body>
</html>