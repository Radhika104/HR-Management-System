<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='EMPLOYEE' />
<jsp:useBean id='employeeBean' scope='request' class='com.thinking.machines.hr.beans.EmployeeBean' />
<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/EmployeeAddForm.js'></script>
<h2>Employee (Add Module)</h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/styletwo/AddEmployee.jsp' onsubmit='return validateForm(this)'>
<tm:FormID />


<table>
<tr>
<td>Name</td>
<td><input type='text' id='name' name='name' maxlength='50' size='51' value='${employeeBean.name}'>
<span id='nameErrorSection' style='color : red'></span></td>
</tr>
<tr>
<td>Designation</td>
<td><select id='designationCode' name='designationCode' value='${employeeBean.designationCode}'>
<option value='-1'>&lt;Select Designation&gt;</option>
<option value='{designationBean.getCode()}'>${designationBean.getTitle()}</option>

<option value='${designationBean.code}'>${designationBean.title}</option>
</select>
<span id='designationCodeErrorSection' style='color : red'></span>
</td>
</tr>
<tr>
<td>Date Of Birth</td>
<td><input type='date' id='dateOfBirth' name='dateOfBirth' value='${employeeBean.dateOfBirth}'>
<span id='dateOfBirthErrorSection' style='color : red'></span>
</td>
</tr>
<tr>
<td>Gender</td>
<td><input type='radio' id='male' name='gender' value='${employeeBean.gender}'>
Male
&nbsp;&nbsp;&nbsp;&nbsp;
<input type='radio' id='female' name='gender' value='${employeeBean.gender}'>Female
<span id='genderErrorSection' style='color : red'></span>
</td>
</tr>
<tr>
<td>Indian ?</td>
<td><input type='checkbox' id='isIndian' name='isIndian' value='${employeeBean.isIndian}'>
</td>
</tr>
<td>Basic Salary</td>
<td>
<input type='text' style='text-align:right' name='basicSalary' id='basicSalary' maxlength='12' size='13' value='${employeeBean.basicSalary}'>
<span id='basicSalaryErrorSection' style='color:red'></span>
</td>
</tr>

<tr>
<tr>
<td>PAN Number</td>
<td>
<input type='text' id='panNumber' name='panNumber' maxlength='15' size='16' value='${employeeBean.PANNumber}'>
<span id='panNumberErrorSection' style='color : red'></span>
</td>
</tr>


<tr>
<td>Aadhar card Number</td>
<td>
<input type='text' id='aadharCardNumber' name='aadharCardNumber' maxlength='15' size='16' value='${employeeBean.aadharCardNumber}'>
<span id='aadharCardNumberErrorSection' style='color : red'></span>
</td>
</tr>

<td colspan='2'><button type='submit'>Add</button>
&nbsp;&nbsp;<button type='Button' onclick='cancelAddition()'>Cancel</button></td>
</table>
</form>
<form id='cancelAdditionForm' action='/styletwo/Employees.jsp'>
</form>

<jsp:include page='/MasterPageBottomSection.jsp' />