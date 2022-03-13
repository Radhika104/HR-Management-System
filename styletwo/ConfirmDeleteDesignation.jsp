<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<script src='/styletwo/js/DesignationDeleteForm.js'></script>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!-- Main Container starts here-->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<img src='/styletwo/images/logo.png' class='logo'>
<div class='brand-name'>Thinking Machines</div>
</div><!--header ends here-->
<!--content-section starts here-->
<div class='content'>
<!--left panel starts here -->
<div class='content-left-panel'>
<b>Designation</b><br>
<a href='/styletwo/Employees.jsp'>Employee</a><br><br>
<a href='/styletwo/index.html'>Home</a>
</div>
<!-- left panel ends here-->
<!-- reight panel starts here-->
<div class='content-right-panel'>
<h2>Designation (Delete Module)</h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form action='/styletwo/DeleteDesignation.jsp' onsubmit='return validateForm(this)'>
Delete ${designationBean.title} ? <br>
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<button type='submit'>Delete</button>
<button type='Button' onclick='cancelDeletion()'>Cancel</button>
</form>
</div>
<!--right panel ends here-->
</div><!--content -section ends here-->
<!--footer starts here-->
<div class='footer'>
&copy; Thinking Machines 2020
</div>
<!--footer ends here-->
</div><!-- main container ends here-->
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'>
</form>
</body>
</html>