<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add new Question</title> 
</head>
<body>
    <h2>Attempt Question - User Side</h2>
    <form action="q_user.php" method="POST">
        <input type="text" name="reg">
        <input type="submit" value="Submit" name="submit">
    </form>

    <?php
        if($_POST['submit'])
        {

            $no_of_questions = 10;
            $registration_number = $_POST['reg'];
            $reg = $registration_number[strlen($registration_number)-1];

            echo "<br><br><h3>Registration Number : <b style=\"font-size: 20px\">".$registration_number."</b></h3><br>";

            $mul_fact = pow(7,$reg%10);

            // for($x=1;$x<=$no_of_questions;$x++){
            //     echo "Question number : ".((((($mul_fact*$x+$reg)%$no_of_questions))%$no_of_questions+1))."<br>";
            // }

            $host = "localhost";
            $dbUsername = "root";
            $dbPassword = "";
            $dbname = "english";
        
            //create connection
            $conn = new mysqli($host, $dbUsername, $dbPassword, $dbname);
        
            //connect to the server and select database
            mysqli_connect("localhost","root","");
            mysqli_select_db($conn,"submit");
        
            //Query the database for user
            for($x=1;$x<=$no_of_questions;$x++){
                $question = ((((($mul_fact*$x+$reg)%$no_of_questions))%$no_of_questions+1));
                $result = mysqli_query($conn,"select * from q_bank where 
                            id ='$question'")
                            or die("Failed to query database ".mysqli_error($conn));
                $row = mysqli_fetch_array($result);
                echo "<br><br>Question number : ".$x."&emsp;&emsp;&emsp;&emsp;&emsp; Original Question number : ".$row['id'];;
                echo "<h3>".$row['question']."</h3>";
                echo "<input type=\"radio\" name=\"option\" id=\"opta\" value=\"A\">".$row['opta']."<br>";
                echo "<input type=\"radio\" name=\"option\" id=\"optb\" value=\"B\">".$row['optb']."<br>";
                echo "<input type=\"radio\" name=\"option\" id=\"optc\" value=\"C\">".$row['optc']."<br>";
                echo "<input type=\"radio\" name=\"option\" id=\"optd\" value=\"D\">".$row['optd']."<br>";
                echo "<br><br>";
            }

            echo "<input type=\"submit\" name=\"submit\" id=\"\" value=\"Submit Quiz\"><br>";

            // if($row['admin_id'] == $Admin_id && $row['PIN'] == $PIN)
            // {
            //     header("Location: a_choice_page.php"); 
            //     exit;
            // }
            // else
            // {
            //     echo "<script>alert('Incorrect Admin_id or PIN');
            //     window.location.href = 'a_login_page.php';
            //     </script>";
            // }

            
        }
    ?>
</body>
</html>