<%-- 
    Document   : header
    Created on : 29 Aug 2024, 12:25:44 am
    Author     : bhupendraVerma
--%>

<%
    if(session.getAttribute("username")==null){
    response.sendRedirect("index.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Homepage</title>
        <link rel="stylesheet" href="../css/employee.css"/>
    </head>
    <body>
        <div class="navbar">
            <div class="logo">
                <h1>Event Sphere</h1>
            </div>
            <div class="navitem">
                <span><a href="MyProfile.jsp">My Profile</a></span>
                <span><a href="BookEvent.jsp">Book Event</a></span>
                <span><a href="BookingHistory.jsp">Booking History</a></span>
                <span><a href="ViewVenue.jsp">View Venue</a></span>
                <span><a href="BokkingStatus.jsp">Booking Status</a></span>
                
            </div>
            <div class="logout">
                <a href="../Logout" class="btn">Logout</a>
            </div>
        </div>
    