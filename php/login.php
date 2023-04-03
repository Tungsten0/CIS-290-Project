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

<!DOCTYPE html>
<html>
    <head>
        <title>Login AgriTech</title>
        <link rel="stylesheet" href="login-register.css">
    </head>
    <body>
        <header>
            <nav>
                <a href="#">Home</a>
                <a href="#">About</a>
                <a href="#">Contact</a>
            </nav>
        </header>
        <main>
            <section>
                <div class="form-box">
                    <div class="form-value">
                        <form method="POST" action="login.php">
                            <h2>Login</h2>
                            <div class="inputbox">
                                <ion-icon name="mail-open-outline"></ion-icon>
                                <input type="email" required placeholder="Email" name="User_Email">
                            </div>
                            <div class="inputbox">
                                <ion-icon name="lock-closed-outline"></ion-icon>
                                <input type="password" required placeholder="Password" name="User_Password">
                            </div>
                            <button>Login</button>
                            <div class="smalltext">
                                <p>No Account? <a href="register.php">Register here</a></p>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    </body>
</html>