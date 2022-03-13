package com.thinking.machines.hr.servlet;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class ConfirmDeleteEmployee extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
EmployeeBean employeeBean=new EmployeeBean();
String employeeId=request.getParameter("employeeId");
try
{
EmployeeDAO employeeDAO=new EmployeeDAO();
EmployeeDTO employee=employeeDAO.getByEmployeeId(employeeId);
employeeBean.setEmployeeId(employee.getEmployeeId());
employeeBean.setName(employee.getName());
request.setAttribute("employeeBean",employeeBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/ConfirmDeleteEmployee.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
System.out.println(daoException);
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher = request.getRequestDispatcher("/ComfirmDeleteEmployee.jsp");
requestDispatcher.forward(request,response);
System.out.println(daoException.getMessage());
}
}catch(Exception exception)
{
System.out.println(exception.getMessage());
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("ErrorPage.jsp");
try
{
requestDispatcher.forward(request,response);
}catch(Exception e)
{
System.out.println(e.getMessage());
//do nothing
}
}
}
}