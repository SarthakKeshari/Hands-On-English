<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10.7.0/dist/sweetalert2.all.min.js"></script>

      <link rel="stylesheet" href="a_css/a_contact.css">
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
          <br>
          <a href="#" id="contact_head">EVENTS</a>
          <hr id="contact_head_udr"> 

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
          
          if(isset($_GET['submit']))
          {
            $sql='SELECT * from events where event_id = '.$_GET['submit'];
            $query = mysqli_query($conn,$sql);
  
            if(!$query)
            {
                die('error found'.mysqli_error($conn));
            }
            $row=mysqli_fetch_array($query);

            echo "
            <div class='pl-4 mt-5' style='border-left: 1px green dashed;'>
            All that you need to know about <span class='h5'>".$row['name']."!</span><br>
            All the rounds mentioned here are independent of each other. Participants can take part in any number of events.  <br><br>
            
            A. Lit Quiz on 30th Oct, 2020, 7.00 P.M. to 7.10 P.M. :<br><br>
            
            A quiz exclusively on Indian Literature would be put in front of the participants.<br>
            The quiz is of 20 questions and is of 10 minutes only.<br>
            The format of the quiz is TITA (Type in the Answers).<br>
            The final results would be declared on the social media handles (Facebook and Instagram) of Mantavya.<br>
            This is an individual event. It is not an elimination round for any further rounds. <br><br>
            B. Panel Discussion on 31st Oct, 2020, 5.00 P.M. to 7.00 P.M.:<br><br>
            
            Two budding Indian authors, Manjul Bajaj and Vivek Tejuja, would be a part of our panel discussion. They have written books on national issues. <br>
            The Zoom link shall be shared shortly. Interested people can directly login to the link and attend the webinar.<br>
            Participants will get a chance to ask questions to the authors. <br><br>
            C. Article Writing Competition from 30th Oct 2020 to 1st Nov 2020:<br><br>
            
            A picture would be shared on the date of the competition. The participants have to write in 800 words about what and how they feel when they see the picture.<br>
            The submission should be a word doc, with naming convention as FirstName_LastName_Organisation.
            </div>";
            ?>

            <button class="btn btn-block btn-lg btn-success font-weight-bolder mt-4" onclick="JSalert()">Register Now</button>

            <script type="text/javascript">
            function JSalert(){
                swal({
                    title: "Congrats!",
                    text: "Registration Successful",
                    icon: "success",
                    button: "OK",
                });
            }
            </script>
            <?php
          }
          else
          {
          ?>

          <div class="row d-flex justify-content-center" id="show_up">
          
          <?php
                $sql='SELECT * from events ORDER BY deadline';
                $query = mysqli_query($conn,$sql);

                if(!$query)
                {
                    die('error found'.mysqli_error($conn));
                }
                
                while($row=mysqli_fetch_array($query))
                {    
            ?>
            <div class="row card m-4" style="width: 20rem; box-shadow:0px 0px 10px #00000026">
                <div class="row justify-content-center">
                    <div class="col-6 justify-content-center">
                    <img src="<?php echo $row['image']?>" class="card-img-top" alt="...">
                    </div>
                </div>
                <script>
                        function PriorityQueue(){
                    let items = [];
                    
                    function QueueElement(element, priority){
                        this.element = element;
                        this.priority = priority;
                    }
                    
                    //Add a new element in queue
                    this.enqueue = function(element, priority){
                        let queueElement = new QueueElement(element, priority);
                        
                        //To check if element is added
                        let added = false;
                        for(let i = 0; i < items.length; i++){
                        //We are using giving priority to higher numbers
                        //If new element has more priority then add it at that place
                        if(queueElement.priority > items[i].priority){
                            items.splice(i, 0, queueElement);
                            
                            //Mark the flag true
                            added = true;
                            break;
                        }
                        }
                        
                        //If element is not added
                        //Then add it to the end of the queue
                        if(!added){
                        items.push(queueElement);
                        }
                    }
                    
                    //Remove element from the queue
                    this.dequeue = () => {
                        return items.shift();
                    }
                    
                    //Return the first element from the queue
                    this.front = () => {
                        return items[0];
                    }
                    
                    //Return the last element from the queue
                    this.rear = () => {
                        return items[items.length - 1];
                    }
                    
                    //Check if queue is empty
                    this.isEmpty = () => {
                        return items.length == 0;
                    }
                    
                    //Return the size of the queue
                    this.size = () => {
                    return items.length;
                    }
                    
                    //Print the queue
                    this.print = function(){
                        for(let i = items.length-1; i >= 0; i--){
                        console.log(`${items[i].element} - ${items[i].priority}`);
                        }
                    }
                    }

                    // Input:
                    let pQ = new PriorityQueue();
                    pQ.enqueue(1, 3);
                    pQ.enqueue(11, 2);
                    pQ.enqueue(5, 2);
                    pQ.enqueue(6, 1);
                    pQ.enqueue(13, 1);
                    pQ.enqueue(10, 3);
                    pQ.dequeue();
                    pQ.print();

                    // Output:
                    // "10 - 3"
                    // "5 - 2"
                    // "6 - 1"
                    // "11 - 1"
                    // "13 - 1"

                </script>
                
                <form class="card-body" action="a_upcoming.php" method="GET">
                    <h5 class="card-title m-0"><?php echo $row['name']?></h5>
                    <small class="font-italic">Age Group - <?php echo $row['age_group']?></small>
                    <p class="mt-2 mb-5">Duration - <?php echo $row['event_duration']?></p>
                    <p class="card-text">
                                    <?php
                                        $deadline=date_create($row['deadline']);
                                        $currdate=getdate(date("U"));
                                        $currdate="$currdate[year]-$currdate[mon]-$currdate[mday]";
                                        $currdate=date_create($currdate);
                                        $diff=date_diff($currdate,$deadline);
                                        $days = $diff->format("%R%a days");

                                        if($days>10)
                                        {
                                            echo '<div class="row text-white m-0 p-1 bg-success">
                                            <p class="m-0">'.$diff->format("%a days left").'</p>
                                            </div>';
                                        }
                                        else if($days>0)
                                        {
                                            echo '<div class="row text-white m-0 p-1 bg-danger">
                                            <p class="m-0">'.$diff->format("%a days left").'</p>
                                            </div>';
                                        }
                                        ?></p>
                                        <button value="<?php echo $row['event_id']?>" type="submit" name="submit" href="#" class="btn btn-light border border-dark btn-block">View Details</button>
                </form>
            </div>

                                    <?php }?>


            
 
        </div>
                                    <?php }?>
      </div>

      
      
      <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <scriptalert src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></scripalertalert>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
</html>