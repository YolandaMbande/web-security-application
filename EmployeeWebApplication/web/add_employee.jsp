<%-- 
    Document   : add_employee
    Created on : 20 May 2024, 22:22:01
    Author     : yolan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee Page</title>
    </head>
    <body>
        <h1>Employee Details!</h1>
        
        <p>
            Please fill in the form below to add employee to database...
        </p>
        
        <form action="AddEmployeeServlet.do" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td> Name : </td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td> Surname : </td>
                    <td><input type="text" name="surname" required=""></td>
                </tr>
                <tr>
                    <td> Salary : </td>
                    <td><input type="text" name="salary" required=""></td>
                </tr>
                <tr>
                    <td> Image : </td>
                    <td><input type="file" name="image" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD EMLPOYEE" /></td>
                </tr>
            </table>
        </form>
        
        <p>
            Click <a href="menu.html">here</a> to go to main page.
        </p>
    </body>
</html>
