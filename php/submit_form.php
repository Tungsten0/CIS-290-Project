<?php
$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];

$to = "agritech@gmail.com";
$subject = "New form submission";
$body = "Name: $name\nEmail: $email\nMessage: $message";

// Send the email
mail($to, $subject, $body);

header("Location: index.php?msg=thankyou");
exit();
?>