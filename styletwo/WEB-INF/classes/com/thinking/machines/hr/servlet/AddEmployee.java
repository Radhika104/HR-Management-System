package com.thinking.machines.hr.servlet;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import javax.servlet.*;
import java.text.*;
import javax.servlet.http.*;
import java.math.*;
public class AddEmployee extends HttpServlet
{
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
try
{
EmployeeBean employeeBean;
employeeBean=(EmployeeBean)request.getAttribute("employeeBean");
String name;
int designationCode;
String designation;
String title;
java.util.Date dateOfBirth;
String gender;
String vGender=request.getParameter("gender");
boolean isIndian;
BigDecimal basicSalary;
String panNumber;
String vPanNumber=request.getParameter("panNumber");
String aadharCardNumber;

name=employeeBean.getName();
designationCode=employeeBean.getDesignationCode();
designation=employeeBean.getDesignation();
System.out.println("DateOFBirth : "+employeeBean.getDateOfBirth());
dateOfBirth=new SimpleDateFormat("yyyy-MM-dd").parse(employeeBean.getDateOfBirth());
System.out.println("Gender : "+employeeBean.getGender());
gender=employeeBean.getGender();
System.out.println("Gender : "+vGender);
isIndian=employeeBean.getIsIndian();
basicSalary=new BigDecimal(employeeBean.getBasicSalary());
panNumber=employeeBean.getPANNumber();
aadharCardNumber=employeeBean.getAadharCardNumber();

System.out.println("IsIndian : "+isIndian);
System.out.println("PAN Nunber : "+vPanNumber);
System.out.println("aadharCardNumber : "+aadharCardNumber);

EmployeeDTO employee=new EmployeeDTO();
employee.setName(name);
employee.setDesignationCode(designationCode);
employee.setDesignation(designation);
employee.setDateOfBirth(dateOfBirth);
employee.setGender(vGender);
employee.setIsIndian(isIndian);
employee.setBasicSalary(basicSalary);
employee.setPANNumber(vPanNumber);
employee.setAadharCardNumber(aadharCardNumber);

EmployeeDAO employeeDAO=new EmployeeDAO();
try
{
employeeDAO.add(employee);
employeeBean.setEmployeeId(employee.getEmployeeId());
MessageBean messageBean;
messageBean=new MessageBean();
messageBean.setHeading("Employee (Add Module)");
messageBean.setMessage("Employee added, add more ?");
messageBean.setGenerateButtons(true);
messageBean.setGenerateTwoButtons(true);
messageBean.setButtonOneText("Yes");
messageBean.setButtonOneAction("EmployeeAddForm.jsp");
messageBean.setButtonTwoText("No");
messageBean.setButtonTwoAction("Employees.jsp");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher;
requestDispatcher=request.getRequestDispatcher("/Notification.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
System.out.println(daoException);
ErrorBean errorBean;
errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher;
requestDispatcher = request.getRequestDispatcher("/EmployeeAddForm.jsp");
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