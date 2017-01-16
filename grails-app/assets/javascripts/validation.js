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

