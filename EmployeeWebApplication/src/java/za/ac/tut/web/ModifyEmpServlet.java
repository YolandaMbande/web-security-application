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

/**
 *
 * @author yolan
 */
public class ModifyEmpServlet extends HttpServlet {
@EJB EmployeeFacadeLocal efl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Double salary = Double.valueOf(request.getParameter("salary"));
        
        Employee emp = modifyEmployee(name, surname, salary);
        efl.edit(emp);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_employee.jsp");
        disp.forward(request, response);
    }

    private Employee modifyEmployee(String name, String surname, Double salary) {
       Employee emp = new Employee();
       emp.setName(name);
       emp.setSurname(surname);
       emp.setSalary(salary);
       return emp;
    }

}
