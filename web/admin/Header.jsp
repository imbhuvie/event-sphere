<%-- 
    Document   : header
    Created on : 29 Aug 2024, 12:25:44 am
    Author     : bhupendraVerma
--%>

<%
//    if(session.getAttribute("username")==null){
//    response.sendRedirect("index.jsp");
//    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
        <link rel="stylesheet" href="../css/admin.css"/>
    </head>
    <body>
        <div class="navbar">
            <div class="logo">
                <a href="index.jsp" class="logotext">Event Sphere</a>
            </div>
            <div class="navitem">
                <span><a href="ViewVenue.jsp">View Venue</a></span>
                <span><a href="BookingHistory.jsp">Booking History</a></span>
                <span><a href="NewBooking.jsp">New Booking</a></span>
                <span><a href="AddVenue.jsp">Add Venue</a></span>
                <span><a href="AddEmployee.jsp">Add Employee</a></span>
                <span><a href="ViewEmployee.jsp">View Employee</a></span>
            </div>
            <div class="logout">
                <a href="../Logout" class="btn">Logout</a>
            </div>
        </div>
    