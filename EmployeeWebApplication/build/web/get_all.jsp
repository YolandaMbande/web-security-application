<%-- 
    Document   : get_all
    Created on : 20 May 2024, 23:12:45
    Author     : yolan
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of All Employees Page</title>
    </head>
    <body>
        <h1>List of Employees</h1>
        
        <p>
            Below is the list of all employees int the database...
        </p>
        <%
            List<Employee> list = (List<Employee>)request.getAttribute("list");
            
            for(int m=0; m<list.size(); m++)
            {
        %>
        
        <table border = "1">
            <tr>
                <td>Name : </td>
                <td><%= list.get(m).getName() %></td>
            </tr>
            <tr>
                <td>Surname : </td>
                <td><%= list.get(m).getSurname() %></td>
            </tr>
            <tr>
                <td>Salary : </td>
                <td><%= list.get(m).getSalary()%></td>
            </tr>
            <tr>
                <td>Image : </td>
                <td><img src="data:image/jpeg;base64, <%= Base64.getEncoder().encodeToString(list.get(m).getImage()) %>"></td>
            </tr>
            
            <%
                }
            %>
        </table>
        <p>
            Click <a href="menu.html">here</a> to go to main page.
        </p>
    </body>
</html>
