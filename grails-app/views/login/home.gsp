<!DOCTYPE html>
<html>
	<head>
    <title>Welcome</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="validation.js"/>
<style>

.myStyle{
width:1000px;

}
.myHead{
font-weight:bold;
font-size:15px;
text-align: justify;
text-justify: inter-word;
align-content:center;
}
.myData{
font-weight:italic;
font-size:15px;
text-align: justify;
text-justify: inter-word;
align-content:left;
}
</style>
</head>

<body  ng-app="feedbackDatabaseApp">

<nav class="navbar navbar-default" style="background-color:#CC33CC">
<div class="container-fluid">
  <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
                  <span style="color:#000000;" class="icon-bar"></span>
                  <span style="color:#000000;" class="icon-bar"></span>
                  <span style="color:#000000;" class="icon-bar"></span>

            </button>

<a href="../" class="navbar-brand" style="color:#FFFFFF" font-size="10">
    Feedback Database
</a>
</div>
<div id="navbar" class="navbar-collapse collapse">

<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="login" action="deleteFeedback" onclick="return confirmDelete()" style="color:#FFFFFF">Delete Your Feedback</g:link></li>
		<li><g:link method="POST" controller="logout" action="index" style="color:#FFFFFF">Logout</g:link></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<div class="container">
    <table align="center" width="100%">
        <tr><td>
                <fieldset class="newborder">
                <div class="hidden-xs">
                    <h2 align="center"><u>Here is your feedback..!!</u></h2><br>
                    <table align="center" style='width:80%;table-layout:fixed;' border="0em">
                        <tr><td class="myHead">Course Title ::</td><td class="myData">${sendData.courseName}</td></tr>
                        <tr><td class="myHead">Institute Name ::</td><td class="myData">${sendData.instituteName}</td></tr>
                        <tr><td class="myHead">Trainer Name ::</td><td class="myData">${sendData.trainerName}</td></tr>
                        <tr><td class="myHead">Course Duration ::</td><td class="myData">${sendData.courseDuration}</td></tr>
                        <tr><td class="myHead">Total Fees ::</td><td class="myData">${sendData.totalFees}</td></tr>
                        <tr><td class="myHead">Feedback ::</td><td class="myData">${sendData.feedback}</td></tr>
                   </table>
                </div>
</div>
                 <div class="visible-xs">
                    <h4 align="center"><u>Here is your feedback..!!</u></h4><br>
                        <table align="center" width="100%">
                            <tr><td class="myHead">Course Title</td></tr>
                            <tr><td class="myData">${sendData.courseName}</td></tr>
                            <tr><td class="myHead">Institute Name</td></tr>
                            <tr><td class="myData">${sendData.instituteName}</td></tr>
                            <tr><td class="myHead">Trainer Name</td></tr>
                            <tr><td class="myData">${sendData.trainerName}</td></tr>
                            <tr><td class="myHead">Course Duration</td></tr>
                            <tr><td class="myData">${sendData.courseDuration}</td></tr>
                            <tr><td class="myHead">Total Fees</td></tr>
                            <tr><td class="myData">${sendData.totalFees}</td></tr>
                            <tr><td class="myHead">Feedback</td></tr>
                            <tr><td class="myData">${sendData.feedback}</td></tr>
                        </table>
                  </div>
            </fieldset>
        </td></tr>
        <tr><td><g:link method="POST" controller="login" action="update" style="color:#00000"><button type="button" class="btn btn-lg btn-success">Edit Your Feedback</button></g:link>
</td></tr>
    </table>
</div>
</body>
<script>
angular.module("feedbackDatabaseApp",[])
</script>
</html>

