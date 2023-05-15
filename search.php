<?php
  include "header.php";
  include "php/connection.php";
  include "php/functions.php";

?>

<main>
<body>
<div class="container text-center">

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

  if (!($data == null)) {
    while ($row = mysqli_fetch_assoc($data)) {
      // add each row to the results array, with query highlighted
      $row['FeedID'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['FeedID']);
      $row['FeedName'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['FeedName']);
      $row['Manufacturer'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Manufacturer']);
      $row['Description'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Description']);
      $row['Address'] = preg_replace("/($query)/i", "<strong>$1</strong>", $row['Address']);
      $results[] = $row;
    }
  
    echo '
    <section class="container" style="margin-top: 10px;">
      <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex align-items-center" role="search" action="search.php" method="get">
        <input class="form-control me-2" type="text" name="query" placeholder="Search..." aria-label="Search">
      </form>
      <h2 style="color: white">Search Results for <span style="color:lightyellow; font-weight: 400; font-style:italic;">' . $query . '</span></h2>
      <p style="font-style: italic;">Note that search function is space sensative</p>
      <br>';
        if (count($results) > 0) {
          echo "<table>";
          echo "
          <tr style=\"color: white;\">
            <th style='padding: 20px; font-size: 20px;'>Feed ID</th>
            <th style='padding: 20px; font-size: 20px;'>Name</th>
            <th style='padding: 20px; font-size: 20px;'>Manufacturer</th>
            <th style='padding: 20px; font-size: 20px;'>Description</th>
            <th style='padding: 20px; font-size: 20px;'>Manufacturer's Address</th>
          </tr>";
          foreach ($results as $row) {
            $id = $row["FeedID"];
            echo "
              <tr style=\"color: white;\">
                <td style='padding: 20px;'><a href=\"feed.php?FeedID={$id}\" class=\"btn btn-secondary btn-sm\" style=\"text-decoration: none; color: white;\">{$id}</a></td>
                <td style='padding: 20px;'>{$row["FeedName"]}</td>
                <td style='padding: 20px;'>{$row["Manufacturer"]}</td>
                <td style='padding: 20px;''>{$row["Description"]}</td>
                <td style='padding: 20px;'>{$row["Address"]}</td>
              </tr>";
          }
          echo "</table> </section>";
        }
  } else {
    echo '
    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex align-items-center" role="search" action="search.php" method="get">
      <input class="form-control me-2" type="text" name="query" placeholder="Search..." aria-label="Search">
    </form>
    <section class="container" style="margin-top: 30px;">
      <h2 style="color: red;">Search Results for <span style="color:black; font-weight: 400; font-style:italic;">' . $query . '</span></h2>
      <h4 style="color: red;">No Search Results found for ' . $query . ' </h4>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </section>  
    ';
  }
  

} else {
  echo '
  <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex align-items-center" role="search" action="search.php" method="get">
    <input class="form-control me-2" type="text" name="query" placeholder="Search..." aria-label="Search">
  </form>
  <section class="container" style="margin-top: 30px;">
  <h2 style="color: red;">No Query Detected</h2>
  <h4 style="color: red;">No Search Results found for ' . $query . ' </h4>
  <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </section>  
    ';
}

?>

</div>
</main>
    
</body>

<?php
include "footer.php";
?>