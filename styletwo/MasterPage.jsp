<%@taglib uri='/WEB-INF/tmtags/' prefix='tm' %>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<body>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/style.css'>
</head>
<body>
<!--Main container starts here-->
<div class='main-container'>
<!-- header starts here-->
<div class='header'>
<img src='/styletwo/images/logo.png' class='logo'>
<div class='brand-name'>Thinking Machines</div>
</div><!--header ends here-->
<!--content - section starts here-->
<div class='content-left-panel'>
<tm:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</tm:If>
<tm:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</tm:If>
<tm:If condition='${module==EMPLOYEE}'>
<b>Employees</b><br>
</tm:If>