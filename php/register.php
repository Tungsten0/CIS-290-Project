<?php
session_start();
    include("connection.php");
    include("functions.php");

    if($_SERVER['REQUEST_METHOD'] == "POST") {
        //check if post from forms was used

        //get form data
        $username = $_POST['User_Name'];
        $email = $_POST['User_Email'];
        $password = $_POST['User_Password'];

        // Validate form data
        if (empty($username) || empty($email) || empty($password)) {
            echo "Please fill all the required fields!";
        } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo "Invalid email format!";
        } else {
            $user_id = random_num(6);

            $query = $con->prepare("INSERT INTO users (User_ID, User_Name, User_Email, User_Password) VALUES (?, ?, ?, ?)");
            $query->bind_param("ssss", $user_id, $username, $email, $password);

            // Execute the statement
            if ($query->execute()) {
            // Display success message
            echo "Registration successful!";
            } else {
            // Display error message
            echo "Error: " . $query->error;
            }

            header("Location: /login/login.html");
            die;

        }
    }


?>