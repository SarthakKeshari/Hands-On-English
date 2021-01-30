<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

      <link rel="stylesheet" href="a_css/a_login.css">
</head>
<body>
      <nav>
      <div class="row text-center">
        <img src="img/logo.png" alt="" class="rounded mx-auto d-block" width="75%">
      </div>
            <br><br>
            <div class="user">
            <img src="img/user.svg" alt="">
                <p>Hi, Sarthak</p>
                <button type="submit" onclick="log_out()">Log Out</button>
            </div>
            <script>
              function log_out()
              {
                location.href = "index.php";
              }
            </script>
            <br>
            <!-- Menu Area  -->
            <ul class="menu">
                  <li><a href="a_login.php">HOME</a></li>
                  <li><a href="a_dict.php">DICTIONARY</a></li>
                  <li><a href="a_thesaurus.php">THESAURUS</a></li>
                  <li><a href="a_learn.php">LEARN GRAMMAR</a></li>
                  <li><a href="a_test.php">TEST YOUR GRAMMAR</a></li>
                  <li><a href="a_upcoming.php">UPCOMING EVENTS</a></li>
                  <li><a href="a_profile.php">MY PROFILE</a></li>
                  <li><a href="a_about.php">ABOUT</a></li>
                  <li><a href="a_authors.php">AUTHORS</a></li>
            </ul>
            <br><br><br>
            
            <!--  -->
            <a href="a_contact.php" id="social_head">CONTACT US</a> 
            <hr id="social_head_udr"> 
            <ul class="social">
            <li><a href="tel:+919809102900"><img src="img/phone.png" alt="" class="rounded-circle" width="100%"></a></li>
                  <li><a href="mailto: handsonenglish2020@gmail.com"><img src="img/message.png" alt="" class="rounded-circle" width="100%"></a></li>
                  <li><a href="https://www.instagram.com/"><img src="img/insta.png" alt="" class="rounded-circle" width="100%"></a></li>
                  <li><a href="https://www.facebook.com/"><img src="img/facebook.png" alt="" class="rounded-circle" width="100%"></a></li>
            </ul>
      </nav>


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

                $sql='SELECT * from feedback';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                $c=0;
                $row=mysqli_fetch_array($query)
                ?>


      <div class="container">
          <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel" data-interval="4000">
            <div class="carousel-inner">
              <img src="img/comment.jpg" alt="" style="height: 75vh; width: 100%; filter: blur(50px) brightness(1.2); border: 50px solid pink;">
              <p class="text-light" style="font-family: cursive; font-size: 3em; font-weight:bolder ; position:absolute; top: 10%; left: 20%; transform: translate(-10%,-50%); -webkit-text-stroke: 1px black;">What people think?</p>
              
              <div class="carousel-item active d-flex justify-content-center" style="margin-top: 25vh; font-size:1.5em;">
              <table class="border border-dark col-8" style="background-color: #ffffff26;">
                  <tr>
                    <td class="p-4"><?php echo $row['feed'];?></td>
                  </tr>
                  <tr>
                    <td class="p-4 text-right h6">~ <?php echo $row['name'];?></td>
                  </tr>
                </table>
              </div>
              <?php while($row=mysqli_fetch_array($query))
                {?>
              <div class="carousel-item d-flex justify-content-center" style="margin-top: 25vh; font-size:1.5em;">
              <table class="border border-dark col-8" style="background-color: #ffffff26;">
                  <tr>
                    <td class="p-4"><?php echo $row['feed'];?></td>
                  </tr>
                  <tr>
                    <td class="p-4 text-right h6">~ <?php echo $row['name'];?></td>
                  </tr>
                </table>
              </div>

                <?php
              $c++;
              }?>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          

                
                <div class="about">
                  <p id="about_head"><u>About Us</u></p>
                  <hr id="about_head_udr">
                  <div class="about_text">
                    <p>
                      Welcome to Hands on English ! <br><br>
                      Practise your English grammar with clear grammar explanations by our well experienced teachers, practice exercises and attend tests to improve your understanding. All learners, whatever their level, have questions and doubts about grammar as they're learning English and this guide helps to explain the verbs, tenses and grammar rules in a clear and simple way. <br>
                      Start learning today by attending live lectures, doing exercises and attending online tests. By revising and practising your grammar you will... 
                    </p>
                  </div>
                  <div class="about_image">
                    <img src="img/tempaboutimage.jpg" alt="" class="rounded mx-auto d-block">
                    <div class="know_more">
                      <a href="a_about.php">Know more...</a>
                    </div>
                  </div>
                </div>
      </div>
      
      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>