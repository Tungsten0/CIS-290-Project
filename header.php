<?php
include "php/connection.php";
session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <title>AgriTech</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.css" />
  <script src="js/bootstrap.js"> </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<header>
<div class="container-fluid px-0">
<nav class="navbar navbar-expand-sm navbar-dark bg-black py-0 px-0">
  <a class="navbar-brand" href="../CIS-290-Project/index.php"><img id="logo" src="media/logo.png" style="height: 50px; width: 50px;"> &nbsp;&nbsp;&nbsp;AgriTech</a>
  <span class="v-line"></span>
  <button class="navbar-toggler mr-3" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="feedlist.php">Feed List</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.php">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.php">Contact Us</a>
      </li>
    </ul>
    <div>
      <form action="search.php" method="get">
        <div class="container h-100">
          <div class="d-flex justify-content-center h-100">
            <div class="searchbar">
              <input class="search_input" type="text" name="query" placeholder="Feed Search...">
              <a href="search.php" class="search_icon"><i class="fas fa-search"></i></a>
            </div>
          </div>
        </div>
      </form>
    </div>
    <button type="button" class="btn btn-secondary" style="margin-right: 25px;"><a href="php/logout.php" style="text-decoration: none; color: white;">Logout</a></button>
  </div>
</nav>

</div>

<style>

body {
  background-color: #f5f5f5;
}

.bg-black {
  background-color: #000;
}

#logo {
  width: 90px;
  height: 30px;
  border-radius: 4px;
}

.navbar-brand {
  padding: 14px 20px;
  font-size: 16px;
}

.navbar-nav {
  width: 100%;
}

.nav-item {
  padding: 6px 14px;
  text-align: center;
}

.nav-link {
  padding-bottom: 10px; 
}

.v-line {
  background-color: gray;
  width: 1px;
  height: 20px;
}

.navbar-collapse.collapse.in {
  display: block !important;
}

@media (max-width: 576px) {
  .nav-item {
    width: 100%;
    text-align: left;
  }

  .v-line {
    display: none;
  }
}


.searchbar {
  margin-bottom: auto;
  margin-top: auto;
  height: 25px;
  background-color: #353b48;
  border-radius: 30px;
  padding: 1px;
}

.search_input {
  color: white;
  border: 0;
  outline: 0;
  background: none;
  width: 0;
  caret-color: transparent;
  line-height: 20px;
  transition: width 0.4s linear;
}

.searchbar:hover>.search_input {
  padding: 0 5px;
  width: 450px;
  caret-color: red;
  transition: width 0.4s linear;
}

.searchbar:hover>.search_icon {
  background: white;
  color: #e74c3c;
}

.search_icon {
  height: 20px;
  width: 20px;
  float: right;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  color: white;
  text-decoration: none;
  margin-top: -21px;
}
</style>


</header>