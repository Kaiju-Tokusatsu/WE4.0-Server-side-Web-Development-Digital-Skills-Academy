<?php
/**********************************************************
* Author: Thomas Canham
* Assignment: WE4.0 Server-side Web Development, Digital Skills Academy
* Student ID: D15126979
* Date : 2016/07/30
* Ref: n/a
***********************************************************/

    $url = "http://localhost/assignment/web-services/allFordModels.php";
    $client = curl_init($url);
    curl_setopt($client,CURLOPT_RETURNTRANSFER,1);
    $response = curl_exec($client);
    $data = json_decode($response); 
?>
<!DOCTYPE html>
<html>
<head>
	<title>1980's Ford Search</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/script.js"></script>
	<meta charset="UTF-8">
</head>
<body>
    <header>
        <h1>Search For a 1980's Ford</h1>
    </header> 
            <div id="car-list">
        <ul>
            <li id="list-head"><h3>Available Models</h3></li>
             <?php foreach ($data as $car) : ?>
            <li id="model"><?php echo $car->tag?></li>
            <?php endforeach; ?>
        </ul>    
            <form action="" method="get">
                <input type="text" name="model"><br>
                <input type="submit" id="submit" value="search For Car">
            </form>
    </div>  
    <div id="main-content">
        <h2 id="no-result"></h2>
         <h2 id ="type"></h2>
        <h3 id ="body"></h3>
        <h3 id ="variant"></h3>
        <h3 id ="year"></h3>
        <h4 id ="desc" class="desc"></h4>
        <div id="img-holder">
            <img >
        </div>
    </div>    
    <footer></footer>
</body>
</html>