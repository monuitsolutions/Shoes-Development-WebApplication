<?php
include("../host.php");

$query = "SELECT * FROM `floyd1development`";

 $result = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result)){
    $sno = $row['SNO'];
    $sno = $sno + 1;
}

?>
    <?php
    // echo $_GET['update'];
    // echo $_POST['snoEdit'];

    if (isset($_POST['submit'])) {
      $username = $_POST['username'];
      $receiveddate = $_POST['receiveddate'];
      $customer = $_POST['customer'];
      $customerref = $_POST['customerref'];
      $colorref = $_POST['colorref'];
      $article = $_POST['customerarticle'];
      $sole_mould = $_POST['sole_mould'];
      $grade = $_POST['grade'];
      $hardness = $_POST['hardness'];
      $recipe = $_POST['recipe'];
      $qty = $_POST['qty'];
      $otherinstructions = $_POST['otherinstructions'];
      $providedby = $_POST['providedby'];
      $receivedby = $_POST['receivedby'];
      $delivereddate = $_POST['delivereddate'];
      $feedback = $_POST['feedback'];
      $image = $_FILES["image"]["name"];
      $filetmp = $_FILES["image"]["tmp_name"];

      // Old Name Of The file
      $old_name = $image;

      // New Name For The File
      $new_name = $sno.".jpg";

      // using rename() function to rename the file
      rename($old_name, $new_name);

      $folder = "../images/" . $new_name;

      if (!empty($receiveddate) && !empty($customer) && !empty($colorref) && !empty($article) && !empty($grade) && !empty($hardness) && !empty($recipe) && !empty($qty) && !empty($providedby) && !empty($receivedby)) {

        $sqlinsert = "INSERT INTO `pandingsamplemaster` (`SNO`, `IMAGE`, `USER_NAME`,`RECIEVED_DATE`, `CUSTOMER`, `CUSTOMER_REFRENCE`, `COLOR_REFRENCE_NO`, `ARTICLE_COMPOUND_NAME`, `SOLE_MOULD_ARTICLE`, `GRADE`, `HARDNESS`, `RECIPE`, `QTY`, `OTHER_INSTRUCTIONS`, `PROVIDEDBY`, `RECEIVEDBY`, `STATUS`, `DELIVERED_DATE`, `FEEDBACK`, `DATETIME`) 
        VALUES (NULL, '$folder', '$username', '$receiveddate', '$customer', '$customerref', '$colorref', '$article', '$sole_mould', '$grade', '$hardness', '$recipe', '$qty', '$otherinstructions', '$providedby', '$receivedby', 'PENDING', '$delivereddate', '$feedback', current_timestamp())";

        $query = mysqli_query($conn, $sqlinsert);

        if ($query) {
          move_uploaded_file($filetmp, $folder);
          echo "<div class='alert alert-success' role='alert'>
            <h1>Data Successfully Saved</h1>
          </div>";

          header("Location: form1.php?status=success");
        }
      } else {
        echo "<div class='alert alert-danger position-absolute' role='alert'>
      <h1>Please Enter Required Data</h1>
    </div>";
      }
    }

    ?>