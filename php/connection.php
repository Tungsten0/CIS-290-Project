<?php

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";
$dbname = "agritech";


if (!$con = $con = new mysqli($dbhost, $dbuser, $dbpass, $dbname)) {
    die("Connection failed: " . $con->connect_error);
  }

