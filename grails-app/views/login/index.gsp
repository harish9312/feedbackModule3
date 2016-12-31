<!DOCTYPE html>
<html>
	<head>
    <title>Login To FeedBack Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:stylesheet src="loginDesign.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>

</head>

<body  ng-app="feedbackDatabaseApp">

<nav class="navbar navbar-default" style="background-color:#CC33CC">
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

    <li><g:link controller="register" action="index" style="color:#FFFFFF">SignUp Here</g:link></li>
		<li><g:link controller="feedback" action="index" style="color:#FFFFFF">View Feedback</g:link></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<center>
	<g:if test='${flash.message}'>
			<div class="login_message">${flash.message}</div>
		</g:if>
<form action="${postUrl ?: '/login/authenticate'}" method="POST" id="loginForm" class="cssform" autocomplete="off">

<table align="center" width="50%">
<tr><td>
<fieldset class="newborder">
<h2 align="center">Login To Feedback Database</h2>
<br>
<g:if test="${params.msg!=null}"><div class="getFloat"><p class="myAlert">${params.msg}</p></div></g:if>
<br>
<table align="center" width="270px">
<tr align="center"><td><label>Username</label>
<g:textField required="true" class="form-control" name="${usernameParameter ?: 'username'}" id="username" placeholder="Enter Your Username" value="${userInstance?.userName}"/></td></tr>
<tr align="center"><td><label>Password</label>
<g:field required="true" class="form-control" type="password" name="${passwordParameter ?: 'password'}" id="password" placeholder="Enter Your Password" value="${userInstance?.password}"/>
</td></tr>
<tr align="center"><td>
<g:submitButton class="btn btn-lg btn-success btn-block" id="submit" name="login"  value="Login" />
</td></tr>
		</form>
</table>
<h6>OR</h6>
<oauth:connect provider="facebook" id="facebook-connect-link">
<button class="loginBtn loginBtn--facebook">
SignIn With Facebook
</button></oauth:connect>

</div>
<center>
</body>
</html>