<?php
  session_start();
include("../host.php");

// $sno = $_GET['SNO'];
// $partyname = $_GET["TAG_NAME"];

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
    
if(isset($_GET["name"])){
 echo $_GET["partyname"];
  
}

// echo $updateparty;
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
  <script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function () {
      $('#partyName').dataTable();
    });
  </script>
  <title>Party Name</title>
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
          <li class="nav-item active"><a href="../PANDINGMASTER/samplepanding.php" class="nav-link text-white">Pending
          Sample</a></li>
          <li class="nav-item "><a href="../DISPATCHMASTER/dispatch.php" class="nav-link text-white">Dispatch</a></li>
          <li class="nav-item "><a href="../PARTYMASTER/partys.php" class="nav-link text-white">Party Master</a></li>
          <!-- <li class="nav-item "><a href="curd/addparty.php" class="nav-link text-white">Reports</a></li> -->
          <li class="nav-item "><a class="nav-link text-white name">
              <?php echo $name; ?>
            </a></li>
          <li class="nav-item "><a href="../PHP/logout.php" class="nav-link text-white">Logout</a></li>
        </ul>

      </div>
    </div>
  </nav>
  <div class="container col-5 float-end mt-2">
    <!-- <button class="btn btn-danger" onclick="addparty();">Add New Party</button> -->
    <div class="container">
      <?php
          include('newparty.php');
        ?>
    </div>

  </div>
  <div class="container col-5 border mx-2 my-2 float-start shadow-lg mb-5 bg-body rounded overflow-auto"  style="height: 90vh;">
    <table class="table " id="partyName">
      <thead>
        <tr class="bg-dark text-white align-top sticky-top">
          <th scope="col">S No.</th>
          <th scope="col" id="filters" class="text-center">Party Name <input type="text" id="search" placeholder="Search..."> </th>
          <th scope="col">Actions</th>
        </tr>
      </thead>
      <tbody class="table-success">
        <?php
        $sql = "SELECT * FROM `party_name`";
        $query = mysqli_query($conn, $sql);
    
        while($row = mysqli_fetch_assoc($query)){
    
                echo "<tr>
                <th>".$row['SNO']."</th>
                <th>".$row['TAG_NAME']."</th>
                <td>
                <a class='btn btn-danger' href='editpartyname.php?sno=$row[SNO]&partyname=$row[TAG_NAME]'>Edit / Update </a></td>
               
                </tr>";
                }
                 // <a href='delete.php?$sno' class='btn btn-danger' onclick='return deleteFunction()'>Delete</a>
            ?>

      </tbody>
    </table>
  </div>
  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

</body>

</html>


