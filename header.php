<?php
include "php/connection.php";
session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <title>bullshit</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css" />
  <script src="js/bootstrap.bundle.js"> </script>
</head>
<body>
    <header>
      <style>
        .homenav {
          position: fixed;
          top: 0;
          width: 100%;
        }
        .back {
          background-image: url('/CIS-290-Project/media/background.png');
          background-repeat: no-repeat;
          background-position: top right;
          height: 325px;
        }
      </style>
      <div class="back">
        <div class="homenav d-flex flex-wrap justify-content-between align-items-center py-3" 
        style="background-image: url('/CIS-290-Project/media/clipped.png'); background-position: top right; background-repeat: no-repeat; background-color: white;">
          <img src="media/logo.png" alt="logo" style="height: 50px; width: 200px;">
          <ul class="nav">
            <li style="margin-right: 100px;"><a href="index.php" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">HOME</a></li>
            <li style="margin-right: 100px;"><a href="about.html" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">ABOUT</a></li>
            <li style="margin-right: 100px;"><a href="contact.html" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">CONTACT US</a></li>
            <li><button type="button" class="btn"><a href="php/logout.php" style="text-decoration: none; color: black; margin-left: 50px; margin-right: 20px;">Logout</a></button></li>
          </ul>
        </div>
      </div>
    </header>