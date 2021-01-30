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
      <nav>
            <div class="row text-center">
                <img src="img/logo.png" alt="" class="rounded mx-auto d-block" width="75%">
            </div>
            <br><br><br><br>
            <!-- Menu Area  -->
                <ul class="menu">
                    <li><a href="b_login.php">HOME</a></li>
                    <li><a href="index.php">LOGIN/SIGN UP</a></li>
                    <li><a href="b_dict.php">DICTIONARY</a></li>
                    <li><a href="b_thesaurus.php">THESAURUS</a></li>
                    <li><a role="button" onclick="JSalert()">LEARN GRAMMAR</a></li>
                    <li><a role="button" onclick="JSalert()">TEST YOUR GRAMMAR</a></li>
                    <li><a role="button" onclick="JSalert()">UPCOMING EVENTS</a></li>
                    <li><a href="b_about.php">ABOUT</a></li>
                    <li><a href="b_authors.php">AUTHORS</a></li>
                </ul>
                <script type="text/javascript">
            function JSalert(){
                swal({
                    title: "Oops!",
                    text: "Please login/register to enhance your experience",
                    icon: "warning",
                    button: "OK",
                });
            }
            </script>
            <br><br><br><br><br><br><br>
            
            <!--  -->
            <a href="b_contact.html" id="social_head">CONTACT US</a> 
            <hr id="social_head_udr"> 
            <ul class="social">
            <li><a href="tel:+919809102900"><img src="img/phone.png" alt="" class="rounded-circle" width="100%"></a></li>
            <li><a href="mailto: handsonenglish2020@gmail.com"><img src="img/message.png" alt="" class="rounded-circle" width="100%"></a></li>
            <li><a href="https://www.instagram.com/"><img src="img/insta.png" alt="" class="rounded-circle" width="100%"></a></li>
            <li><a href="https://www.facebook.com/"><img src="img/facebook.png" alt="" class="rounded-circle" width="100%"></a></li>
            </ul>
      </nav>



      <div class="container">
          <br>
          <a href="#" id="dict_head">THESAURUS</a>
          <hr id="dict_head_udr"> 
          
          <div class="row mt-5 dict_search">
            <div class="col-12">
                <input type="text" name="words" class="w-100" id="search" placeholder="Search...">
            </div>
          </div>

          <div class="mb-5" id="alphabets">
              <ul>
                  <li><span class="text-success" href="#">A</span></li>
                  <li><span class="text-success" href="#">B</span></li>
                  <li><span class="text-success" href="#">C</span></li>
                  <li><span class="text-success" href="#">D</span></li>
                  <li><span class="text-success" href="#">E</span></li>
                  <li><span class="text-success" href="#">F</span></li>
                  <li><span class="text-success" href="#">G</span></li>
                  <li><span class="text-success" href="#">H</span></li>
                  <li><span class="text-success" href="#">I</span></li>
                  <li><span class="text-success" href="#">J</span></li>
                  <li><span class="text-success" href="#">K</span></li>
                  <li><span class="text-success" href="#">L</span></li>
                  <li><span class="text-success" href="#">M</span></li>
                  <li><span class="text-success" href="#">N</span></li>
                  <li><span class="text-success" href="#">O</span></li>
                  <li><span class="text-success" href="#">P</span></li>
                  <li><span class="text-success" href="#">Q</span></li>
                  <li><span class="text-success" href="#">R</span></li>
                  <li><span class="text-success" href="#">S</span></li>
                  <li><span class="text-success" href="#">T</span></li>
                  <li><span class="text-success" href="#">U</span></li>
                  <li><span class="text-success" href="#">V</span></li>
                  <li><span class="text-success" href="#">W</span></li>
                  <li><span class="text-success" href="#">X</span></li>
                  <li><span class="text-success" href="#">Y</span></li>
                  <li><span class="text-success" href="#">Z</span></li>
              </ul>
          </div>

          <div class="row" id="show_up">
          
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

                $sql='SELECT * from thesaurus';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                $c=0;
                while($row=mysqli_fetch_array($query))
                {    
                    if($c==0)
                    {
                        echo '<div class="letter w-100 pl-4 d-flex">
                            <p><b>'.substr($row['word'],0,1).'</b></p>
                            <hr class="h1 w-100">
                        </div>';
                    }
                    if($c<20)
                    {
                
            ?>
            

            <div class="row m-2 p-0 justify-content-center w-100">
                <div class="col-10 p-0 w-100 background_word">
                    <div class="row m-1 p-0">
                        <form class="col-12 p-0" action="b_thes_mean.php" method="GET">
                            <input type="submit" class="btn_appearance w-100 text-left p-2" name="submit" value="<?php echo $row['word'];?>">
                        </form>
                    </div>
                </div>
            </div>
                <?php $c++; } }?>
        </div>
      </div>

      <script>
        $(document).ready(function(e){
            $("#search").keyup(function(){
                $("#show_up").show();
                var text = $(this).val();
                $.ajax({
                    type: 'GET',
                    url: 'b_thes_search.php',
                    data: 'txt=' + text,
                    success: function(data){
                        $("#show_up").html(data);
                    }
                });
            })
        });
        </script>
      
      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <scriptalert src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></scripalertalert>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>