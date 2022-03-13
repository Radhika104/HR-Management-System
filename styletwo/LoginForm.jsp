<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<jsp:useBean id='administratorBean' scope='request' class='com.thinking.machines.hr.beans.AdministratorBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<!DOCTYPE HTML>
<html lang='en'>
<head>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
<script src='/styletwo/js/LoginForm.js'></script>
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
<div class='page-name'>Administrator</div>
<!--center-section starts here login form-->
<div class='center-section-loginForm'>
<span class='error'>
<jsp:getProperty name='errorBean' property='error'/>
</span>
<form method='post' action='/styletwo/Login.jsp' onsubmit='return validateForm(this)'>
<table>
<tr>
<td style='font-size : 17pt'>Username
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type='text' id='username' name='username' maxlength='15' size='15' value='${administratorBean.username}'>
<span id='UsernameErrorSection' class='error'></span><br>
</td>
</tr>
<tr><td><br></td></tr>
<tr>
<td style='font-size : 17pt'>Password
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td><input type='text' id='password' name='password' maxlength='15' size='15' value='${administratorBean.password}'>
<span id='passwordErrorSection' class='error'></span><br>
<br>
</td>
</tr>
<tr><td><br></td></tr>
<tr><td>
<button type='submit'>Login</button></td></tr>
</table>