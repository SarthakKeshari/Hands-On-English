<html>
<head>
<title>Search</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<style>
#show_up{
	border: 1px solid #ddd;
	display: none;
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
			url: 'searched.php',
			data: 'txt=' + text,
			success: function(data){
				$("#show_up").html(data);
			}
		});
	})
});
</script>
<input type="text" name="names" id="search" />
<div id="show_up"></div>
</body>
</html>