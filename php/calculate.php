<?php
session_start();
require("connection.php");
include("data.php");

$_SESSION['totalbags'] = 0;
$_SESSION['totalprice'] = 0;

if(isset($_POST['number']) && isset($_POST['months']) && isset($_POST['FeedID'])) {
  echo '<script>console.log("in if statement");</script>';
  $feed_id = $_POST['FeedID'];

  $number = $_POST['number'];
  // $weight = $_POST['weight'];
  $months = $_POST['months'];

  $totalbags = 0;
  $totalprice = 0;

  if($_POST['number'] == null || $_POST['months'] == null || $_POST['number'] == 0 || $_POST['months'] == 0) {
    header("Location: ../feed.php?FeedID=" . $feed_id);
  }

  //sql for getting info from feeds table
  $stmt = mysqli_prepare($con, 
  "SELECT FeedName, Manufacturer, AnimalType, AnimalStatus, Price, WeightPerBag, District, Address
  FROM feeds
  WHERE FeedID = ?");
    
  mysqli_stmt_bind_param($stmt, "i", $feed_id);
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);
  $result = mysqli_fetch_assoc($data);

  $name = $result['FeedName'];
  $type = $result['AnimalType'];
  $status = $result['AnimalStatus'];
  $price = $result['Price'];
  $weight = $result['WeightPerBag'];


  //sql for getting info from nutrition table for calculations
  $sql = mysqli_prepare($con, 
  "SELECT 
  Carbs, Protein, Fat, Calcium, Phosphorus, Magnesium, Microminerals, 
  VitaminA, VitaminD, VitaminE, VitaminK, VitaminBComplex
  FROM nutrition WHERE FeedID = ?");
    
  mysqli_stmt_bind_param($sql, "i", $feed_id);
  mysqli_stmt_execute($sql);
  $data_nutrients = mysqli_stmt_get_result($sql);
  $nut = mysqli_fetch_assoc($data_nutrients);


  //combine minerals and vitamins for total
  $total_minerals = $nut['Calcium'] + $nut['Phosphorus'] + $nut['Magnesium']  + $nut['Microminerals'];
  $total_vitamins = $nut['VitaminA'] + $nut['VitaminD'] + $nut['VitaminE']  + $nut['VitaminK'] + $nut['VitaminBComplex'];

  $feedper = 0;
  //in kg and the assigned should be sufficient per day

  //switch case to assign feedper the amount of kg depending on animal type and status
  switch($type) {
    case "Cow":
       if ($status == "Baby") {
        if($nut['Carbs'] > $cow_baby['carbs'] || $nut['Protein'] > $cow_baby['protein'] ||
        $nut['Fat'] > $cow_baby['fat'] || $total_minerals > $cow_baby['minerals'] || $total_vitamins > $cow_baby['vitamins']) {
          $feedper = 6;
          echo "feed is more stuff than baby cow req";
        }
      } elseif ($status == "Pregnant") {
        if($nut['Carbs'] > $cow_pregnant['carbs'] || $nut['Protein'] > $cow_pregnant['protein'] ||
        $nut['Fat'] > $cow_pregnant['fat'] || $total_minerals > $cow_pregnant['minerals'] || $total_vitamins > $cow_pregnant['vitamins']) {
          $feedper = 10;
          echo "feed is more stuff than pregnant cow req";
        }
      } else { //adult
        if($nut['Carbs'] < $cow_adult['carbs'] || $nut['Protein'] < $cow_adult['protein'] ||
        $nut['Fat'] < $cow_adult['fat'] || $total_minerals < $cow_adult['minerals'] || $total_vitamins < $cow_adult['vitamins']) {
          $feedper = 8;
          echo "feed is more stuff than adult cow req";
        }
      }
      break;

    case "Pig":
      echo "is pig!";
      if ($status == "Baby") {
        if($nut['Carbs'] > $pig_baby['carbs'] || $nut['Protein'] > $pig_baby['protein'] ||
        $nut['Fat'] > $pig_baby['fat'] || $total_minerals > $pig_baby['minerals'] || $total_vitamins > $pig_baby['vitamins']) {
          $feedper = 4;
          echo "feed is more stuff than baby pig req";
        }
      } elseif ($status == "Pregnant") {
        if($nut['Carbs'] > $pig_pregnant['carbs'] || $nut['Protein'] > $pig_pregnant['protein'] ||
        $nut['Fat'] > $pig_pregnant['fat'] || $total_minerals > $pig_pregnant['minerals'] || $total_vitamins > $pig_pregnant['vitamins']) {
          $feedper = 6;
          echo "feed is more stuff than pregnant pig req";
        }
      } else { //adult
        if($nut['Carbs'] < $pig_adult['carbs'] || $nut['Protein'] < $pig_adult['protein'] ||
        $nut['Fat'] < $pig_adult['fat'] || $total_minerals < $pig_adult['minerals'] || $total_vitamins < $pig_adult['vitamins']) {
          $feedper = 5;
          echo "feed is more stuff than adult pig req";
        }
      }
      break;

    case "Chicken":
      if ($status == "Baby") {
        if($nut['Carbs'] > $chick_baby['carbs'] || $nut['Protein'] > $chick_baby['protein'] ||
        $nut['Fat'] > $chick_baby['fat'] || $total_minerals > $chick_baby['minerals'] || $total_vitamins > $chick_baby['vitamins']) {
          $feedper = 1;
          echo "feed is more stuff than baby chick req";
        }
      } elseif ($status == "Pregnant") {
        if($nut['Carbs'] > $chick_pregnant['carbs'] || $nut['Protein'] > $chick_pregnant['protein'] ||
        $nut['Fat'] > $chick_pregnant['fat'] || $total_minerals > $chick_pregnant['minerals'] || $total_vitamins > $chick_pregnant['vitamins']) {
          $feedper = 3;
          echo "feed is more stuff than pregnant chick req";
        }
      } else { //adult
        if($nut['Carbs'] < $chick_adult['carbs'] || $nut['Protein'] < $chick_adult['protein'] ||
        $nut['Fat'] < $chick_adult['fat'] || $total_minerals < $chick_adult['minerals'] || $total_vitamins < $chick_adult['vitamins']) {
          $feedper = 2;
          echo "feed is more stuff than adult chick req";
        }
      }
      break;

    case "Sheep":
      if ($status == "Baby") {
        if($nut['Carbs'] > $sheep_baby['carbs'] || $nut['Protein'] > $sheep_baby['protein'] ||
        $nut['Fat'] > $sheep_baby['fat'] || $total_minerals > $sheep_baby['minerals'] || $total_vitamins > $sheep_baby['vitamins']) {
          $feedper = 3;
          echo "feed is more stuff than baby sheep req";
        }
      } elseif ($status == "Pregnant") {
        if($nut['Carbs'] > $sheep_pregnant['carbs'] || $nut['Protein'] > $sheep_pregnant['protein'] ||
        $nut['Fat'] > $sheep_pregnant['fat'] || $total_minerals > $sheep_pregnant['minerals'] || $total_vitamins > $sheep_pregnant['vitamins']) {
          $feedper = 6;
          echo "feed is more stuff than pregnant sheep req";
        }
      } else { //adult
        if($nut['Carbs'] < $sheep_adult['carbs'] || $nut['Protein'] < $sheep_adult['protein'] ||
        $nut['Fat'] < $sheep_adult['fat'] || $total_minerals < $sheep_adult['minerals'] || $total_vitamins < $sheep_adult['vitamins']) {
          $feedper = 5;
          echo "feed is more stuff than adult sheep req";
        }
      }
      break;

    
  }

  //final calculations calculating total weight, total bags of feed, and total price
  $subtotal = $weight/($feedper * $number);

  $totalbags = (30 * $months)/$subtotal;
  $totalprice = $totalbags * $price;

  $_SESSION['totalbags'] = $totalbags;
  $_SESSION['totalprice'] = $totalprice;

  header("Location: ../feed.php?FeedID=". $feed_id);


  //debugging info
  
  // echo $_SESSION['totalbags'];
  // echo $_SESSION['totalprice'];
  
  // echo "<br> <br> <br> kg per feed per animal: " . $feedper . "<br>";
  // echo "<br> total months " . $months . "<br>";
  // echo "<br> number of animals " . $number . "<br>";
  // echo "<br> weight of 1 feed bag " . $weight . "<br>";
  // echo "<br> price of 1 feed bag: $" . $price . "<br>";

  // echo "<br> total kg of feed needed: " . ($feedper * $number);
  // echo "<br> how many days can the animals be fed with 1 bag " .  $subtotal;  

  // echo "<br> bags to feed req " .  round($totalbags);
  // echo "<br> total price: $" . round($totalprice, 2);

  
  // echo "<br>";
  // echo "<br>";
  // echo "<br>";

  // echo "feed id: " . $feed_id . "<br>";
  // echo "status " . $status . "<br>";
  // echo "total minerals: " . $total_minerals . "<br>";
  // echo "total vitamins: " . $total_vitamins . "<br>";
  
  // foreach ($nut as $column_name => $data) {
  //   echo $column_name . ": " . $data . "<br>";
  // }

}


