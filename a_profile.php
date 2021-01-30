<?php
    $db_host='127.0.0.1';
    $db_user='root';
    $db_pass='';
    $db_name='english';

    $conn=mysqli_connect($db_host,$db_user,$db_pass,$db_name);
    if(!$conn)
    {
        die('Failed to connect mysql database'.mysqli_connect_error());
    }
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

      <link rel="stylesheet" href="a_nav_style.css">
      <style>
        .box{
            position: relative;
            width: 300px;
            height: 300px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            box-shadow: 0 30px 10px rgba(0,0,0,.2);
        }
        .box .percent{
            position: relative;
            width: 150px;
            height: 150px;
        }
        .box .percent svg{
            position: relative;
            width: 150px;
            height: 150px;
        }

        .box .percent svg circle{
            width: 150px;
            height: 150px;
            fill: none;
            stroke-width: 10;
            stroke: #000;
            transform: translate(5px,5px);
            stroke-dasharray: 440;
            stroke-dashoffset: 440;
            stroke-linecap: round;
        }

        .box .percent svg circle:nth-child(1){
            stroke-dashoffset: 0;
            stroke: #f3f3f3;
        }

        .box .percent svg circle:nth-child(2){
            stroke: #19875490;
        }

        .box .percent .number{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #111;
        }
        .box .percent .number h2{
            font-size: 48px;
        }

        .box .percent .number h2 span{
            font-size: 24px;
        }

        .box .text{
            padding: 10px 0 0;
        }

        .dropdown-toggle::after{
            display: none;
        }
    </style>


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



      <div class="container"> 
        
        <?php 
            $sql='SELECT * from `1111` ORDER BY test_id DESC LIMIT 1';
            $query = mysqli_query($conn,$sql);

            if(!$query)
            {
                die('error found'.mysqli_error($conn));
            }

            $row=mysqli_fetch_array($query);

        ?>

        <div class="row d-flex justify-content-center pt-4">
            <div class="col-6 d-flex justify-content-center">
                <div class="box">
                    <div class="percent">
                        <svg>
                            <circle cx="70" cy="70" r="70"></circle>
                            <circle cx="70" cy="70" r="70" style="stroke-dashoffset: calc(440 - (440 * <?php echo $row['scored']?>) / <?php echo $row['total']?>);"></circle>
                        </svg>
                        <div class="number">
                            <h2><?php echo $row['scored']?><span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Marks Percentage</h2>
                    <p class="text-success font-weight-bold"><?php echo $row['scored']?>/<?php echo $row['total']?></p>
                </div>
            </div>
            <div class="col-6 d-flex justify-content-center">
                <div class="box">
                    <div class="percent">
                        <svg>
                            <circle cx="70" cy="70" r="70"></circle>
                            <circle cx="70" cy="70" r="70" style="stroke-dashoffset: calc(440 - (440 * 5) / 5);"></circle>
                        </svg>
                        <div class="number">
                            <h2>100<span>%</span></h2>
                        </div>
                    </div>
                    <h2 class="text">Rank Percentage</h2>
                    <p class="text-success font-weight-bold">1/5</p>
                </div>
            </div>
        </div>

        <div class="row">
        <div class="col-6">
            <!-- <div class="dropdown mt-5 d-flex justify-content-center">
            <button class="btn-lg bg-success bg-gradient btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="false" style="min-width: 36vw;" >
                Marks Scored
            </button>
            <div class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2" style="min-width: 36vw; "> -->
            <button id="hide_show_marks_scored" class="btn-lg bg-success bg-gradient btn-secondary btn-block mt-5 d-flex justify-content-center">Marks Scored</button>
            <div id="marks_scored" class="bg-white" style="display: none;">
            <div class="row d-flex p-2 border">
                    <div class="col-3 text-center">S. No.</div>
                    <div class="col-5">Test Name</div>
                    <div class="col-4 text-center">Score</div>
                </div>
            <?php 
                $sql='SELECT * from `1111` ORDER BY test_id DESC';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                
                $c=1;
                while($row=mysqli_fetch_array($query))
                {    
                    ?>

                <div class="row d-flex p-2 border">
                    <div class="col-3 text-center"><?php echo $c;?></div>
                    <div class="col-5"><?php echo 'Test - '.$row['test_id']?></div>
                    <div class="col-4 text-center"><?php echo $row['marks']?></div>
                </div>

                <?php
            $c++;
            }?>
            </div>
        </div>
            <!-- </div> -->

            <div class="col-6">
            <!-- <div class="dropdown mt-5 d-flex justify-content-center">
            <button class="btn-lg bg-success bg-gradient btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2" data-toggle="dropdown" aria-expanded="false" style="min-width: 36vw;" >
                Leaderboard
            </button>
            <div class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2" style="min-width: 36vw;"> -->
            
            <button id="hide_show_leaderboard" class="btn-lg bg-success bg-gradient btn-secondary btn-block mt-5 d-flex justify-content-center">Leaderboard</button>
            <div id="leaderboard" class="bg-white" style="display: none;">
            <div class="row d-flex p-2 border">
                    <div class="col-3 text-center">Rank</div>
                    <div class="col-5">Name</div>
                    <div class="col-4 text-center">Total Score</div>
                </div>
            <?php 
                $db_host='127.0.0.1';
                $db_user='root';
                $db_pass='';
                $db_name='english';

                $conn=mysqli_connect($db_host,$db_user,$db_pass,$db_name);
                if(!$conn)
                {
                    die('Failed to connect mysql database'.mysqli_connect_error());
                }

                $sql='SELECT * from `leaderboard` ORDER BY rank';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                
                $c=1;
                while($row=mysqli_fetch_array($query))
                {    
                    ?>

                <div class="row d-flex p-2 border">
                    <div class="col-3 text-center"><?php echo $row['rank'];?></div>
                    <div class="col-5"><?php echo $row['username']?></div>
                    <div class="col-4 text-center"><?php echo $row['total']?></div>
                </div>

                <?php
            $c++;
            }?>


            <!-- STACK IMPLEMENTATION -->
            <script>
                class Stack {
            constructor() {
                this.storage = [];
            }

            push(item) {
                this.storage.push(item);
            }

            pop() {
                return this.storage.pop();
            }

            peek() {
                return this.storage[this.storage.length-1];
            }

            isEmpty() {
                return this.storage.length === 0;
            }

            printContents() {
                this.storage.forEach(elem => console.log(elem));
            }
            }

            const s = new Stack();
            s.push(4);
            s.push(10);
            s.push(8);
            s.push(5);
            s.push(1);
            s.push(6);

            // s.printContents(); // outputs 4, 10, 8, 5, 1, 6


            const sortStack = (stack) => {
            sorted = new Stack();
            while (!stack.isEmpty()) {
                tmp = stack.pop();  
                while (tmp < sorted.peek()) {
                stack.push(sorted.pop());
                }
                sorted.push(tmp);
            }
            return sorted;
            }

            sortedStack = sortStack(s);
            sortedStack.printContents(); // correctly outputs 1, 4, 5, 6, 8, 10
            </script>

            </div>
            
            
            <!-- </div>
        </div> -->
            </div>
        </div>

        <script>
        $(document).ready(function(){
            $("#hide_show_marks_scored").click(function(){
                $("#marks_scored").toggle(100000);
            });
        });
        </script>

        <script>
        $(document).ready(function(){
            $("#hide_show_leaderboard").click(function(){
                $("#leaderboard").toggle(1000);
            });
        });
        </script>

        

        <form action="a_profile.php" method="GET" class="row mt-5 mb-5">
            <div class="col-12 ml-0">
            <label for="exampleFormControlTextarea1" class="form-label h5">Feedback</label>
            </div>
            <div class="col-10">
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"  placeholder="Your feedback is valuable to us..."></textarea>
            </div>
            <div class="col-2 mt-auto">
                <button type="submit" name="feed_submit" class="btn bg-success text-white">Send feedback</button>
            </div>
        </form>



      </div>
      
      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>