
function filterFunction() {
  var input, tdValue, table, tr, td, i, tableLength,highest;
    input = document.getElementById("mySelectForSort");
  	table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    tableLength = tr.length;
  	var inputValue = input.value;
  	    bubbleSort(table , tr, inputValue);
  }

function bubbleSort(table,tr, inputValue){
	var table =table;
	var tr = tr;
	var inputValue = inputValue
	var tdValue,i=0,td,j;
	var courseName, instRating, instName, totFee, dur, fb, trainerName;
	var priceValue;
	var cutRating, cutRating1;
    var rating1, rating;
    var fee1, fee;
	var trValue, trValue1;
    tableLength = tr.length;

    for(i = 0 ; i < tableLength; i++){
  		for(j = 2; j < (tableLength-i); j++){
  			if(inputValue === "lowToHigh" || inputValue == "highToLow")
  			{
		  			fee = tr[j-1].getElementsByTagName("td")[4].innerHTML;
                    trValue = parseInt(fee);


		  			fee1 = tr[j].getElementsByTagName("td")[4].innerHTML;
                    trValue1 = parseInt(fee1);

    		}

 			if(inputValue === "ratingLowToHigh" || inputValue === "ratingHighToLow")
 			{
 			        rating = tr[j-1].getElementsByTagName("td")[6].innerHTML;
 					trValue = rating;
                    rating1 = tr[j].getElementsByTagName("td")[6].innerHTML;
		  			trValue1 = rating1;
    		}



  			if(inputValue === 'lowToHigh' || inputValue === "ratingLowToHigh" )
  			{

					if(trValue1 < trValue)
					{	  				
                    	courseName = tr[j-1].getElementsByTagName("td")[0].innerHTML;
						instName   = tr[j-1].getElementsByTagName("td")[1].innerHTML;
						trainerName = tr[j-1].getElementsByTagName("td")[2].innerHTML;
                        dur         = tr[j-1].getElementsByTagName("td")[3].innerHTML;
                        totFee      = tr[j-1].getElementsByTagName("td")[4].innerHTML;
                        fb      = tr[j-1].getElementsByTagName("td")[5].innerHTML;
                        instRating      = tr[j-1].getElementsByTagName("td")[6].innerHTML;

						tr[j-1].getElementsByTagName("td")[0].innerHTML = tr[j].getElementsByTagName("td")[0].innerHTML
						tr[j-1].getElementsByTagName("td")[1].innerHTML = tr[j].getElementsByTagName("td")[1].innerHTML
						tr[j-1].getElementsByTagName("td")[2].innerHTML = tr[j].getElementsByTagName("td")[2].innerHTML;
						tr[j-1].getElementsByTagName("td")[3].innerHTML = tr[j].getElementsByTagName("td")[3].innerHTML;
                        tr[j-1].getElementsByTagName("td")[4].innerHTML = tr[j].getElementsByTagName("td")[4].innerHTML;
                       	tr[j-1].getElementsByTagName("td")[5].innerHTML = tr[j].getElementsByTagName("td")[5].innerHTML;
                        tr[j-1].getElementsByTagName("td")[6].innerHTML = tr[j].getElementsByTagName("td")[6].innerHTML;

						tr[j].getElementsByTagName("td")[0].innerHTML = courseName;
						tr[j].getElementsByTagName("td")[1].innerHTML = instName;
						tr[j].getElementsByTagName("td")[2].innerHTML = trainerName;
						tr[j].getElementsByTagName("td")[3].innerHTML = dur;
                        tr[j].getElementsByTagName("td")[4].innerHTML = totFee;
                        tr[j].getElementsByTagName("td")[5].innerHTML = fb;
                        tr[j].getElementsByTagName("td")[6].innerHTML = instRating;

					}
			}
			if(inputValue === 'highToLow' || inputValue === "ratingHighToLow")
			{			if(trValue1 > trValue)
			  			{	  				

                    	courseName = tr[j-1].getElementsByTagName("td")[0].innerHTML;
						instName   = tr[j-1].getElementsByTagName("td")[1].innerHTML;
						trainerName = tr[j-1].getElementsByTagName("td")[2].innerHTML;
                        dur         = tr[j-1].getElementsByTagName("td")[3].innerHTML;
                        totFee      = tr[j-1].getElementsByTagName("td")[4].innerHTML;
                        fb      = tr[j-1].getElementsByTagName("td")[5].innerHTML;
                        instRating      = tr[j-1].getElementsByTagName("td")[6].innerHTML;

						tr[j-1].getElementsByTagName("td")[0].innerHTML = tr[j].getElementsByTagName("td")[0].innerHTML
						tr[j-1].getElementsByTagName("td")[1].innerHTML = tr[j].getElementsByTagName("td")[1].innerHTML
						tr[j-1].getElementsByTagName("td")[2].innerHTML = tr[j].getElementsByTagName("td")[2].innerHTML;
						tr[j-1].getElementsByTagName("td")[3].innerHTML = tr[j].getElementsByTagName("td")[3].innerHTML;
                        tr[j-1].getElementsByTagName("td")[4].innerHTML = tr[j].getElementsByTagName("td")[4].innerHTML;
                       	tr[j-1].getElementsByTagName("td")[5].innerHTML = tr[j].getElementsByTagName("td")[5].innerHTML;
                        tr[j-1].getElementsByTagName("td")[6].innerHTML = tr[j].getElementsByTagName("td")[6].innerHTML;

						tr[j].getElementsByTagName("td")[0].innerHTML = courseName;
						tr[j].getElementsByTagName("td")[1].innerHTML = instName;
						tr[j].getElementsByTagName("td")[2].innerHTML = trainerName;
						tr[j].getElementsByTagName("td")[3].innerHTML = dur;
                        tr[j].getElementsByTagName("td")[4].innerHTML = totFee;
                        tr[j].getElementsByTagName("td")[5].innerHTML = fb;
                        tr[j].getElementsByTagName("td")[6].innerHTML = instRating;
			  				 
			  		    }
			}
  		}// for j
  	}//for i
  }//function
