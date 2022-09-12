<?php
    include('../host.php');
    $sno = $_GET['delete'];
    $del = "DELETE FROM `pandingsamplemaster` WHERE `SNO` = $sno";
    $delquery = mysqli_query($conn, $del);
    if($delquery){
        header("Location: samplepanding.php");
    }
?>