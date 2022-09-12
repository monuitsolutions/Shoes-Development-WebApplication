<?php
   session_start();
   include("../host.php");
   $userid = $_SESSION['userid'];
   if($userid == true){
   $sql = "SELECT * FROM `users` WHERE NAME='$userid'";
   $query = mysqli_query($conn, $sql);
   
   if($row = mysqli_fetch_assoc($query)){
       $name = $row['NAME'];
   }
}
else{
   header("Location: ../login.php");
}
   
?>
    <style type="text/css">
@media print {
    #printbtn {
        display :  none;
    }
}
</style>
<?php

include("../host.php");

$sno = $_GET['sno'];
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
$status = $_GET['status'];
$delive = $_GET['delive'];
$feed = $_GET['feed'];
$dt = $_GET['datetime'];
?>



<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Preview Form</title>
  </head>
  <body>
  <nav class="navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item active"><a href="../FORM/form1.php" class="nav-link text-white">New Sample</a></li>
        <li class="nav-item active"><a href="../PANDINGMASTER/samplepanding.php" class="nav-link text-white">Pending Sample</a></li>
                    <li class="nav-item "><a href="../DISPATCHMASTER/dispatch.php" class="nav-link text-white">Dispatch</a></li>
                    <li class="nav-item "><a href="../PARTYMASTER/partys.php" class="nav-link text-white">Party Master</a></li>
                    <!-- <li class="nav-item "><a href="curd/addparty.php" class="nav-link text-white">Reports</a></li> -->
                    <li class="nav-item "><a class="nav-link text-white name"><?php echo $name; ?></a></li>
                    <li class="nav-item "><a href="../PHP/logout.php" class="nav-link text-white">Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
    <input type="hidden" value="<?php echo $name; ?>" name="username">
    <table class="d-flex flex-wrap mx-5">
        <h1 class="bg-dark text-white mx-5">DRF Details </h1>
            <tr>
                <th>Sno</th>
                <td class="ml-3"><?php echo $sno; ?></td>
            </tr>
            <tr>
                <th scope="col">Received Date</th>
                <td class="ml-3"><?php echo $date; ?></td>
            </tr>
            <tr>
                <th scope="col">Customer</th>
                <td class="ml-3"><?php echo $customer; ?></td>
            </tr>
            
            <tr> 
                <th scope="col">Cust Refre No. </th>
                <td class="ml-3"><?php echo $custref; ?></td>
            </tr>
            <tr>
                <th scope="col">Color Refre No. </th>
                <td class="ml-3"><?php echo $coloref; ?></td>
            </tr>
            <tr>
                <th scope="col">Article </th>
                <td class="ml-3"><?php echo $artical; ?></td>
            </tr>
            <tr>
                <th scope="col">Sole/Mould </th>
                <td class="ml-3"><?php echo $sole; ?></td>
            </tr>
            <tr>
                <th scope="col">Grade</th>
                <td class="ml-3"> <?php echo $grad; ?></td>
            </tr>
            <tr>
                <th scope="col">Hardness </th>
                <td class="ml-3"><?php echo $hardness; ?></td>
            </tr>
            <tr>
                <th scope="col">Recipe </th>
                <td class="ml-3"><?php echo $recip; ?></td>
            </tr>
            <tr>
                <th scope="col">Qty</th>
                <td class="ml-3"> <?php echo $qty; ?></td>
            </tr>
            <tr>
                <th scope="col">Other Instr </th>
                <td class="ml-3"><?php echo $other; ?></td>
            </tr>
            <tr>
                <th scope="col">Provided By </th>
                <td class="ml-3"><?php echo $povide; ?></td>
            </tr>
            <tr>
                <th scope="col">Received By</th>
                <td class="ml-3"><?php echo $receip; ?></td>
            </tr>
            <tr>
                <th scope="col">Status </th>
                <td class="ml-3"><?php echo $status; ?></td>
            </tr>
            <tr>
                <th scope="col">Deliv Date</th>
                <td class="ml-3"><?php echo $delive; ?></td>
            </tr>
            <tr>
                <th scope="col">Feedback </th>
                <td class="ml-3"><?php echo $sno; ?></td>
            </tr>
            <tr>
                <th scope="col">DateTime </th>
                <td class="ml-3"><?php echo $dt; ?></td>
            </tr>       
            <tr>
                <img src='image' alt="">
                <td class="ml-3">
                </td>
                
            </tr>       
    </table>
    <button class="btn btn-primary mx-5" id="printbtn" onclick="window.print()">Print</button>
    <img src='<?php echo $image; ?>' style="width:500px; height:450px;"/>
    <p style="margin-bottom:10px;"></p>
    </body>
</html>
