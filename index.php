<?php
  include "php/connection.php";
  include "php/functions.php";
  
?>
<!DOCTYPE html>
<html>
<head>
  <title>bullshit</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css" />
  <script src="js/bootstrap.js"> </script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <div class="homenav d-flex flex-wrap justify-content-between align-items-center" 
    style="background-image: url('/CIS-290-Project/media/clipped.png'); background-position: top right; background-repeat: no-repeat; background-color: white;">
      <img src="media/logo.png" alt="logo" style="height: 75px; width: 75px;">
      <ul class="nav">
        <li style="margin-right: 100px;"><a href="index.php" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">HOME</a></li>
        <li style="margin-right: 100px;"><a href="about.php" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">ABOUT</a></li>
        <li style="margin-right: 100px;"><a href="contact.php" class="nav-link" style="color: white; text-decoration: none; font-size: large; font-weight: 600;">CONTACT US</a></li>
        <li><button type="button" class="btn"><a href="php/logout.php" style="text-decoration: none; color: black; margin-left: 50px; margin-right: 20px;">Logout</a></button></li>
      </ul>
    </div>
  </div>
</header>

<main>

<div class="container">
  <a href="feedlist.php">
    <div class="card" class="card">
        <div class="row">
          <div class="col">
            <h3 class="title">Feed List</h3>
          </div>
          <div class="col">
          <div class="circle">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                <circle class="stroke" cx="60" cy="60" r="50" />
            </svg>
        </div>
          </div>
        </div>
        <div class="bar" class="card">
            <div class="emptybar"></div>
            <div class="filledbar"></div>
        </div>
    </div>
  </a>
  <a href="about.php" class="card">
    <div class="card">
        <h3 class="title">About Us</h3>
        <div class="bar">
            <div class="emptybar"></div>
            <div class="filledbar"></div>
        </div>
        <div class="circle">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                <circle class="stroke" cx="60" cy="60" r="50" />
            </svg>
        </div>
    </div>
  </a>
  <a href="contact.php" class="card">
    <div class="card">
        <h3 class="title">Contact Us</h3>
        <div class="bar">
            <div class="emptybar"></div>
            <div class="filledbar"></div>
        </div>
        <div class="circle">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg">
                <circle class="stroke" cx="60" cy="60" r="50" />
            </svg>
        </div>
    </div>
  </a>

</div>


<style>

body {
  
  font-family: 'Open Sans', sans-serif;
}

.container {
  position: absolute;
  height: 400px;
  width: 700px;
  top: 50%;
  left: calc(50% - 450px);
  display: flex;
}

.card {
  display: flex;
  height: 350px;
  width: 350px;
  background-color: #17141d;
  border-radius: 10px;
  box-shadow: -1rem 0 3rem #000;
/*   margin-left: -50px; */
  transition: 0.4s ease-out;
  position: relative;
  left: 0px;
}

.card:not(:first-child) {
    margin-left: -50px;
}

.card:hover {
  transform: translateY(-50px);
  transition: 0.4s ease-out;
}

.card:hover ~ .card {
  position: relative;
  left: 60px;
  transition: 0.4s ease-out;
}

.title {
  color: white;
  font-weight: 300;
  position: absolute;
  left: 20px;
  top: 15px;
}

.bar {
  position: absolute;
  top: 100px;
  left: 20px;
  height: 5px;
  width: 300px;
}

.emptybar {
  background-color: #2e3033;
  width: 100%;
  height: 100%;
}

.filledbar {
  position: absolute;
  top: 0px;
  z-index: 3;
  width: 0px;
  height: 100%;
  background: rgb(0,154,217);
  background: linear-gradient(90deg, rgba(0,154,217,1) 0%, rgba(217,147,0,1) 65%, rgba(255,186,0,1) 100%);
  transition: 0.6s ease-out;
}

.card:hover .filledbar {
  width: 200px;
  transition: 0.4s ease-out;
}

.circle {
  position: absolute;
  top: 150px;
  left: calc(50% - 60px);
}

.stroke {
  stroke: white;
  stroke-dasharray: 360;
  stroke-dashoffset: 360;
  transition: 0.6s ease-out;
}

svg {
  fill: #17141d;
  stroke-width: 2px;
}

.card:hover .stroke {
  stroke-dashoffset: 300;
  transition: 0.6s ease-out;
}


</style>

</main>

<?php
include "footer.php";
?>