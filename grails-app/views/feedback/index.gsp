<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="http://www.freeiconspng.com/uploads/open-book-icon-free-books-and-education-13.png" type="image/gif" sizes="16x16">
    <title>Feedbacks</title>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="filterValidations.js" />
    <asset:javascript src="bootstrap.js"/>
    <asset:stylesheet src="customcss1.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="feedbackStyle.css" />
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css"/>
    <style type="text/css">
    	body{
		background-image:url('${resource(dir: "images/", file: "fbBg.jpg")}');
	    }
</style>
</head>
<body>
<nav class="navbar navbar-default" style="background-color:#996633">
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
		<li><g:link controller="login" action="index" style="color:#FFFFFF"><i class="fa fa-user-plus" aria-hidden="true"></i>
SignUp Here</g:link></li>
		<li><g:if test="${currentUser==null}"><g:link controller="login" action="index" style="color:#FFFFFF"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</g:link></li></g:if>
		<li><g:if test="${currentUser!=null}"><g:link controller="logout" action="index" style="color:#FFFFFF"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</g:link></g:if></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
<div class="container">
<div class="form-group col-xs-4 col-lg-3">
 <select class="form-control"  onChange="myListFunction()" id="mySelect">
  <option selected="true">Select to View Only</option>
  <option value="Java">Java</option>
  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Grails">Grails</option>
</select>
</div>
<p align="right">&nbsp;<input type="text" class="myInput" id="myInput" onkeyup="myFunction()" placeholder="Search for Course.." title="Type in a Course name"><i id= "filtersubmit" class="fa fa-2x fa-search" aria-hidden="true"></i></p>

    <table class="newcorners table table-responsive" id="myTable" align="center">
        <tr class="bg-success hidden-xs" align="center">
            <th>Course Name</th>
            <th>Institute Name</th>
            <th>Trainer Name</th>
            <th>Duration</th>
            <th>Total Fees</th>
            <th>Feedback</th>
            <th>Institute Rating(0-5)</th>
        </tr>
     </thead>
     <tr class="courseTitle"><td>C++</td></tr>
<g:each in="${fbCPP}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Name  <br></b></span>${fb.instituteName}</td>
            <td class="br"><span class="hidden-lg"><b>Trainer Name  <br></b></span>${fb.trainerName}</td>
            <td class="br"><span class="hidden-lg"><b>Course Duration  <br></b></span>${fb.courseDuration}</td>
            <td class="br"><span class="hidden-lg"><b>Total Fees  <br></b></span>${fb.totalFees}</td>
            <td class="br"><span class="hidden-lg"><b>User Feedback  <br></b></span>${fb.feedback}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Rating  <br></b></span><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>
     <tr class="courseTitle"><td>Java</td></tr>

<g:each in="${fbJava}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Name  <br></b></span>${fb.instituteName}</td>
            <td class="br"><span class="hidden-lg"><b>Trainer Name  <br></b></span>${fb.trainerName}</td>
            <td class="br"><span class="hidden-lg"><b>Course Duration  <br></b></span>${fb.courseDuration}</td>
            <td class="br"><span class="hidden-lg"><b>Total Fees  <br></b></span>${fb.totalFees}</td>
            <td class="br"><span class="hidden-lg"><b>User Feedback  <br></b></span>${fb.feedback}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Rating  <br></b></span><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>
     <tr class="courseTitle"><td>Python</td></tr>

<g:each in="${fbPython}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Name  <br></b></span>${fb.instituteName}</td>
            <td class="br"><span class="hidden-lg"><b>Trainer Name  <br></b></span>${fb.trainerName}</td>
            <td class="br"><span class="hidden-lg"><b>Course Duration  <br></b></span>${fb.courseDuration}</td>
            <td class="br"><span class="hidden-lg"><b>Total Fees  <br></b></span>${fb.totalFees}</td>
            <td class="br"><span class="hidden-lg"><b>User Feedback  <br></b></span>${fb.feedback}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Rating  <br></b></span><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>
     <tr class="courseTitle"><td>Grails</td></tr>

<g:each in="${fbGrails}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Name  <br></b></span>${fb.instituteName}</td>
            <td class="br"><span class="hidden-lg"><b>Trainer Name  <br></b></span>${fb.trainerName}</td>
            <td class="br"><span class="hidden-lg"><b>Course Duration  <br></b></span>${fb.courseDuration}</td>
            <td class="br"><span class="hidden-lg"><b>Total Fees  <br></b></span>${fb.totalFees}</td>
            <td class="br"><span class="hidden-lg"><b>User Feedback  <br></b></span>${fb.feedback}</td>
            <td class="br"><span class="hidden-lg"><b>Institute Rating  <br></b></span><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>
<tbody>

    </table>
</div>
</body>
</html>
