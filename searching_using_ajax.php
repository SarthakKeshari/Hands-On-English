<html>
<head>
<title>Search</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<style>
#show_up{
	border: 1px solid #ddd;
	/* display: none; */
}
#show_up a{
	border-bottom: 1px solid #ddd;
	display: block;
    text-decoration: none;
	padding: 5px;
}
</style>
</head>
<body>
<script>
$(document).ready(function(e){
	$("#search").keyup(function(){
		$("#show_up").show();
		var text = $(this).val();
		$.ajax({
			type: 'GET',
			url: 'search.php',
			data: 'txt=' + text,
			success: function(data){
				$("#show_up").html(data);
			}
		});
	})
});
</script>
<input type="text" name="names" id="search" />
<div id="show_up">
    <?php
        $db_host='127.0.0.1';
        $db_user='root';
        $db_pass='';
        $db_name='english';

        $conn=mysqli_connect($db_host,$db_user,$db_pass,$db_name);
        if(!$conn )
        {
            die('Failed to connect mysql database'.mysqli_connect_error());
        }

        // echo "YOYO";

        $sql='SELECT * from words';
        $query = mysqli_query($conn,$sql);

        if(!$query)
        {
            die('error found'.mysqli_error($conn));
        }

        while($row=mysqli_fetch_array($query))
        {    
            echo '<p>'.$row['word'].'</p>';
        }
    ?>
</div>
</body>
</html>