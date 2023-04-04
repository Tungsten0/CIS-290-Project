<?php
session_start();
    include("connection.php");
    include("functions.php");

if($_SERVER['REQUEST_METHOD'] == "POST") {
    //check if post from forms was used

    //read database
    $email = $_POST['User_Email'];
    $password = $_POST['User_Password'];

    // Validate form data
    if (empty($email) || empty($password)) {
        echo "Please enter the email and password!";
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Invalid email format!";
    } else {
        //check email is correct
        $query = "select * from users where User_Email = '$email' limit 1";
        $result = mysqli_query($con, $query);

        //if email correct, check password
        if($result) {
            if($result && mysqli_num_rows($result) > 0) {
                $user_data = mysqli_fetch_assoc($result);
                if($user_data['User_Password'] === $password) {
                    $_SESSION['user_id'] = $user_data['user_id'];
                    header("Location: index.php");
                    die;
                }
            }
        }
        echo "Invalid email or password!";

    }
}


?>
