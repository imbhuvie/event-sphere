<%-- 
    Document   : newjspindex
    Created on : 29 Aug 2024, 12:23:16 am
    Author     : bhupendraVerma
--%>

<%
    if(session.getAttribute("username")==null){
    response.sendRedirect("index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

        <h1>Employee home page</h1>
    </body>
</html>
