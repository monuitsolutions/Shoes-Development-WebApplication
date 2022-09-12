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
}else{
    header("Location: ../login.php");
}

 $sno = $_GET['sno'];
 $partyname = $_GET["partyname"];

 if(isset($_POST["update"])){
     $newparty = $_POST["newparty"];
     if(!empty($newparty)){

         $sqlupdateparty = "UPDATE `party_name` SET TAG_NAME='$newparty' WHERE SNO=$sno";
         $sqlupdatequery = mysqli_query($conn, $sqlupdateparty);
         if($sqlupdatequery){
            echo "<div class='alert alert-success' role='alert'>
            <h1>Data Successfully Saved</h1>
          </div>";
          header('Location: partys.php');
         }else {
            echo "<div class='alert alert-danger' role='alert'>
            <h1>Please Enter Required Data</h1>
          </div>";
         }
     }
 }
?>

<!DOCTYPE html>
<html lang="en">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
    <div class="container col-8 mt-4">
        <form action="" method="post">
        <legend class="bg-dark text-white fs-2 col-8" style="padding-left:10px;">Edit Party Name</legend>
              <div class="mb-3 col-8 d-flex">
                <input type="text" id="disabledTextInput" name="newparty" class="form-control fs-5" value="<?php echo $partyname; ?>">
                <button type="submit" name="update" class="btn btn-primary fs-5">Save</button>
              </div>
          </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>