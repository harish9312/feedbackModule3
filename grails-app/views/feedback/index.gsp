<!DOCTYPE html>
<html>
<head>
    <title>Feedbacks</title>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>
    <asset:stylesheet src="customcss1.css"/>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>
<nav class="navbar navbar-default" style="background-color:#0000CD">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="color:#FFFFFF" href="../">
Feedback Database</a>
</div>
<div id="navbar" class="navbar-collapse collapse">          
            
<ul class="nav navbar-nav navbar-right" >
		<li><g:link controller="register" action="index" style="color:#FFFFFF">SignUp Here</g:link></li> 
		<li><g:if test="${currentUser==null}"><g:link controller="login" action="index" style="color:#FFFFFF">Login</g:link></li></g:if>
		<li><g:if test="${currentUser!=null}"><g:link controller="logout" action="index" style="color:#FFFFFF">Logout</g:link></g:if></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

<div class="container hidden-xs">
    <table class="newcorners table table-hover table-responsive" align="center">
        <tr class="bg-success" align="center">
            <th>Sr. No</th>
            <th>Course Name</th>
            <th>Institute Name</th>
            <th>Trainer Name</th>
            <th>Duration</th>
            <th>Total Fees</th>
            <th>Feedback</th>
        </tr>
     </thead>
<g:each in="${feedbacks}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td>${fb.id}</td>
            <td style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td>${fb.instituteName}</td>
            <td>${fb.trainerName}</td>
            <td>${fb.courseDuration}</td>
            <td>${fb.totalFees}</td>
            <td>${fb.feedback}</td>
        </tr>
     </tbody>
</g:each>
    </table>
</div>

<div class="visible-xs myStyle1">
<g:each in="${feedbacks}" var="fb" status="i">
<table  class align="center" width="90%" border="4px">

                           <tr><td class="myHead myStyle">Course Title:</td></tr>
                            <tr><td class="myData">${fb.courseName}</td></tr>
                            <tr><td class="myHead">Institute Name:</td></tr>
                            <tr><td class="myData">${fb.instituteName}</td></tr>
                            <tr><td class="myHead">Trainer Name:</td></tr>
                            <tr><td class="myData">${fb.trainerName}</td></tr>
                            <tr><td class="myHead">Course Duration:</td></tr>
                            <tr><td class="myData">${fb.courseDuration}</td></tr>
                            <tr><td class="myHead">Total Fees:</td></tr>
                            <tr><td class="myData">${fb.totalFees}</td></tr>
                            <tr><td class="myHead">Feedback:</td></tr>
                            <tr><td class="myData myStyle1">${fb.feedback}</td></tr>
 
            <br>
               </div>
     </table>
</g:each>

</div>
</body>
</html>
