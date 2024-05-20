<%-- 
    Document   : modify_employee
    Created on : 20 May 2024, 23:01:54
    Author     : yolan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify an employee Page</title>
    </head>
    <body>
        <h1>Modify Employee!</h1>
        <p>
            Please add the details you want to modify below:
        </p>
        
        <form action="ModifyEmpServlet.do" method="POST">
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
                    <td></td>
                    <td><input type="submit" value="MODIFY EMLPOYEE" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
