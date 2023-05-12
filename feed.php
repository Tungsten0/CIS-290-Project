<?php
include "header.php";
include "data.php";

if (isset($_GET['FeedID'])) {
  $FeedID = $_GET['FeedID']; 
  
  $stmt = mysqli_prepare($con, 
  "SELECT FeedName, Manufacturer, AnimalType, AnimalStatus, Price, WeightPerBag, District, Address, ProductCover
  FROM feeds
  WHERE FeedID = ?");
    
  mysqli_stmt_bind_param($stmt, "i", $FeedID);
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);
  $result = mysqli_fetch_assoc($data);
  
  $name = $result['FeedName'];
  $manufac = $result['Manufacturer'];
  $type = $result['AnimalType'];
  $status = $result['AnimalStatus'];
  $price = $result['Price'];
  $weight = $result['WeightPerBag'];
  $district = $result['District'];
  $address = $result['Address'];
  $picture = $result['ProductCover'];
  
  if($result == null) {
    header("Location: error.php?error=noresult");
  }

  $sql = mysqli_prepare($con, 
  "SELECT 
  Carbs, Protein, Fat, Calcium, Phosphorus, Magnesium, Microminerals, 
  VitaminA, VitaminD, VitaminE, VitaminK, VitaminBComplex
  FROM nutrition WHERE FeedID = ?");
    
  mysqli_stmt_bind_param($sql, "i", $FeedID);
  mysqli_stmt_execute($sql);
  $data_nutrients = mysqli_stmt_get_result($sql);
  $nut = mysqli_fetch_assoc($data_nutrients);

} else {
  header("Location: error.php?error=feedidnotset");
}

?>
<div class="container text-center" style="margin-top: 10px; margin-bottom: 10px;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<?php echo $picture; ?>" alt="feed bag image" style="height: 500px; width: 500px;">
    </div>
    <div class="col-md-8">

      <div class="row d-flex flex-row">
        <div class="col-md-6">
          <div class="card flex-column">
            <div class="card-header" style="font-size: 30px;">Feed Info</div>
            <div class="card-body text-start">
              <div style="padding: 20px;">
                <span style="font-size: 20px;">
                  <span style='font-weight: 500;'>Feed Name: </span><?php echo $name ?> <br>
                  <span style='font-weight: 500;'>For: </span><?php echo $type ?> <br>
                  <span style='font-weight: 500;'>Status: </span><?php echo $status ?> <br>
                  <span style='font-weight: 500;'>Manufacturer: </span><?php echo $manufac ?> <br>
                  <span style='font-weight: 500;'>Price: $ </span><?php echo $price ?> <br>
                  <span style='font-weight: 500;'>Weight per bag: </span><?php echo $weight ?>kg <br>
                  <span style='font-weight: 500;'>District: </span><?php echo $district ?> <br>
                  <span style='font-weight: 500;'>Address: </span><?php echo $address ?> <br>
                </span>
              </div>
            </div>
          </div>
          <div class="card flex-column" style="margin-top: 15px;">
            <div class="card-header" style="font-size: 30px;">Calculator</div>
            <div class="card-body">
              <form action="php/calculate.php" method="post">
                <input type="hidden" name="FeedID" value="<?php echo $_GET['FeedID']; ?>">
                <p style="margin-bottom: 2px;">How many livestock will you be feeding?</p>
                <input type="number" style="margin-bottom: 15px;" name="number">
                <!-- <p style="margin-bottom: 2px;">What is the average weight of one animal?</p>
                <input type="number" style="margin-bottom: 15px;" name="weight"> -->
                <p style="margin-bottom: 2px;">How many months will you like to feed them for?</p>
                <input type="number" style="margin-bottom: 15px;" name="months"> <br>
                <input type="submit" value="Calculate">
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-column">
            <div class="card-header" style="font-size: 30px;">Nutritional Info</div>
            <div class="card-body text-start">
              <div>
                <span style="font-size: 19px;">
                  <?php 
                    foreach ($nut as $column_name => $data) {
                      echo "<span style='font-weight: 500;'>" . $column_name . "</span>" . ": " . $data . "<br>";
                    }
                  ?>
                </span>
              </div>
            </div>
          </div>
          <div class="card flex-column" style="margin-top: 15px;">
            <div class="card-header" style="font-size: 30px;">Calculation Results</div>
            <div class="card-body text-start">
              <div style="padding: 20px;">
                <span style="font-size: 20px;">
                  <span style='font-weight: 500;'>Total feed bags required: </span><?php echo round($_SESSION['totalbags']); ?> <br>
                  <span style='font-weight: 500;'>Total Price: $</span><?php echo round($_SESSION['totalprice'], 2); ?>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
  </div>
</div>
<style>
  /* hide arrows in input number */
  input::-webkit-outer-spin-button,
  input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
  }
</style>


<?php
include "footer.php";
?>