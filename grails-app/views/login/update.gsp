<!DOCTYPE html>
<html>
	<head>
    <link rel="icon" href="http://www.freeiconspng.com/uploads/open-book-icon-free-books-and-education-13.png" type="image/gif" sizes="16x16">
    <title>Update Your Feedback</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="tableStyle.css"/>
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css" />
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/> 
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="validation.js"/>


<style>
	body{
		color: #FFFFFF;
	    background-image:url('${resource(dir: "images/", file: "addBg.jpg")}');
}
</style>
</head>

<body  ng-app="feedbackDatabaseApp">

<nav class="navbar navbar-default navbar-fixed-top" style="background-color:#996633">
<div class="container-fluid">
  <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
<a class="navbar-brand" style="color:#FFFFFF" href="../"><i class="fa  fa-home" aria-hidden="true"></i>
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
        <li><g:link controller="login" action="deleteFeedback" onclick="return confirmDelete()" style="color:#FFFFFF"><i class="fa fa-remove" aria-hidden="true"></i> Delete Your Feedback</g:link></li>
        <li><g:link method="POST" controller="logout" action="index" style="color:#FFFFFF"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</g:link></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

</div>
<div class="myField">
<g:form  controller="login" action="updateData">
        <tr><td>
            <fieldset class="newborder">
                <h2 align="center">Edit Your Feedback</h2><br>

                        <table class="col-lg-11">
                            <tr><td>Course Name:</td>      
                                <td style="color: black;">      
                                <select class="form-control" name="courseName">
                                    <option value="Java">Java</option>
                                    <option value="C++">C++</option>
                                    <option value="Grails">Grails</option>
                                    <option value="Python">Python</option> 
                                </select>
                            </td></tr>
                            <tr><td>Institute Name:</td><td>   <g:textField required="true" value="${sendData.instituteName}"  class="form-control"  name="instituteName" /></td></tr>
                            <tr><td>Trainer Name:</td><td>     <g:textField required="true" value="${sendData.trainerName}" class="form-control"  name="trainerName" /></td></tr>
                            <tr><td>Course Duration:</td><td>  <g:textField required="true"  value="${sendData.courseDuration}" class="form-control"  name="courseDuration" /></td></tr>
                            <tr><td>Total Fees:</td><td>       <input type="number" required="true" class="form-control" value="${sendData.totalFees}" name="totalFees" /></td></tr>
                                               <tr><td>Rating of Institute</td>
                                               <td style="color: black;">
                                               <select class="form-control" name="rating">
                                                           <option selected="true">${sendData.rating}</option>
                                                           <option value="0">0</option>
                                                           <option value="1">1</option>
                                                           <option value="2">2</option>
                                                           <option value="3">3</option>
                                                           <option value="4">4</option>
                                                           <option value="5">5</option>
                                               </select>
                                               </td></tr>
                                               <tr><td>Feedback: </td>
                                               <td><g:textArea id="check" value="${sendData.feedback}" onChange="countCharacter();" required="true"  class="form-control" name="fb" /></td></tr>
                                                <tr>
                                                <td></td>
                                                <td><p id="para" align="right" style="font-size: 15px;">{{1000-text.length+" Characters Left"}}</p></td><tr>
                        <tr><td></td><td><g:submitButton name="addFeedback" class="btn btn-lg btn-success btn-block" value="Update Feedback" /></td></tr>
            </fieldset>
        </td></tr>
    </table>
</g:form>
</div>
<br><br
</body>
<script>
angular.module("feedbackDatabaseApp",[])
</script>
</html>
