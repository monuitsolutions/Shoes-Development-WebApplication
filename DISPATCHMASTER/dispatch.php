<?php
session_start();
include("../host.php");

$userid = $_SESSION['userid'];
if ($userid == true) {
  $sql = "SELECT * FROM `users` WHERE NAME='$userid'";
  $query = mysqli_query($conn, $sql);

  if ($row = mysqli_fetch_assoc($query)) {
    $name = $row['NAME'];
  }
} else {
  header("Location: ../login.php");
}

?>
<!doctype html>
<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.0/css/jquery.dataTables.min.css">

  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css">

  <title>Floyd Data</title>

  <style>
    .table {
      font-weight: bold;
      font-size: 9px;
      /* background-color: #9fccad; */
      font-family: 'Arial';
    }
  </style>

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
          <li class="nav-item"><a href="../FORM/form1.php" class="nav-link text-white">New Sample</a></li>
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

  <table class="table display" id="example1" style="width:100%">
    <thead>
      <tr class="bg-dark text-white align-top">
        <th scope="col">Actions</th>
        <th scope="col">S No</th>
        <th scope="col">Sample Image</th>
        <th scope="col">User Name</th>
        <th scope="col">Received Date</th>
        <th scope="col">Customer </th>
        <th scope="col">Cust RefreNo.</th>
        <th scope="col">Color Ref.</th>
        <th scope="col">Article </th>
        <th scope="col">Sole/Mould</th>
        <th scope="col">Grade</th>
        <th scope="col">Hardness</th>
        <th scope="col">Recipe</th>
        <th scope="col">Qty</th>
        <th scope="col">Other Instr</th>
        <th scope="col">Provided By</th>
        <th scope="col">Received By</th>
        <th scope="col">Status </th>
        <th scope="col">Deliv Date</th>
        <th scope="col">Feed back</th>
        <th scope="col">Feed DateTime</th>
      </tr>
    </thead>
    <tbody class="table-success">
      <?php
      $sql = "SELECT * FROM `floyd1development`";
      $query = mysqli_query($conn, $sql);
      $sno = 0;
      while ($row = mysqli_fetch_assoc($query)) {
        $sno = $sno + 1;
        echo "<tr id='matchKey'>
                <td style='display: flex;'>
                <a href='view.php?sno=$row[SNO]&image=$row[IMAGE]&date=$row[RECIEVED_DATE]&customer=$row[CUSTOMER]&custref=$row[CUSTOMER_REFRENCE]&colorref=$row[COLOR_REFRENCE_NO]&artical=$row[ARTICLE_COMPOUND_NAME]&sole=$row[SOLE_MOULD_ARTICLE]&grad=$row[GRADE]&hardness=$row[HARDNESS]&recipe=$row[RECIPE]&qty=$row[QTY]&other=$row[OTHER_INSTRUCTIONS]&povide=$row[PROVIDEDBY]&receip=$row[RECEIVEDBY]&status=$row[STATUS]&delive=$row[DELIVERED_DATE]&feed=$row[FEEDBACK]&datetime=$row[DATETIME]' class='btn btn-info'>Preview</a></td>
                <td scope='row'>" . $row['SNO'] . "</td>
                <td><img src='../" . $row['IMAGE'] . "'style='width:40px; height:40px;'/></td>
                <td id=''>" . $row['USER_NAME'] . "</td>
                <td id=''>" . $row['RECIEVED_DATE'] . "</td>
                <td id=''>" . $row['CUSTOMER'] . "</td>
                <td id=''>" . $row['CUSTOMER_REFRENCE'] . "</td>
                <td id=''>" . $row['COLOR_REFRENCE_NO'] . "</td>
                <td id=''>" . $row['ARTICLE_COMPOUND_NAME'] . "</td>
                <td id=''>" . $row['SOLE_MOULD_ARTICLE'] . "</td>
                <td id=''>" . $row['GRADE'] . "</td>
                <td id=''>" . $row['HARDNESS'] . "</td>
                <td id=''>" . $row['RECIPE'] . "</td>
                <td id=''>" . $row['QTY'] . "</td>
                <td id=''>" . $row['OTHER_INSTRUCTIONS'] . "</td>
                <td id=''>" . $row['PROVIDEDBY'] . "</td>
                <td id=''>" . $row['RECEIVEDBY'] . "</td>
                <td id=''>" . $row['STATUS'] . "</td>
                <td id=''>" . $row['DELIVERED_DATE'] . "</td>
                <td id=''>" . $row['FEEDBACK'] . "</td>
                <td id=''>" . $row['DATETIME'] . "</td>
                </tr>";
      }
      ?>

    </tbody>
  </table>

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
    crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>

  <script src="https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.0.0/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.0.0/js/buttons.print.min.js"></script>
  
  <script src="../js/ddtf.js"></script>
  <script>
    $(document).ready(function() {
    $('#example1').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
  </script>


</body>

</html>
