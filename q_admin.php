<?php
    if($_SERVER["REQUEST_METHOD"] == "GET")
    {
    $question = $_GET['question'];
    $opta = $_GET['opta'];
    $optb = $_GET['optb'];
    $optc = $_GET['optc'];
    $optd = $_GET['optd'];
    $answer = $_GET['answer'];
    $type = $_GET['type'];

    if (!empty($question) && !empty($opta) && !empty($optb) && !empty($optc) && !empty($optd) && !empty($answer) && !empty($type)) {
        $host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbname = "english";
        //create connection
        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);

        //to prevent mysql injection
        //For prevention against data stealing
        $question=stripcslashes($question);
        $opta=stripcslashes($opta);
        $optb=stripcslashes($optb);
        $optc=stripcslashes($optc);
        $optd=stripcslashes($optd);
        $answer=stripcslashes($answer);
        $type=stripcslashes($type);
        $question=mysqli_real_escape_string($conn,$question);
        $opta=mysqli_real_escape_string($conn,$opta);
        $optb=mysqli_real_escape_string($conn,$optb);
        $optc=mysqli_real_escape_string($conn,$optc);
        $optd=mysqli_real_escape_string($conn,$optd);
        $answer=mysqli_real_escape_string($conn,$answer);
        $type=mysqli_real_escape_string($conn,$type);

    if (mysqli_connect_error()) {
    die('Connect Error('. mysqli_connect_errno().')'. mysqli_connect_error());
    } else
    {
        $query = "INSERT Into q_admin (id,question,opta,optb,optc,optd,answer,type) values('$id','$question','$opta','$optb','$optc','$optd','$answer','$type')";
        $res=mysqli_query($conn,$query);
        if($res)
        {
            echo "Question successfully uploaded.";
        }
        else
        {
            echo "Upload Error";
            echo mysqli_error($conn);
        }
    }
} else {
echo "All field are required";
die();
}
}
?>