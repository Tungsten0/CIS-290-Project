<?php
include "header.php";

if (isset($_GET['feedID'])) {
  $feedID = $_GET['feedID'];
  
  $stmt = mysqli_prepare($con, 
  "SELECT FeedName, Manufacturer, AnimalType, AnimalStatus, Cost, WeightPerBag, District, Address
  FROM feed
  WHERE feedID = ?");
    
  mysqli_stmt_bind_param($stmt, "i", $feedID);
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
  
}

?>

<div class="card text-start" style="margin-top: 10px; margin-bottom: 10px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><?php $row['FeedName'] ?> </h5>
        <p class="card-text">Manufacturer: ' . $row['Manufacturer'] . 
                      '<br>Cost: $' . $row['Cost'] . 
                      '<br>Weight per bag: ' . $row['WeightPerBag'] . 
                      'kg<br> District: ' . $row['District'] . '
                  </div>
                </div>
              </div>
</div>



<?php
include "footer.php";
?>