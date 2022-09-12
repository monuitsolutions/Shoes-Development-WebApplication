<?php
session_start();
include("../host.php");

$sno = $_GET['sno'];
$user = $_GET['user'];
$image = $_GET['image'];
$date = $_GET['date'];
$customer = $_GET['customer'];
$custref = $_GET['custref'];
$coloref = $_GET['colorref'];
$artical = $_GET['artical'];
$sole = $_GET['sole'];
$grad = $_GET['grad'];
$hardness = $_GET['hardness'];
$recip = $_GET['recipe'];
$qty = $_GET['qty'];
$other = $_GET['other'];
$povide = $_GET['povide'];
$receip = $_GET['receip'];
$delive = $_GET['delive'];
$feed = $_GET['feed'];

   $sqlinsert = "INSERT INTO `floyd1development` (`SNO`, `IMAGE`, `USER_NAME`,`RECIEVED_DATE`, `CUSTOMER`, `CUSTOMER_REFRENCE`, `COLOR_REFRENCE_NO`, `ARTICLE_COMPOUND_NAME`, `SOLE_MOULD_ARTICLE`, `GRADE`, `HARDNESS`, `RECIPE`, `QTY`, `OTHER_INSTRUCTIONS`, `PROVIDEDBY`, `RECEIVEDBY`, `STATUS`, `DELIVERED_DATE`, `FEEDBACK`, `DATETIME`) 
    VALUES (NULL, '$image', '$user', '$date', '$customer', '$custref', '$coloref', '$artical', '$sole', '$grad', '$hardness', '$recip', '$qty', '$other', '$povide', '$receip', 'DISPATCHED', '$delive', '$feed', current_timestamp())";

    $query = mysqli_query($conn, $sqlinsert);

    // echo $sqlinsert;
    if($query){
        echo "<div class='alert alert-success' role='alert'>
        <h1>Data Successfully Saved</h1>
      </div>";
        // $_SESSION['sno'] = $sno1;
        $del = "DELETE FROM `pandingsamplemaster` WHERE `pandingsamplemaster`.`SNO` = $sno";
        $delquery = mysqli_query($conn, $del);
        if($delquery){
            header("Location: samplepanding.php");
        }
    }else{
  echo "<div class='alert alert-danger' role='alert'>
  <h1>Please Enter Required Data</h1>
</div>";
}

?>