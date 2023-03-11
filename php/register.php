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

// Get the user information from the registration form
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

// Insert the user information into the database
$sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";

if ($conn->query($sql) === TRUE) {
  echo "Registration successful!";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>