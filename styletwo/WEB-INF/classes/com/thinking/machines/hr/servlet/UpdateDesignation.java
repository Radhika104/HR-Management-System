package com.thinking.machines.hr.servlet;
import com.thinking.machines.hr.dl.*;
import com.thinking.machines.hr.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class UpdateDesignation extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
DesignationBean designationBean=new DesignationBean();
String title;
int code;
code=Integer.parseInt(request.getParameter("code"));
title=request.getParameter("title");
DesignationDTO designation=new DesignationDTO();
designation.setTitle(title);
designation.setCode(code);
DesignationDAO designationDAO=new DesignationDAO();
try
{
designationDAO.update(designation);
designationBean.setCode(designation.getCode());
designationBean.setTitle(designation.getTitle());
MessageBean messageBean;
messageBean=new MessageBean();
messageBean.setHeading("Designation (Edit  Module)");
messageBean.setMessage("Designation Updated");
messageBean.setGenerateButtons(true);
messageBean.setButtonOneText("Ok");
messageBean.setButtonOneAction("Designations.jsp");
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
requestDispatcher = request.getRequestDispatcher("/DesignationAddForm.jsp");
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