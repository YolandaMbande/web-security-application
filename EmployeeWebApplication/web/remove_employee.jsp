<%-- 
    Document   : remove_employee
    Created on : 20 May 2024, 22:45:26
    Author     : yolan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Employee Page</title>
    </head>
    <body>
        <h1>Remove Employee Using Name!</h1>
        
        <p>
            Please enter the name of the employee you want to remove:
        </p>
        <form action="RemoveEmployeeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Enter the name : </td>
                    <td><input type="text" name="name" required=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="REMOVE EMP"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
