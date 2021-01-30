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
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <link rel="stylesheet" href="b_css/b_dict.css">
        <style>
            ::-webkit-scrollbar{
                display: none;
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
            <a href="#" id="dict_head">DICTIONARY</a>
            <hr id="dict_head_udr"> 
            
            <div class="row mt-5 dict_search">
                <div class="col-12">
                    <input type="text" name="words" class="w-100" id="search" placeholder="Search...">
                </div>
            </div>

            <div class="mb-5" id="alphabets">
                <ul>
                    <li><a href="#">A</a></li>
                    <li><a href="#">B</a></li>
                    <li><a href="#">C</a></li>
                    <li><a href="#">D</a></li>
                    <li><a href="#">E</a></li>
                    <li><a href="#">F</a></li>
                    <li><a href="#">G</a></li>
                    <li><a href="#">H</a></li>
                    <li><a href="#">I</a></li>
                    <li><a href="#">J</a></li>
                    <li><a href="#">K</a></li>
                    <li><a href="#">L</a></li>
                    <li><a href="#">M</a></li>
                    <li><a href="#">N</a></li>
                    <li><a href="#">O</a></li>
                    <li><a href="#">P</a></li>
                    <li><a href="#">Q</a></li>
                    <li><a href="#">R</a></li>
                    <li><a href="#">S</a></li>
                    <li><a href="#">T</a></li>
                    <li><a href="#">U</a></li>
                    <li><a href="#">V</a></li>
                    <li><a href="#">W</a></li>
                    <li><a href="#">X</a></li>
                    <li><a href="#">Y</a></li>
                    <li><a href="#">Z</a></li>
                </ul>
            </div>

            <div class="row" id="show_up">
            <!-- <div class="letter">
                    <p><b>A</b></p>
                    <hr>
                </div> -->
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

                    $sql='SELECT * from dictionary where word = "'.$_GET['submit'].'"';
                    $query = mysqli_query($conn,$sql);

                    if(!$query)
                    {
                        die('error found'.mysqli_error($conn));
                    }

                    $row=mysqli_fetch_array($query)
                ?>
                

                <div class="row m-2 p-0 justify-content-center w-100">
                    <div class="col-10 p-0 w-100 bg-light">
                        <div class="row m-1 p-0">
                            <div class="col-12 p-0">
                                <div class="w-100 text-left h4 pb-0 pt-2 pl-2"><?php echo $row['word'];?></div>
                            </div>
                            <div class="col-12 p-0">
                                <div class="btn_appearance w-100 font-italic text-left pb-4 pt-0 pl-2"><?php echo $row['wordtype'];?></div>
                            </div>
                            <div class="col-12 p-0">
                                <div class="btn_appearance w-100 font-italic h6 text-left pt-4 pt-0 pl-2" style="line-height: 22px;"><?php echo $row['definition'];?></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function(e){
                $("#search").keyup(function(){
                    $("#show_up").show();
                    var text = $(this).val();
                    $.ajax({
                        type: 'GET',
                        url: 'b_dic_search.php',
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
    <?php    }?>