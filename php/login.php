<?php

// Connect to the database
$servername = "localhost:3307";
$username = "root";
$password = "usbw";
$dbname = "agritech";
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get the username and password from the login form
$username = $_POST['username'];
$password = $_POST['password'];

// Check if the username and password are correct
$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
$result = $conn->query($sql);

// If the query returns a result, the username and password are correct
if ($result->num_rows > 0) {
  echo "Login successful!";
} else {
  echo "Incorrect username or password.";
}

$conn->close();

?>