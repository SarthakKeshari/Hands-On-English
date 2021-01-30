<?php
    if(isset($_GET['submit']))
    {
        ?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

      <link rel="stylesheet" href="a_css/a_contact.css">
</head>
<body>
      <nav>
            <div class="row text-center">
                <img src="img/logo.png" alt="" class="rounded mx-auto d-block" width="75%">
            </div>
            <br><br>
            <div class="user">
                <img src="img/sarthak.jpeg" alt="">
                <p>Hi, Sarthak</p>
                <button type="submit">Log Out</button>
            </div>
            <br>
            <!-- Menu Area  -->
            <ul class="menu">
                  <li><a href="a_login.html">HOME</a></li>
                  <li><a href="a_dict.html">DICTIONARY</a></li>
                  <li><a href="a_thesaurus.html">THESAURUS</a></li>
                  <li><a href="a_learn.html">LEARN GRAMMAR</a></li>
                  <li><a href="a_test.html">TEST YOUR GRAMMAR</a></li>
                  <li><a href="a_upcoming.html">UPCOMING EVENTS</a></li>
                  <li><a href="a_profile.html">MY PROFILE</a></li>
                  <li><a href="a_about.html">ABOUT</a></li>
                  <li><a href="a_authors.html">AUTHORS</a></li>
            </ul>
            <br><br><br>
            
            <!--  -->

                <a href="a_contact.html" id="social_head">CONTACT US</a> 
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
          <a href="#" id="contact_head">LEARN GRAMMAR</a>
          <hr id="contact_head_udr"> 
          <br><br>
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
                $sqlupdate = 'UPDATE engvideos set views=views+1 where name = "'.$_GET['submit'].'"';
                if ($conn->query($sqlupdate) === TRUE) {
                    // echo "Record updated successfully";
                }

                $sql='SELECT * from engvideos where name = "'.$_GET['submit'].'"';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                $c=0;
                $row=mysqli_fetch_array($query) ?>
            <div class="row">
                <div class="col-12">
                    <div class="row">
                        <h5 class="col-12 mb-1"><?php echo $row['name'];?></h5>
                        <p class="col-12 font-italic" style="font-size: 0.8em;">Instructor - <?php echo $row['instructor'];?></p>
                    </div>
                    <div class="row m-4 justify-content-center">
                        <div class="col-10">
                            <video class="rounded" src="<?php echo $row['video'];?>" width="100%" controls autoplay></video>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-2">
                            <p><small class="">Duration - <?php echo $row['length'];?> min</small></p>
                        </div>
                        <div class="col-2 ml-auto text-right">
                            <img src="img/views.png" alt="" width="10%"><span style="font-size: 0.8em; color: #00000075;">&emsp;<?php echo $row['views'];?> views</span>
                        </div>
                        <div class="col-12 mb-5 p-5">
                            <p><?php echo $row['description'];?></p>
                        </div>
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


        <?php
    }
?>