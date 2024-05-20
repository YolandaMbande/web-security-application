package za.ac.tut.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import za.ac.tut.entities.EmployeeFacadeLocal;
import za.ac.tut.entity.Employee;

@WebServlet("/add_employee")
@MultipartConfig

public class AddEmployeeServlet extends HttpServlet {
@EJB EmployeeFacadeLocal efl;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        Double salary = Double.valueOf(request.getParameter("salary"));
        Part filepart = request.getPart("image");
        InputStream input = filepart.getInputStream();
        byte[] image = createImage(input);
        
        Employee emp = createEmployee(name, surname, salary, image);
        efl.create(emp);
        
        RequestDispatcher disp = request.getRequestDispatcher("menu.html");
        disp.forward(request, response);
    }

    private Employee createEmployee(String name, String surname, Double salary, byte[] image) {
        Employee emp = new Employee();
        emp.setName(name);
        emp.setSurname(surname);
        emp.setSalary(salary);
        emp.setImage(image);
        return emp;
    }

    private byte[] createImage(InputStream input) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int read;
        
        while((read = input.read(buffer))!= -1)
        {
            output.write(buffer, 0, read);
        }
        
        return output.toByteArray();
    }

}
