<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="http://www.freeiconspng.com/uploads/open-book-icon-free-books-and-education-13.png" type="image/gif" sizes="16x16">
    <title>Feedbacks</title>
    <asset:javascript src="angular.min.js"/>
    <asset:javascript src="jquery.js"/>
    <asset:javascript src="filterValidations.js" />
    <asset:javascript src="bootstrap.js"/>
    <asset:javascript src="filterData.js" />
    <asset:javascript src="bootstrap-select.js" />
    <asser:stylesheet src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
    <asset:stylesheet src="customcss1.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="feedbackStyle.css" />
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css"/>
    <asset:stylesheet src="bootstrap-select.css" />
    <style type="text/css">
    	body{
		background-image:url('${resource(dir: "images/", file: "fbBg.jpg")}');
	    }
        .newTable{
        font-family:'comic sans ms';"
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
<table class="hidden-xs newTable">
<tr>
    <td>
<select class="selectpicker" onChange="filterFunction()" id="mySelectForSort">

	<option selected="true">Sort By</option>
	<option data-divider="true" value="lowToHigh">Price Low To High</option>
    <option value="lowToHigh">Price Low To High</option>
    <option value="highToLow">Price High To Low</option>
	<option value="ratingLowToHigh">Ratings Low To High</option>
    <option value="ratingHighToLow">Ratings High To Low</option>

</select>
</td>

    <td>&nbsp;</td>


<td>
 <select class="form-control selectpicker"  onChange="myListFunction()" id="mySelect">
  <option  selected="true">Select to View Only</option>
  <option data-divider="true"></option>
  <option value="Java">Java</option>

  <option value="C++">C++</option>
  <option value="Python">Python</option>
  <option value="Grails">Grails</option>
</select>
    </td>

</tr>
</table>
</div>

<p align="right">&nbsp;<input type="text" class="myInput" id="myInput" onkeyup="myFunction()" placeholder="Search for Course.." title="Type in a Course name"><i id= "filtersubmit" class="fa fa-2x fa-search" aria-hidden="true"></i></p>
<div class="hidden-xs">
    <table class="newcorners table table-responsive" id="myTable" align="center">
     <thead>
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
<g:each in="${fbCPP}" var="fb" status="i">
  <br>
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br">${fb.instituteName}</td>
            <td class="br">${fb.trainerName}</td>
            <td class="br">${fb.courseDuration}</td>
            <td class="br">${fb.totalFees}</td>
            <td class="br">${fb.feedback}</td>
            <td class="br"><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>

<g:each in="${fbJava}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br">${fb.instituteName}</td>
            <td class="br">${fb.trainerName}</td>
            <td class="br">${fb.courseDuration}</td>
            <td class="br">${fb.totalFees}</td>
            <td class="br">${fb.feedback}</td>
            <td class="br"><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>

<g:each in="${fbPython}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br">${fb.instituteName}</td>
            <td class="br">${fb.trainerName}</td>
            <td class="br">${fb.courseDuration}</td>
            <td class="br">${fb.totalFees}</td>
            <td class="br">${fb.feedback}</td>
            <td class="br"><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>

<g:each in="${fbGrails}" var="fb" status="i">
     <tbody>
        <tr class="table table-hover">
            <td align="center" style="font-family:'Comic Sans MS';font-weight:italic;">${fb.courseName}</td>
            <td class="br">${fb.instituteName}</td>
            <td class="br">${fb.trainerName}</td>
            <td class="br">${fb.courseDuration}</td>
            <td class="br">${fb.totalFees}</td>
            <td class="br">${fb.feedback}</td>
            <td class="br"><b style="font-size: 25px;">${fb.rating}.0</b></td>
        </tr>
     </tbody>
</g:each>
<tbody>
</table>
</div>

<table class="newcorners table table-responsive hidden-lg" id="myTable" align="center">
<g:each in="${fbCPP}" var="fb" status="i">
  <br>
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
