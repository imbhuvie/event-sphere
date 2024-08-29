<%-- 
    Document   : index
    Created on : 28 Aug 2024, 11:37:45 pm
    Author     : bhupendraVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="css/main.css"/>
    </head>
    <body>
        <div class="navbar">
            <h1>Event Sphere</h1>
        </div>
        <div class="main">
            <form action="Login">
                <h2>Login Form</h2>
                
                        <%
                            if(request.getParameter("msg")!=null){
                            out.print("<p style='color:green;text-align:center;margin-top:10px;font-weight:bold;'>"+request.getParameter("msg")+"</p>");
                            }
                            if(request.getParameter("error")!=null){
                            out.print("<p style='color:red;text-align:center;margin-top:10px;font-weight:bold;'>"+request.getParameter("error")+"</p>");
                            }
                        %>
                   
                <select name="usertpe" id="usertype" required>
                    <option name="">Select User Type</option>
                    <option name="admin">Admin</option>
                    <option name="employee">Employee</option>
                </select>                           
                <input type="text" name="username" placeholder="Enter user name" required>
                <input type="password" name="password" placeholder="Enter password" required>
                <div class="buttons">
                    <input type="submit" id="submit">
                    <input type="reset" id="reset">
                </div>
                <div> 
                    
                </div>
            </form>
        </div>
    </body>
</html>
