<?php

function check_login($con) 
{
    if(isset($_SESSION['user_id'])) {
        //$id = $_SESSION['user_id'];
        $email = $_POST['User_Email'];
        $password = $_POST['User_Password'];

        $sql = "SELECT * FROM users WHERE User_Email = '$email' AND User_Password = '$password'";

        $result = $con->query($sql);

        if($result && mysqli_num_rows($result) > 0) {
            $user_data = mysqli_fetch_assoc($result);
            return $user_data;
        } else {
            echo "error check login";
        }

        // redirect to login
        header("Location: /CIS-290-Project/login.html");
        die;
    }
}

// random number gen for user id
function random_num($length) {
    $text = "";

    if($length < 7) {
        $length = 7;
    } 

    $len = rand(6, $length);

    for ($i=0; $i < $len; $i++) { 
        $text .= rand(0, 9);
    }

    return $text;
}