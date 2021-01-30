<?php
// create a new function
function search($text){
	
	// connection to the Ddatabase
	$db = new PDO("mysql:host=localhost;dbname=english", 'root', '');
	// let's filter the data that comes in
	$text = htmlspecialchars($text);
	// prepare the mysql query to select the users 
	$get_word = $db->prepare("SELECT word FROM words WHERE word LIKE concat('%', :word, '%')");
	// execute the query
	$get_word -> execute(array('word' => $text));
	// show the users on the page
	while($words = $get_word->fetch(PDO::FETCH_ASSOC)){
		// show each user as a link
		echo '<a href="">'.$words['word'].'</a>';
		
	}
}
// call the search function with the data sent from Ajax
search($_GET['txt']);
?>