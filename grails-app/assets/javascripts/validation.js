//validation for courseName
function validateInput() {
    var x = document.forms["feedbackForm"]["courseName"].value;
    if (x == null || x == "") {
        alert("Course Name Must Be Added");
        return false;
    }
}


function confirmDelete(){
  var x = confirm("Do You Really Want To \nDelete Your Feedback..??");
  if(x==true){
  return true;
  }
  else{
  return false;
  }
}

function countCharacters(){
    var len = document.getElementById('check').value.length;
       document.getElementById('para').innerHTML=1000-len+" Characters Left";
       if( len>=1000){
       alert("Sorry..!!\nCharacter Limit Over");
       return false;
       }
}
$(document).ready(function () {
   $("#check").keyup(countCharacters);
});


    function countCharacter(){
        var len = document.getElementById('check').value.length;
           if( len>=1000){
           alert("Sorry..!!\nCharacter Limit Over");
           return false;
           }
    }

    $(document).ready(function () {
                     $("#check").keyup(countCharacters);
                  });


function validatePasswordField(){
    x=document.myForm
    input=x.password.value
    if (input.length<8){
        alert("Password is Too Short \n It Must Contain More Than 8 Characters")
        return false
    }else {
        return true
    }
}

function checkPasswordMatch() {
    var password = document.getElementById('newPassword').value
    var confirmPassword = document.getElementById('confirmPassword').value

    var str1 = "Password Do Not Match";
    var msg1 = str1.fontcolor('red');
    var str2 = "Password Matched";
    var msg2 = str2.fontcolor('green');

    if (password != confirmPassword)
       document.getElementById('checkPassword').innerHTML=msg1;

    else
       document.getElementById('checkPassword').innerHTML=msg2;
}
//jQuery to call onChange Function
$(document).ready(function () {
   $("#confirmPassword").keyup(checkPasswordMatch);
});
