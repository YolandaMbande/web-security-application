<%-- 
    Document   : access_denied
    Created on : 20 May 2024, 21:54:55
    Author     : yolan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Access Denied Page</title>
    </head>
    <body>
        <h1>Access Denied Page</h1>
        <%
            session.invalidate();
        %>
        <p>
            You're not allowed here, doll.
            <i><a href="login_page.jsp">go back</a></i>.
        </p>
        
    </body>
</html>
