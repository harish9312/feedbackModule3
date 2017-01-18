<!DOCTYPE html>
<html>
	<head>
    <title>Register To FeedBack Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="validation.js"/>
    <asset:javascript src="bootstrap.js"/>

</head>

<body  ng-app="feedbackDatabaseApp">
<nav class="navbar navbar-default" style="background-color:#9900CC">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a href="../" class="navbar-brand" style="color:#FFFFFF" font-size="10">
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">

<ul class="nav navbar-nav navbar-right" >

		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li>
<li><g:link controller="login" action="index" style="color:#FFFFFF">Login</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<g:form name="myForm" controller="register"  action="addUser">

    <table align="center" width="50%">
        <tr><td>
            <fieldset class="newborder">
                    <h2 align="center">SignUp To Feedback Database</h2>
                        <g:if test="${flash.errmsg}"><p class="alert alert-danger">${flash.errmsg}</g:if></p><br>
                            <table align="center" width="270px">
                                <tr><td><i class="fa fa-2x fa-user-o" aria-hidden="true"></td><td><g:textField required="true" class="form-control" name="userName" placeholder="Enter Your Username" value="${userInstance?.userName}"/></td></tr>
                                <tr><td><i class="fa fa-2x fa-user-circle-o" aria-hidden="true"></td><td><g:textField required="true" class="form-control" name="fullName" placeholder="Enter Your Name" value="${userInstance?.userName}"/></td></tr>
                                <tr><td><i class="fa fa-2x fa-lock" aria-hidden="true"></td><td><g:field id="newPassword" required="true" class="form-control" type="password" name="password" placeholder="Enter Your Password" value="${userInstance?.password}"/></td></tr>
                                <tr><td><i class="fa fa-2x fa-lock" aria-hidden="true"></td><td><g:field id="confirmPassword"  onChange="checkPasswordMatch();" required="true" class="form-control" type="password" name="confirmPassword" placeholder="Enter Your Password Again" value="${userInstance?.password}"/>
                                        <span id="checkPassword"></span></td></tr>
                                <tr align="center"><td></td><td><g:submitButton onclick="return validatePasswordField()" class="btn btn-lg btn-success-singup btn-block" name="register"  value="Register Now" /></td></tr>
        </tr></td>
    </table>
</g:form>
</body>
</html>
