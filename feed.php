<?php
include "header.php";

if (isset($_GET['FeedID'])) {
  $FeedID = $_GET['FeedID']; 
  
  $stmt = mysqli_prepare($con, 
  "SELECT FeedName, Manufacturer, AnimalType, AnimalStatus, Cost, WeightPerBag, District, Address
  FROM feed
  WHERE FeedID = ?");
    
  mysqli_stmt_bind_param($stmt, "i", $FeedID);
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);
  $result = mysqli_fetch_assoc($data);
  
  $name = $result['FeedName'];
  $manufac = $result['Manufacturer'];
  $type = $result['AnimalType'];
  $status = $result['AnimalStatus'];
  $cost = $result['Cost'];
  $weight = $result['WeightPerBag'];
  $district = $result['District'];
  $address = $result['Address'];
  
  if($result == null) {
    header("Location: error.php");
  }
} else {
  header("Location: error.php");
}

?>

<div class="container text-center" style="margin-top: 10px; margin-bottom: 10px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img alt="feed bag image" style="height: 300px; width: 200px;">
    </div>
    <div class="col-md-8">
      <div class="card-body text-start">
        <h5 class="card-title"><?php echo $name ?> </h5>
        <p class="card-text">
          For: <?php echo $type ?> <br>
          Status: <?php echo $status ?> <br>
          Manufacturer: <?php echo $manufac ?> <br>
          Cost: $ <?php echo $cost ?> <br>
          Weight per bag: <?php echo $weight ?>kg <br>
          District: <?php echo $district ?> <br>
          Address: <?php echo $address ?> <br>
      </div>
    </div>
  </div>
</div>



<?php
include "footer.php";
?>