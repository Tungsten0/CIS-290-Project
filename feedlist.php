<?php

  include "header.php";
  include "php/connection.php";
  include "php/functions.php";
  
  $user_data = check_login($con);

?>

<?php
$district = isset($_GET['district']) ? $_GET['district'] : '';
$animal = isset($_GET['animal']) ? $_GET['animal'] : '';
$status = isset($_GET['status']) ? $_GET['status'] : '';

if ($status == "baby") {
  $status = "Baby";
} elseif ($status == "pregnant") {
  $status =  "Pregnant";
} elseif ($status == "adult") {
  $status = "Adult";
} else {
  $status = "";
}

$price = isset($_GET['price']) ? $_GET['price'] : 'asc';

$sql = "SELECT * FROM feeds WHERE 1";

if (!empty($district)) {
  $sql .= " AND District = '$district'";
}

if (!empty($animal)) {
  $sql .= " AND AnimalType = '$animal'";
}

if (!empty($status)) {
  $sql .= " AND AnimalStatus = '$status'";
}


$sql .= " ORDER BY Price " . ($price === 'asc' ? 'ASC' : 'DESC');

$result = mysqli_query($con, $sql);


?>

<main style="background-color: #f5f5f5;">

  <section class="container-fluid" style="padding: 50px;">

    <div class="row mb-3 g-4 text-center" style="margin-left: 50px; margin-right: 50px;">
      <div class="rounded-4 col-3 themed-grid-col text-center" 
      style="background-color: white;
      margin-right: 50px; position: fixed; top: 50%; left: 15%; transform: translate(-50%, -50%);">
        <form method="get">
          <h5 style="margin-top: 25px; margin-left: 25px;" class="text-start">Price Order:</h5>
          <div style="margin-left: 25px;">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="price" value="asc" checked>
              <label class="form-check-label d-flex align-items-center">Ascending</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="price" value="desc">
              <label class="form-check-label d-flex align-items-center">Descending</label>
            </div>
          </div>

          <h5 class="text-start" style="margin-top: 25px; margin-left: 25px;">Choose the District:</h5>
          <select class="form-control" name="district">
            <option value="">All &darr;</option>
            <option value="Corozal">Corozal District</option>
            <option value="Orange Walk">Orange Walk District</option>
            <option value="Cayo">Cayo District</option>
            <option value="Stann Creek">Stann Creek District</option>
            <option value="Toledo">Toledo District</option>
          </select>

          <h5 class="text-start" style="margin-top: 25px; margin-left: 25px;">Livestock Type:</h5>
          <select class="form-control" name="animal">
            <option value="">All &darr;</option>
            <option value="Cow">Cow</option>
            <option value="Chicken">Chicken</option>
            <option value="Pig">Pig</option>
            <option value="Sheep">Sheep</option>
          </select>

          <h5 class="text-start" style="margin-top: 25px; margin-left: 25px;">Livestock Status:</h5>
          <div style="margin-left: 25px;">
            <div class="form-check">
              <input class="form-check-input" type="radio" name="status" value="" checked>
              <label class="form-check-label d-flex align-items-center" name="status"> All</label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="status" value="adult">
              <label class="form-check-label d-flex align-items-center" name="status"> Adult </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="status" value="baby">
              <label class="form-check-label d-flex align-items-center" name="status"> Baby </label>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="radio" name="status" value="pregnant">
              <label class="form-check-label d-flex align-items-center" name="status"> Pregnant </label>
            </div>
          </div>
          <button style="width: 20rem; margin-top:20px; margin-bottom:20px;" type="submit" class="btn btn-primary">Filter</button>
        </form>
        
      </div>
      <div class="rounded-4 col-8 themed-grid-col" style="background-color: white; margin-left: 30%; margin-bottom: 5%;">
        <div style="margin-top: 20px; margin-bottom: 20px;" id="feed-container">
          <?php
          if (mysqli_num_rows($result) == 0) {
            echo "No results!";
            echo "<div style='height: 400px;'></div>";
            echo '<script>
              console.log("Error! No feeds to display.");
            </script>';
          } else {
            while ($feed = mysqli_fetch_assoc($result)) {
              $feedid = $feed['FeedID'];
              echo '<div class="card text-start" style="margin-top: 10px; margin-bottom: 10px;">
                      <div class="row g-0">
                        <div class="col-md-4">
                          <img> <!-- img go here -->
                        </div>
                        <div class="col-md-8">
                          <div class="card-body">
                            <h5 class="card-title">
                              <a style="text-decoration: none;" href="feed.php?FeedID=' . $feedid . '">' . $feed['FeedName'] . '</a>
                            </h5>
                            <p class="card-text">
                              Manufacturer: ' . $feed['Manufacturer'] . '<br>
                              Price: $' . $feed['Price'] . '<br>
                              Weight per bag: ' . $feed['WeightPerBag'] . 'kg<br>
                              District: ' . $feed['District'] . '
                            </p>
                          </div>
                        </div>
                      </div>
                    </div>';
              
            } 
          }
          
          ?>
        </div>
        
      </div>
    </div>
  </section>

</main>
    
</body>

<?php
include "footer.php";
?>