/*
* Author: Thomas Canham
* Assignment: WE4.0 Server-side Web Development, Digital Skills Academy
* Student ID: D15126979
* Date : 2016/07/30
* Ref: n/a
*/
$(document).ready(function() {
    $.ajax({
        url: "http://localhost/ass-ci/index.php/allCars"
    }).then(function(data) {
		var cars = JSON.parse(data);
	
		
        // Set variable to hold the mark up to append to the page elements	
	var listItem="";
	var ulListItem = "";

	for(i=0;i<cars.length;i++){
	listItem += '<li><a href="#'+cars[i].tag+'"data-transition="flip">'+cars[i].tag+'</a></li>';
	ulListItem += '<li>'+cars[i].model+'</li>';
	}
	// Append the variable to the listview then refresh to update the css styles. Without the refresh the links will not be hidden.
	$("#carList").append(listItem).listview("refresh");
	$("#panelCarList").append(ulListItem).listview("refresh");
       
    });
});


