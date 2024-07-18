<?php
session_start();
include 'connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <title>Blog</title>
</head>
<body>
 

<!--------------------- navbar -------------------------->
<?php   include 'includes/navbar.php'; ?>

<!--------------------- navbar -------------------------->

<div>
    <div class="container m-auto mt-3 row">
        <div class="col-8">

        <?php

         $id=$_GET['id'];
         $postQuery="SELECT * FROM content where postid=$id";
         $runPQ=mysqli_query($conn, $postQuery);
         $post=mysqli_fetch_assoc($runPQ)

        ?>

            <div class="card mb-3" style="margin-top: 1rem!important;">
                <div class="card-body">
                  <h2 class="card-title"><?= $post['Heading']?></h2>
                  <span class="badge bg-primary ">posted on <?= date('F jS,Y',strtotime($post['date']))?></span>
                  <span class="badge bg-danger"><?= $post['category']?></span>
                  <div class="border-bottom mt-3"></div>
                  <img src="<?= $post['image']?>" class="img-fluid mb-2 mt-2" alt="Responsive image">
                  <p class="card-text"> <?= $post['content']?> </p><br><br>
                  <a href="#" class="btn btn-primary">Share this post</a>
                  <a href="#" class="btn btn-primary">Comment on this</a>

                </div>
              </div>
        


              <div>
                  <h4>Related Posts</h4>

                  <?php
                  $cat=$post['category'];
                  $pquery="SELECT * FROM content WHERE category='$cat' ";
                  $prun=mysqli_query($conn,$pquery);
                  while($rpost=mysqli_fetch_assoc($prun)){
                    /*if($rpost['id']===$id)
                    {   
                      continue;
                    }*/                
                    ?>
                    
                  <div class="card mb-3" style="max-width: 700px;">
                  <a href="post.php?id=<?= $rpost['postid']?>">
                    <div class="row g-0">
                      <div class="col-md-5" style="background-image: url('<?= $rpost['image']?>');background-size: cover">
                        <!-- <img src="https://images.moneycontrol.com/static-mcnews/2020/04/stock-in-the-news-770x433.jpg" alt="..."> -->
                      </div>
                      <div class="col-md-7">
                        <div class="card-body">
                          <h5 class="card-title"><?= $rpost['Heading'] ?></h5>
                          <p class="card-text text-truncate"><?= $rpost['content']?></p>
                          <p class="card-text"><small class="text-muted">posted on <?= date('F jS,Y',strtotime($rpost['date']))?></small></small></p>
                        </div>
                      </div>
                    </div>
                  </a>
                  </div>  

                    <?php
                  }
                  ?>
                 
              </div>
        
    </div>

    
<!--------------------- sidebar -------------------------->
<?php   include 'includes/sidebar.php'; ?>

<!--------------------- sidebar -------------------------->

<!--------------------- footer -------------------------->
<?php   include 'includes/footer.php'; ?>

<!--------------------- footer -------------------------->

      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>    
</body>
</html>