
<!DOCTYPE html>
<html>
<head>
  <script src="alert/dist/sweetalert-dev.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.7.0/dist/sweetalert2.all.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.7.0/dist/sweetalert2.all.min.js"></script>
  <link rel="stylesheet" href="alert/dist/sweetalert.css">
</head>
<body>
<button onclick="JSalert()">Show an Alert</button>

<script type="text/javascript">
function JSalert(){
    swal({
  title: "Good job!",
  text: "You clicked the button!",
  icon: "success",
  button: "Aww yiss!",
});
}
</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>




<?php
    // if(isset($_GET['submit']))
    // {
    //     echo $_GET['submit'];
    // }
?>





<!-- <!DOCTYPE html>
<html>
<body>

<h2>Result</h2>

<script>
var num = [];
var x = prompt("Enter a Value. Press STOP for stopping");
while(x!='STOP' || x!='stop')
{
    var num1 = parseInt(x);
    num.push(num1);
    num.sort();
    alert("Current array is: "+num);
    x=prompt("Enter a Value. Press STOP for stopping");
    if(x=='STOP' || x=='stop')
    break
}
document.write("Your final array is: "+num);

</script>
</body> -->