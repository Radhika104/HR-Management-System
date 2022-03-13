<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Guard>
<jsp:forward page='/LoginForm.jsp' />
</tm:Guard>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!-- Main Container starts here-->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<table>
<tr>
<td><img src='/styletwo/images/logo.png' class='logo'></td>
<td><div class='brand-name'>Thinking Machines</div></td>
<td><img src='/styletwo/images/admin.png' class='admin-logo'></td>
<td><div class='username'>${username}</div></td>
<td><div class='logout'><a href='/styletwo/logout'>Logout</a></td></div>
<tr>
</table>
</div>
<!--header ends here-->
<!--content-section starts here-->
<div class='content'>
<!--left panel starts here -->
<div class='content-left-panel'>

<tm:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</tm:If>
<tm:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</tm:If>

<tm:If condition='${module==EMPLOYEE}'>
<b>Employee</b><br>
</tm:If>
<tm:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employees</a><br>
</tm:If>

<tm:If condition='${module!=HOME}'>
<br>
<a href='/styletwo/index.jsp'>Home</a><br>
</tm:If>

</div>
<!-- left panel ends here-->
<!-- reight panel starts here-->
<div class='content-right-panel'>
