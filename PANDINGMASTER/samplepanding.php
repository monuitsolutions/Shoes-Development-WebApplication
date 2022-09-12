<?php
  session_start();
    include("../host.php");
    
?>
<?php
   
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
    // $sno1 = $_SESSION['sno'];
    // echo $sno1;
?>
<!doctype html>
<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.0/css/jquery.dataTables.min.css">

  <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css">

  <title>Floyd Data</title>
  <style>
    .table {
      font-weight: bold;
      font-size: 9px;
      background-color: #9fccad;
      font-family: 'Arial';
    }

    /* Style the input field */
    #myInput {
      padding: 20px;
      margin-top: -6px;
      border: 0;
      border-radius: 0;
      background: #f1f1f1;
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

  <table class="table display " id="example" style="width:100%">
    <thead>
      <tr class="table-dark text-white align-top">
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
        <th scope="col">Dispatch</th>
      </tr>
    </thead>
    <tbody class="table-success">
      <!-- <input class="form-control" id="myInput" type="text" placeholder="Search.."> -->
      <?php
        $sql = "SELECT * FROM `pandingsamplemaster`";
        $query = mysqli_query($conn, $sql);
        $sno = 0;
        while($row = mysqli_fetch_assoc($query)){
        $sno = $sno + 1;
                echo "<tr id='matchKey'>
                <td style='display: flex;'><a href='editpandingsample.php?sno=$row[SNO]&image=$row[IMAGE]&date=$row[RECIEVED_DATE]&customer=$row[CUSTOMER]&custref=$row[CUSTOMER_REFRENCE]&colorref=$row[COLOR_REFRENCE_NO]&artical=$row[ARTICLE_COMPOUND_NAME]&sole=$row[SOLE_MOULD_ARTICLE]&grad=$row[GRADE]&hardness=$row[HARDNESS]&recipe=$row[RECIPE]&qty=$row[QTY]&other=$row[OTHER_INSTRUCTIONS]&povide=$row[PROVIDEDBY]&receip=$row[RECEIVEDBY]&status=$row[STATUS]&delive=$row[DELIVERED_DATE]&feed=$row[FEEDBACK]' class='btn btn-danger edits fs-6'>Edit</a> 
                <a href='pandingpreview.php?sno=$row[SNO]&image=$row[IMAGE]&date=$row[RECIEVED_DATE]&customer=$row[CUSTOMER]&custref=$row[CUSTOMER_REFRENCE]&colorref=$row[COLOR_REFRENCE_NO]&artical=$row[ARTICLE_COMPOUND_NAME]&sole=$row[SOLE_MOULD_ARTICLE]&grad=$row[GRADE]&hardness=$row[HARDNESS]&recipe=$row[RECIPE]&qty=$row[QTY]&other=$row[OTHER_INSTRUCTIONS]&povide=$row[PROVIDEDBY]&receip=$row[RECEIVEDBY]&status=$row[STATUS]&delive=$row[DELIVERED_DATE]&feed=$row[FEEDBACK]&datetime=$row[DATETIME]' class='btn btn-primary fs-6'>Details</a></td>
                <td scope='row'>".$row['SNO']."</td>
                <td><img src='../".$row['IMAGE']."'style='width:40px; height:40px;'/></td>
                <td id='subjectName'>".$row['USER_NAME']."</td>
                <td id='subjectName'>".$row['RECIEVED_DATE']."</td>
                <td id='subjectName'>".$row['CUSTOMER']."</td>
                <td id='subjectName'>".$row['CUSTOMER_REFRENCE']."</td>
                <td id='subjectName'>".$row['COLOR_REFRENCE_NO']."</td>
                <td id='subjectName'>".$row['ARTICLE_COMPOUND_NAME']."</td>
                <td id='subjectName'>".$row['SOLE_MOULD_ARTICLE']."</td>
                <td id='subjectName'>".$row['GRADE']."</td>
                <td id='subjectName'>".$row['HARDNESS']."</td>
                <td id='subjectName'>".$row['RECIPE']."</td>
                <td id='subjectName'>".$row['QTY']."</td>
                <td id='subjectName'>".$row['OTHER_INSTRUCTIONS']."</td>
                <td id='subjectName'>".$row['PROVIDEDBY']."</td>
                <td id='subjectName'>".$row['RECEIVEDBY']."</td>
                <td id='subjectName'>".$row['STATUS']."</td>
                <td id='subjectName'>".$row['DELIVERED_DATE']."</td>
                <td id='subjectName'>".$row['FEEDBACK']."</td>
                <td id='subjectName'>".$row['DATETIME']."</td>
                <td><a href='sandtodispatch.php?sno=$row[SNO]&user=$row[USER_NAME]&image=$row[IMAGE]&date=$row[RECIEVED_DATE]&customer=$row[CUSTOMER]&custref=$row[CUSTOMER_REFRENCE]&colorref=$row[COLOR_REFRENCE_NO]&artical=$row[ARTICLE_COMPOUND_NAME]&sole=$row[SOLE_MOULD_ARTICLE]&grad=$row[GRADE]&hardness=$row[HARDNESS]&recipe=$row[RECIPE]&qty=$row[QTY]&other=$row[OTHER_INSTRUCTIONS]&povide=$row[PROVIDEDBY]&receip=$row[RECEIVEDBY]&status=$row[STATUS]&delive=$row[DELIVERED_DATE]&feed=$row[FEEDBACK]' class='btn btn-warning edits'>Dispatched</a> 
                </td>
                </tr>";
                }
            ?>

    </tbody>
  </table>
<!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>

  <script src='../js/jqueryfilters.js'></script>
  <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- // JQuery Reference, If you have added jQuery reference in your master page then ignore, 
// else include this too with the below reference -->

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://cdn.datatables.net/1.11.0/js/jquery.dataTables.min.js"></script>

  <script src="https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.0.0/js/buttons.html5.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/2.0.0/js/buttons.print.min.js"></script>


  <script>
    $(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
} );
  </script>





</body>

</html>
<?php
if( @$_GET['status'] == 'success'){
    echo "
    <div class='container hide-show'>
        <h1>Thanku</h1>
    </div>";
}
?>