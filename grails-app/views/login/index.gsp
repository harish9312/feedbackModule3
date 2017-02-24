<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="http://www.freeiconspng.com/uploads/open-book-icon-free-books-and-education-13.png" type="image/gif" sizes="16x16">
	<title>Welcome To Feedback Database</title>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <asset:stylesheet src="font-awesome/css/font-awesome.css"/>
        <asset:stylesheet src="myHomeStyle.css" />
        <asset:stylesheet src="customcss2.css"/>
        <asset:javascript src="validation.js"/>

    <style type="text/css">
    	body{
		color: #FFFFFF;
		background-image:url('${resource(dir: "images/", file: "bg.jpg")}');
        }
    </style>


    <g:javascript>
    </g:javascript>
</head>
<body onLoad="hideForm();">
<div class="container">
<hr>
<h2>Welcome To Feedback Database</h2>
<hr>
		<table border="0px" align="center" width="90%">
		<tr>
		<td>
		<div id="loginForm">
		<fieldset class="scheduler-border">
        		<h3>Login</h3>
        		<hr>
 			<g:if test='${params.checkUser}'>
        		<div class="alert alert-success">
                  <strong><i class="fa fa-check" aria-hidden="true"></i>Congrats</strong> your account has been created..!!
                  <br>Please Login to continue..!!
                </div>
             </g:if>

	<g:if test='${params.loginCheck}'>
	       	<div class="alert alert-danger">
	        <strong><i class="fa fa-close" aria-hidden="true"></i>Ooopps..!!</strong> please login again..!!
             </div>
</g:if>
	<g:if test='${params.msg}'>
	       	<div class="alert alert-danger">
	        <strong><i class="fa fa-close" aria-hidden="true"></i>${params.msg}</strong>
             </div>
		</g:if>
        <form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">
		<table border="0px" align="center" class="myTable" width="80%">
			<tr>
			<td><i class="fa fa-2x fa-user-o" align="right" aria-hidden="true"></td><td><g:textField type="text" placeholder="Enter Your Username" name="username" class="form-control" /></td>
			</tr>
			<tr>
			<td><i class="fa fa-2x fa-lock" align="right" aria-hidden="true"></td><td><g:field type="password" placeholder="Enter Your Password" name="password" class="form-control" /></td>
			</tr>
			<tr>
			<td>
			</td>
			<td>
			<input type="submit" name="" value="Login" class="btn btn-success btn-lg">
			</td>
			</tr>
		</table>
		</form>
			<p align="center" style="font-size: 20px; font-family: 'Times New Roman';">OR</p>
<center>
    <oauth:connect provider="facebook" id="facebook-connect-link">
        <asset:image class="img-responsive fbConnect" width="300px" height="20px" src="fblogin.png"/>
    </oauth:connect>
</center>

 	</fieldset>
 	<p align="center" style="font-size: 20px; font-color:#ffffff; font-family: 'Times New Roman';">Not a member yet?..<a  style="cursor:pointer;" onclick=showHide(1);>SignUp</a></p>
</div>
</td>
<td>
<div id="signupForm">
<fieldset class="scheduler-border">
		<h3>SignUp  </h3>
		<hr>

<g:form name="myForm" controller="register"  action="addUser">
		<table border="0px" align="center" class="myTable" width="80%">
			<tr>
			<td><i class="fa fa-2x fa-user-o" align="right" aria-hidden="true"></td><td><g:textField placeholder="Enter Your Username" name="userName" class="form-control" /></td>
			</tr>
			<tr>
            <td><i class="fa fa-2x fa-user-circle-o" align="right" aria-hidden="true"></td><td><g:textField placeholder="Enter Your Full Name" name="fullName" class="form-control" /></td>
            </tr>
			<tr>
			<td><i class="fa fa-2x fa-lock" align="right" aria-hidden="true"></td><td><g:field type="password" name="password" placeholder="Enter Your Password" id="newPassword" class="form-control" /></td>
			</tr>
			<tr>
			<td><i class="fa fa-2x fa-lock" align="right" aria-hidden="true"></td><td><g:field id="confirmPassword"  onChange="checkPasswordMatch();" required="true" class="form-control" type="password" name="confirmPassword" placeholder="Enter Your Password Again" value="${userInstance?.password}"/>
            <span id="checkPassword"></span></td>
            </tr>
			<tr>
			<td>
			</td>
			<td>
<g:submitButton onclick="return validatePasswordField()" class="btn btn-lg btn-success" name="register"  value="Register" />			</td>
			</tr>
		</table>
 	</fieldset>
 	</g:form>
 	 	<p align="center" style="font-size: 20px; font-color:#ffffff; font-family: 'Times New Roman';">Back to Login Form<a  style="cursor:pointer;" onclick=showLogin();>...Login</a></p>

</td>
<td>
    <div class="hidden-xs">
		<fieldset class="scheduler-border">
		<p class="myHeader">New To The Feedback Database Want to see previously added feedbacks..??..</p>
		<br>
		<h4><g:link controller="feedback" action="index">View Feedbacks</g:link>
        </fieldset>
    </div>
</td>
</tr>
</table>
    <div class="hidden-lg">
		<fieldset class="scheduler-border">
		<p class="myHeader">New To The Feedback Database Want to see previously added feedbacks..??..</p>
		<br>
		<h4><g:link controller="feedback" action="index">View Feedbacks</g:link>
        </fieldset>
    </div>

    </body>
</html>