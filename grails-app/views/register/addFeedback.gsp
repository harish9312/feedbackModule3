<!DOCTYPE html>
<html>
	<head>
    <title>Add New Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/> 
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>
<g:javascript>

    function countCharacters(){
        var len = document.getElementById('check').value.length;
           if( len>=1000){
           alert("Sorry..!!\nCharacter Limit Over");
           return false;
           }
    }

    $(document).ready(function () {
                     $("#check").keyup(countCharacters);
                  });
</g:javascript>

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
            <a href="../" class="navbar-brand" style="color:#FFFFFF" font-size="10" href="#">
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="logout" action="index" style="color:#FFFFFF">Logout</g:link></li> 
		<li><g:link controller="addFeedback" action="index" style="color:#FFFFFF">Add Feedback</g:link></li> 
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>

<font size="3">
<g:form controller="register" action="saveFeedback">
<table align="center" width="70%">
<tr><td>
<fieldset class="newborder">
<h2 align="center">Add Your Feedback</h2>
<br>
<table  align="center" class="col-lg-11">
<p hidden="true">User Name:      <g:textField required="true" class="form-control"  name="userName" value="${loggedUser.username}"/></p>
<tr><td>Course Name:</td><td>      <g:textField required="true" class="form-control" name="courseName"/></td></tr>
<tr><td>Institute Name:</td><td>   <g:textField required="true" class="form-control"  name="instituteName" /></td></tr>
<tr><td>Trainer Name:</td><td>     <g:textField required="true" class="form-control"  name="trainerName" /></td></tr>
<tr><td>Course Duration:</td><td>  <g:textField required="true" class="form-control"  name="courseDuration" /></td></tr>
<tr><td>Total Fees:</td><td>       <g:textField required="true" class="form-control"  name="totalFees" /></td></tr>
<tr><td>Feedback:  </td><td>       <g:textArea id="check" onChange="countCharacters();"required="true" class="form-control" ng-model="text" ng-trim="false" maxlength="1000" name="feedback" /><p align="right">{{1000-text.length+" Characters Left"}}</p></td><tr>
<tr><td></td><td><g:submitButton name="login" class="btn btn-lg btn-success-singup btn-block" value="Add Feedback" /></td></tr>
</div>
</div>
</div>
</fieldset>
</td></tr>
</table>
</g:form>
<br><br
</body>
<script>
angular.module("feedbackDatabaseApp",[])
</script>
</html>
