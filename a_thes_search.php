<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

      <link rel="stylesheet" href="b_css/b_dict.css">
      <style>
          ::-webkit-scrollbar{
              display: none;
          }

          .btn_appearance{
            background-color: transparent;
            outline:none;
            border:none;
            font-size: larger;
          }
      </style>
</head>
<body>
<?php
// create a new function
function search($text){
	
	// connection to the Ddatabase
	$db = new PDO("mysql:host=localhost;dbname=english", 'root', '');
	// let's filter the data that comes in
	$text = htmlspecialchars($text);
	// prepare the mysql query to select the users 
	$get_word = $db->prepare("SELECT * FROM thesaurus WHERE word LIKE concat(:word, '%')");
	// execute the query
	$get_word -> execute(array('word' => $text));
    // show the users on the page
    $c=0;
	while($row = $get_word->fetch(PDO::FETCH_ASSOC)){
        // show each user as a link
        if($c==0)
                    {
                        echo '<div class="letter w-100 pl-4 d-flex">
                            <p><b>'.substr($row['word'],0,1).'</b></p>
                            <hr class="h1 w-100">
                        </div>';
                    }
        if($c<10)
        {
    ?>
            <div class="row m-2 p-0 justify-content-center w-100">
                <div class="col-10 p-0 w-100 background_word">
                    <div class="row m-1 p-0">
                        <form class="col-12 p-0" action="a_thes_mean.php" method="GET">
                            <input type="submit" class="btn_appearance w-100 text-left p-2" name="submit" value="<?php echo $row['word'];?>">
                        </form>
                    </div>
                </div>
            </div>

    <?php
        $c++;
        }
    }
    if($c==0)
    {
        ?>
        <div class="row m-2 p-0 justify-content-center w-100">
                <div class="col-10 p-0 w-100">
                    <div class="row justify-content-center m-1 p-0">
                        <div class="col-12 text-center p-0">
                        <hr>
                            <p class="h5">No suggestion</p>
                            <br>
                            <img src="img/sad.gif" alt="" width="20%">
                        </div>
                    </div>
                </div>
            </div>
  <?php  }
}
// call the search function with the data sent from Ajax
search($_GET['txt']);
?>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <scriptalert src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></scripalertalert>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    </body>
    </html>