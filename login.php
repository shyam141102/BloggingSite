<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Talent Pool</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->    
</head>


<!----------------------------------------------- php database connectivity ------------------------------------------------------->
<?php

include 'connect.php';
$_SESSION["userloged"]=false;

if(isset($_POST["login"])){
   $username=$_POST['log_username'];
   $password=$_POST['log_password'];

   $query="select * from user";
   $record=mysqli_query($conn,$query);

   while($data= mysqli_fetch_array($record)){
      
      if($username==$data['user_name'] && $password==$data['user_password']){
         $_SESSION["userloged"]=true;
         header("Location: http://localhost/blogger_project_update/index.php");
      }
      else{
         echo'<script type="text/JavaScript"> 
         alert("Account not found!! Enter login details correctly");
         </script>';
      }
   }
}

if(isset($_SESSION["action"])){

   if($_SESSION["action"] == "success" ){
      echo '<script type="text/JavaScript"> 
      alert("Registration Successful! Please login to your account");
      </script>';
      $_SESSION["action"]="";
   }
}
if(isset($_SESSION["notlogged"])){

   if($_SESSION["notlogged"] == "fail" ){
      echo '<script type="text/JavaScript"> 
      alert("Not logged in! Please login to your account");
      </script>';
      $_SESSION["notlogged"]="";
   }
}

mysqli_close($conn);
?>

<!------------------------------------------------------------------------------------------------------------------------------>



   <!-- body -->
   <body class="main-layout">
    <!-- loader  -->
    <div class="loader_bg">
       <div class="loader"><img src="images/loading.gif" alt="" /></div>
    </div>
    <!-- end loader -->
    <!-- header -->
    <header>
       <!-- header inner -->
       <div class="container-fluid">
          <div class="row">
             <div class="col-lg-3 logo_section">
                <div class="full">
                   <div class="center-desk">
                        <div class="logo" > <a href="index.php"><img src="images/Talentpool.png" alt="#"></a> </div>
                   </div>
                </div>
             </div>
             <div class="col-lg-9">
                <div class="menu-area">
                   <div class="limit-box">
                      <nav class="main-menu">
                         <ul class="menu-area-main">
                            <li>
                               <a href="index.php">Home</a>
                            </li>
                            <li >
                               <a href="blog.php">Blog</a>
                            </li>
                            <li>
                               <a href="writeblog.php">Write Blog</a>
                            </li>
                            <li>
                               <a href="contact.html">Contact us</a>
                            </li>
                            <li class="active">
                               <a href="login.php">Login</a>
                            </li>
                            <li>
                               <a href="register.php">Register</a>
                            </li>
                         </ul>
                      </nav>
                   </div>
                </div>
             </div>
          </div>
       </div>
       <!-- end header inner -->
    </header>
    <!-- end header -->
   
      
      <!-- section --> 
<div class="About-bg">
    <div class="container">
       <div class="row">
          <div class="col-md-12">
             <div class="aboutheading">
                <h3>Log<span class="orange_color">in</span></h3>
             </div>
          </div>
       </div>
    </div>
 </div>
 

<!---------------------------register page---------------------------------->   
 <div class="main-login"> 
   <div class="centerreg">
         <form action="login.php" method="post">
           <div class="txt_field">
               <input type="text" name="log_username" required>
               <span></span>
               <label for="log_username">Username</label>
           </div>
           <div class="txt_field">
               <input type="password" name="log_password" maxlength="12" required>
               <span></span>
               <label for="log_password">Password</label>
           </div>
           <input type="submit" name="login" value="Login">
           <div class="signup_link">
               Don't have an account? <a href="register.php">register</a>
           </div>
           <div class="signup_link">
               want to login as admin? <a href="NiceAdmin/NiceAdmin/pages-login.php">Admin</a>
           </div>
         </form>
   </div>
</div> 



       <!-- end section -->

   
    <!-- footer -->
    <footer>
       <div class="container">
          <div class="row">
             <div class="col-lg-4 col-md-6">
                <a href="#"><img src="images/footer_logo.png" alt="#" /></a>
                <ul class="contact_information">
                   <li><span><img src="images/location_icon.png" alt="#" /></span><span class="text_cont">London 145<br>United Kingdom</span></li>
                   <li><span><img src="images/phone_icon.png" alt="#" /></span><span class="text_cont">987 654 3210<br>987 654 3210</span></li>
                   <li><span><img src="images/mail_icon.png" alt="#" /></span><span class="text_cont">demo@gmail.com<br>support@gmail.com</span></li>
                </ul>
                <ul class="social_icon">
                   <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                   <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                   <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                   <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                </ul>
             </div>
             <div class="col-lg-2 col-md-6">
                <div class="footer_links">
                   <h3>Quick link</h3>
                   <ul>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Home</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Features</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Evens</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Markrting</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Blog</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Testimonial</a></li>
                      <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Contact</a></li>
                   </ul>
                </div>
             </div>
             <div class="col-lg-3 col-md-6">
                <div class="footer_links">
                   <h3>Instagram</h3>
                   <ol>
                      <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                      <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                      <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                      <li><img class="img-responsive" src="images/footer_blog.png" alt="#" /></li>
                   </ol>
                </div>
             </div>
             <div class="col-lg-3 col-md-6">
                <div class="footer_links">
                   <h3>Contact us</h3>
                   <form action="index.html">
                      <fieldset>
                         <div class="field">
                            <input type="text" name="name" placeholder="Your Name" required="" />
                         </div>
                         <div class="field">
                            <input type="email" name="email" placeholder="Email" required="" />
                         </div>
                         <div class="field">
                            <input type="text" name="subject" placeholder="Subject" required="" />
                         </div>
                         <div class="field">
                            <textarea placeholder="Message"></textarea>
                         </div>
                         <div class="field">
                            <div class="center">
                               <button class="reply_bt">Send</button>
                            </div>
                         </div>
                      </fieldset>
                   </form>
                </div>
             </div>
          </div>
       </div>
    </footer>
    <div class="cpy">
       <div class="container">
          <div class="row">
             <div class="col-md-12">
                <p>Copyright © 2019 Design by <a href="https://html.design/">Free Html Templates</a></p>
             </div>
          </div>
       </div>
    </div>
    <!-- end footer -->
    <!-- Javascript files-->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/plugin.js"></script>
    <!-- Scrollbar Js Files -->
    <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/custom.js"></script>
 </body>
</html>