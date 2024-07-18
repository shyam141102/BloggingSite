<?php

if(isset($_POST["submit"])){

    $file = $_FILES['file'];

    $filename= $_FILES['file']['name'];
    $fileTmpName= $_FILES['file']['tmp_name'];
    $filesize= $_FILES['file']['size'];
    $fileError= $_FILES['file']['error'];
    $fileType= $_FILES['file']['type'];

    $fileExt = explode('.',$filename);
    $fileActualExt = strtolower(end($fileExt));

    $allowed = array('jpg','jpeg','png','pdf');

    if(in_array($fileActualExt, $allowed)){
            if($fileError === 0){
                if($filesize < 500000){
                    $filenamenew = uniqid('', true).".".$fileActualExt;
                    $fileDestination = 'uploads/'.$filenamenew;

                    move_uploaded_file($fileTmpName, $fileDestination);

                }
                else{
                    echo"";
                }
            }
            else{
                echo"";
            }
    }
    else{
        echo"";
    }


}
?>