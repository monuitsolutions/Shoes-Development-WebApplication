<?php
session_start();
include("../host.php");

$sno = $_GET['sno'];
$img = $_GET['img'];
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



if(isset($_POST['update'])){


        $sno = $_GET['sno'];
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
        $status = $_POST['status'];
        $delivereddate = $_POST['delivereddate'];
        $feedback = $_POST['feedback'];

    $update = "UPDATE floyd1development SET USER_NAME='$username', RECIEVED_DATE='$receiveddate', CUSTOMER='$customer', CUSTOMER_REFRENCE='$customerref', COLOR_REFRENCE_NO='$colorref', ARTICLE_COMPOUND_NAME='$article', SOLE_MOULD_ARTICLE='$sole_mould', GRADE='$grade', HARDNESS='$hardness', RECIPE='$recipe', QTY='$qty', OTHER_INSTRUCTIONS='$otherinstructions', PROVIDEDBY='$providedby', RECEIVEDBY='$receivedby', STATUS='$status', DELIVERED_DATE='$delivereddate', FEEDBACK='$feedback' WHERE SNO=$sno";

    $query = mysqli_query($conn, $update);

        if($query){
            echo "Update Succsessfull";
            header("Location: curd.php");
        }
}

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
   
?>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Update Form</title>
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

  <div class="container border">
    <form action="" method="post">
        <h1 class="bg-dark text-white text-center rounded pl-2 pr-2">Development Edit Form</h1>
        <div class="row">
            <div class="col-3">
                DRF No.
                <input type="text" value="<?php echo $sno; ?>" class="form-control" disabled name="sno">
            </div>
            <div class="col-3">
                Date :
                <input type="date" value="<?php echo $date; ?>" class="form-control" id="receivedDate" name="receiveddate">
            </div>
        </div>
        <input type="hidden" value="<?php echo $name; ?>" name="username">
        <div class="row">
            <div class="col-6">
                Customer :
                <input type="text" value="<?php echo $customer; ?>" class="form-control" id="customerName" name="customer">
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                Customer Ref. No.
                <input type="text" value="<?php echo $custref; ?>" class="form-control" id="customerRef" name="customerref">
            </div>
            <div class="col-3">
                Color Refrence :
                <input type="text" value="<?php echo $coloref; ?>" class="form-control" id="colorRef" name="colorref">
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                Article/Compound Name :
                <input type="text" value="<?php echo $artical; ?>" class="form-control" id="customerArticle" name="customerarticle">
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                For Sole/Mould(Article Name): (Option)
                <input type="text" value="<?php echo $sole; ?>" class="form-control" name="sole_mould" id="soleMould">
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                Grade :
                <input type="text" value="<?php echo $grad; ?>" class="form-control" name="grade" id="gradeName">
            </div>

            <div class="col-3">
                Hardness :
                <input type="text" value="<?php echo $hardness; ?>" class="form-control" name="hardness" id="hardnessValue">
            </div>
        </div>
        <div class="row">
        <div class="col-3">
            Recipe :
            <input type="text" value="<?php echo $recip; ?>" class="form-control" name="recipe" id="recipeNo">
        </div>
        <div class="col-3">
            Qty :
            <input type="text" value="<?php echo $qty; ?>" class="form-control" name="qty" id="qtyKg">
        </div>
        
        </div>
        <div class="position-absolute top-50 start-50">
                    <div class="col-12 mt-0">
                        <input accept="image/*" name="image" type='file' id="imgInp" class="form-control" />
                    </div>

                    <img id="blah" src="#" alt="." style="width: 670px; height: 490px;" />
                    <script>
                        imgInp.onchange = evt => {
                            const [file] = imgInp.files
                            if (file) {
                                blah.src = URL.createObjectURL(file)
                            }
                        }
                    </script>

                </div>
        <div class="row">
        <div class="col">
            Other Instructions :
            <textarea type="text" value="<?php echo $other; ?>" class="form-control" id="otherInstructions" name="otherinstructions" rows="2"></textarea>
        </div>
        </div>
            <div class="row">
                <div class="col-3">
                    <h6>Provided By :</h6>
                    <input type="text" value="<?php echo $povide; ?>" class="form-control" name="providedby" id="providedBy">
                </div>
                <div class="col-3">
                    <h6>Received By :</h6>
                    <input type="text" value="<?php echo $receip; ?>" class="form-control" name="receivedby" id="receivedBy">
                </div>
                <div class="col-3">
                <h6>Status :</h6>
                <input type="text" value="<?php echo $status; ?>" class="form-control" name="status" id="statusValue">
            </div>
            <div class="col-3">
                    <h6>Delivered Date :</h6>
                    <input type="date" value="<?php echo $delive; ?>" class="form-control" name="delivereddate" id="deliveredDate">
                </div>
                <div class="col-3">
                    <h6>Feedback :</h6>
                    <input type="text" value="<?php echo $feed; ?>" class="form-control" name="feedback" id="feedBack">
                </div>
                <input type="submit" name="update" class="btn btn-primary col mt-2" value="Update Records">
            </div>
        
    </form>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  
  </body>
</html>