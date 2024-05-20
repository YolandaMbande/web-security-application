/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.EmployeeFacadeLocal;
import za.ac.tut.entity.Employee;


public class RemoveEmployeeServlet extends HttpServlet {
@EJB EmployeeFacadeLocal efl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        Employee emp = new Employee();
        emp.setName(name);
        
        if(emp.getName() != null)
        {
            efl.remove(emp);
        }
        
        RequestDispatcher disp = request.getRequestDispatcher("remove_outcome.jsp");
        disp.forward(request, response);
    }
}
