<?php
  include "header.php";
  include "php/connection.php";
  include "php/functions.php";

?>

<?php
if (isset($_GET['query'])) {
  $query = $_GET['query'];
  
  //search in courses table
  $stmt = mysqli_prepare($con, 
  "SELECT *
    FROM feeds
    WHERE FeedName LIKE '%$query%'
    OR Manufacturer LIKE '%$query%'
    OR Address LIKE '%$query%'
    OR Description LIKE '%$query%';");
  
  mysqli_stmt_execute($stmt);
  $data = mysqli_stmt_get_result($stmt);

  $results = [];
  while ($row = mysqli_fetch_assoc($data)) {
    // add each row to the results array, with query highlighted
    $row['FeedID'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['FeedID']);
    $row['FeedName'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['FeedName']);
    $row['Manufacturer'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Manufacturer']);
    $row['Description'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Description']);
    $row['Address'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Address']);
    $results[] = $row;
  }

}

?>


<body>
<main style="background-color: #f5f5f5;">
<div class="container">
    <br/>
	<div class="row justify-content-center">
                        <div class="col-12 col-md-10 col-lg-8">
                            
                        </div>
                        <!--end of col-->
                    </div>
</div>
<?php

if (!isset($_GET['query'])) {
  echo '<section class="container" style="margin-top: 30px;">
  <h2 style="color: #200174;">Search Results for <span style="color:black; font-weight: 400; font-style:italic;">No Query Detected</span></h2>
  <p style="font-style: italic;">Note that search function is space sensative</p>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>';
} else {
  echo '
  <section class="container" style="margin-top: 10px;">
    <h2 style="color: #200174;">Search Results for <span style="color:black; font-weight: 400; font-style:italic;">' . $query . '</span></h2>
    <p style="font-style: italic;">Note that search function is space sensative</p>
    <br>';
      if (count($results) > 0) {
        echo "<table>";
        echo "
        <tr>
          <th style='padding: 20px; font-size: 20px;'>Feed ID</th>
          <th style='padding: 20px; font-size: 20px;'>Name</th>
          <th style='padding: 20px; font-size: 20px;'>Manufacturer</th>
          <th style='padding: 20px; font-size: 20px;'>Description</th>
          <th style='padding: 20px; font-size: 20px;'>Address</th>
        </tr>";
        foreach ($results as $row) {
          $id = $row["FeedID"];
          echo "
            <tr>
              <td style='padding: 20px;'><a href=\"feed.php?FeedID={$id}\" style=\"text-decoration: none;\">{$id}</a></td>
              <td style='padding: 20px;'>{$row["FeedName"]}</td>
              <td style='padding: 20px;'>{$row["Manufacturer"]}</td>
              <td style='padding: 20px;''>{$row["Description"]}</td>
              <td style='padding: 20px;'>{$row["Address"]}</td>
            </tr>";
        }
        echo "</table>";
      }
}

?>

</main>
    
</body>

<?php
include "footer.php";
?>