<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<tm:Module name='EMPLOYEE' />
<script src='/styletwo/js/EmployeeDeleteForm.js'></script>
<h2>Employee (Delete Module)</h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form action='/styletwo/DeleteEmployee.jsp' onsubmit='return validateForm(this)'>
Employee Name :  ${employeeBean.name}<br>
<input type='hidden' id='employeeId' name='employeeId' value='${employeeBean.employeeId}'>
Are you sure you want to delete ?
<button type='submit'>Yes</button>
<button type='Button' onclick='cancelDeletion()'>No</button>
</form>
<form id='cancelDeletionForm' action='/styletwo/Employees.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />