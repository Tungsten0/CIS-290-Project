<?php
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

$to = "agritech@gmail.com";
$subject = "New form submission";
$body = "Name: $name\nEmail: $email\nMessage: $message";

// Send the email
mail($to, $subject, $body);

// Optionally, redirect the user to a thank-you page
header("Location: thank_you.html");
exit();
?>