/*
* Author: Thomas Canham
* Assignment: WE4.0 Server-side Web Development, Digital Skills Academy
* Student ID: D15126979
* Date : 2016/07/30
* Ref: n/a
*/
 $( document ).ready(function() {
     $( "form" ).on( "submit", function( event ) {
       event.preventDefault();//hi-jack form submit event
	   //Get json data from web service
        $.get("http://localhost/assignment/web-services/searchFordModel.php", $("form").serialize(), function(data) { 
            var car = data
           if(car){//Populate the page elements and clear any user data
                $('#type').text("Model: "+car.model);
                $('#body').text("Body Style: "+car.body);
                $('#variant').text("Variant: "+car.variant);
                $('#year').text("Year of Manufacture: "+car.year);
                $('#desc').text(car.desc);
                $('img').attr('src', car.image);
                $('img').attr('title', car.model);
                $('img').attr('alt', "Image of a Ford"+car.model);
                $("img").css({"border": "1px solid blue", "padding": "1px"});
                $('#no-result').text(''); 
            }else{ //Clear page and give user relative data
                $('#no-result').text('Sorry no matching car found');
                $('#type').text('');
                $('#body').text('');
                $('#variant').text('');
                $('#year').text('');
                $('#desc').text('');
                $('img').attr('src', '');
                $('img').attr('title', '');
                $('img').attr('alt','');
                 $("img").css({"border": "0px solid blue", "padding": "0px"});
            }
        });
    });
});


