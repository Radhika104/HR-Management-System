package com.thinking.machines.hr.tags;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
import javax.servlet.http.*;
public class FormResubmittedTagHandler extends TagSupport
{
public FormResubmittedTagHandler()
{
reset();
}
public void reset()
{
//do nothing
}
public int doStartTag()
{
HttpServletRequest request=(HttpServletRequest)pageContext.getRequest();
String formID=request.getParameter("formID");
System.out.println("Form Resubmitted : "+formID);
if(formID==null)
{
System.out.println("Heelo");
return super.EVAL_BODY_INCLUDE;
}
String formIDInSession=(String)pageContext.getAttribute(formID,PageContext.SESSION_SCOPE);
if(formIDInSession==null)
{
System.out.println("Heyy");
return super.EVAL_BODY_INCLUDE;
}
pageContext.removeAttribute(formID,PageContext.SESSION_SCOPE);
if(formIDInSession.equals(formID))
{
System.out.println("Hoo");
return super.SKIP_BODY;
}
else
{
System.out.println("Hhhh");
return super.EVAL_BODY_INCLUDE;
}
}
public  int doEndTag()
{
System.out.println("doEndTag");
this.reset();
return super.EVAL_PAGE;
}
}