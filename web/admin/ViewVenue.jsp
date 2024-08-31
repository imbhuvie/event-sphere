<%-- 
    Document   : ViewVenue
    Created on : 31 Aug 2024, 7:22:07 pm
    Author     : bhupendraVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<%@page import="DB.DBCon" %>

<div class="main">
    <div class="venuelist">
        <h1>Venue List</h1>
        <table class="venuelisttable" cellspacing="0">
            <thead>
                <tr>
                    <th>Venue Name</th>
                    <th>Venue Address</th>
                    <th>Venue Contact</th>
                    <th>Venue Capacity</th>
                    <th>Venue Preference</th>
                    <th>Venue Rent</th>
                    <th>Visit</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try{
                    DBCon db=new DBCon();
//                    out.print(db.connection);
                    db.preparedStatement =db.connection.prepareStatement("select * from venue");
//                    out.print(db.preparedStatement);
                    db.resultSet=db.preparedStatement.executeQuery();
                    while(db.resultSet.next()){
                    out.print("<tr><td>"+db.resultSet.getString(1)+"</td><td>"+db.resultSet.getString(2)+"</td><td>"+db.resultSet.getString(3)+"</td><td>"+db.resultSet.getString(4)+"</td><td>"+db.resultSet.getString(5)+"</td><td>"+db.resultSet.getString(6)+"</td><td><a href='Venue.jsp?venue="+db.resultSet.getString(1)+"' class='visit'>Visit</a></td></tr>");
                    }
                    }catch(Exception e){
                    out.print(e.getMessage());
                    e.printStackTrace();
                    }
                %>

            </tbody>
        </table>
    </div>
</div>
</body>
</html>
