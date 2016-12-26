<html>
	<head>
    <title>Welcome To Feedback Database</title>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="customcss2.css"/>
    <asset:javascript src="angular.min.js"/> 
    <asset:javascript src="jquery.js"/> 
    <asset:javascript src="bootstrap.js"/>	

<style>
body{
	padding-top:40px;

}
h4{
     text-align:center;
     font-size:30px;
     color:#0faaaf;
     border-radius:30px;
     font-family:"Times New Roman";
     box-shadow:0 0 50px #999;
        border: 2px groove #800dff !important;
     		
}
.mg-responsive{
     border-radius:30px;
     font-family:"Times New Roman";
     box-shadow:0 0 50px #999;
     border: 2px groove #800dff !important;

}
.myTable{

	padding-top:100px;

}
.myDesign{
	
     width:100%;
     border-radius:10px;
     font-family:"Times New Roman";
     box-shadow:0 0 50px #6633CC;
     border: 2px groove #ffff00  !important;

}


</style>

</head>

<body  ng-app="feedbackDatabaseApp">
<div class="container">
<h4>Welcome To<br>Feedback Database</h4><br><br>
<fieldset class="myDesign">

<table class="myTable table-responsive"  align="center" border="0px">
<tr>
<td>
<div class="oneInp">
<g:link controller="feedback" action="index" style="color:#000000"><asset:image class="img-responsive" width="300px" height="300px" src="fb3.png"/></span></g:link>
</td>
<td>
<g:link controller="login" action="index" style="color:#000000"><asset:image class="img-responsive" width="300px" height="200px" src="login.png"/></g:link>
</td>
<td>
<g:link controller="register" action="index" style="color:#000000"><asset:image class="img-responsive" width="300px" height="300px" src="sup.png"/></g:link>
</td>
</tr>
<tr class="myStyle">
<td>
View Feedback
</td>
<td>
Login</td>
<td>
SignUp
</td>
</tr>
</table>
</fieldset>
</div>
