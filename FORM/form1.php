<?php
session_start();
include("../host.php");
include("../PHP/insertdata.php");

$userid = $_SESSION['userid'];
if ($userid == true) {
    $sql = "SELECT * FROM `users` WHERE NAME='$userid'";
    $query = mysqli_query($conn, $sql);

    if ($row = mysqli_fetch_assoc($query)) {
        $name = $row['NAME'];
    }
} else {
    header("Location: ../index.php");
}

?>


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Floyd Ployplast</title>

</head>

<body style="background-color: #e3dcc0;">
    <nav class="navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active"><a href="form1.php" class="nav-link text-white">New Sample</a></li>
                    <li class="nav-item"><a href="../PANDINGMASTER/samplepanding.php"
                            class="nav-link text-white">Pending Sample</a></li>
                    <li class="nav-item "><a href="../DISPATCHMASTER/dispatch.php"
                            class="nav-link text-white">Dispatch</a></li>
                    <li class="nav-item "><a href="../PARTYMASTER/partys.php" class="nav-link text-white">Party
                            Master</a></li>
                    <!-- <li class="nav-item "><a href="curd/addparty.php" class="nav-link text-white">Reports</a></li> -->
                    <li class="nav-item "><a class="nav-link text-white name">
                            <?php echo $name; ?>
                        </a></li>
                    <li class="nav-item "><a href="../PHP/logout.php" class="nav-link text-white">Logout</a></li>
                </ul>

            </div>
        </div>
    </nav>
    <!-- <div class="container">

    </div> -->
    <div class="container border mt-4 shadow-lg p-3 mb-5 bg-body rounded position-relative">
        <form name="floydForm" onkeypress="return noenter(event)" onsubmit="return validateForm()" action=""
            method="post" enctype="multipart/form-data">
            <input type="hidden" value="<?php echo $name; ?>" name="username">
            <h1 class="bg-dark text-white text-center rounded font-family:verdana">Development Request Form</h1>
            <div class="row">
                <!-- <input type="hidden" value="" name="user"> -->
                <div class="col-1">
                    DRF No.
                    <?php
                    $query = "SELECT * FROM `floyd1development`";

                    $result = mysqli_query($conn, $query);

                    while ($row = mysqli_fetch_assoc($result)) {
                        $sno = $row['SNO'];
                        $sno = $sno + 1;
                    }

                    ?>
                    <input type="text" class="form-control " disabled value="<?php echo $sno; ?>" placeholder="1"
                        id="drfNo">
                </div>
                <div class="col-2">
                    Date :
                    <!-- <p style="color:red; font-size:20px;">*</p> -->
                    <input type="date" class="form-control alert-danger" id="dateRec" name="receiveddate">
                </div>

                <div class="col-4">
                    Customer :
                    <select class='form-control alert-danger' id='' name='customer'>
                        <option>Select Name</option>
                        <?php
                        $query = "SELECT * FROM `party_name`";

                        $result = mysqli_query($conn, $query);

                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "
                            
                            <option>
                                " . $row['TAG_NAME'] . "
                            </option>
                           ";
                        }

                        ?>
                        <select>
                </div>
                <div class="col-3">
                    <h6>Provided By :</h6>
                    <input type="text" class="form-control alert-danger" name="providedby" id="providedBy">
                </div>
                <div class="col-2">
                    <h6>Received By :</h6>
                    <input type="text" class="form-control alert-danger" name="receivedby" id="RecevedBy">
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    Customer Ref. No.
                    <input type="text" class="form-control" id="" name="customerref" placeholder="Customer Ref. No.">
                </div>
                <div class="col-4">
                    Color Ref :
                    <input type="text" class="form-control alert-danger" id="" name="colorref" placeholder="Color Ref">
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    For Sole/Mould(Article Name)(Optional)
                    <input type="text" class="form-control" name="sole_mould" id="">
                </div>
                <div class="col-4">
                    Article/Compound Name :
                    <input type="text" class="form-control alert-danger" id="" name="customerarticle"
                        placeholder="Article/Compound Name">
                </div>
            </div>
            <div class="row">
                <div class="col-3">
                    Recipe :
                    <input type="text" class="form-control alert-danger" name="recipe" id="exampleColorRefrence"
                        placeholder="Recipe">
                </div>
                <div class="col-2">
                    Grade :
                    <input type="text" class="form-control alert-danger" name="grade" placeholder="Grade" id="grade">
                </div>
                <div class="col-1">
                    Hardness :
                    <input type="text" class="form-control alert-danger" name="hardness" placeholder="Hardness" id="">
                </div>
                <div class="col-1">
                    Qty :
                    <input type="text" class="form-control alert-danger" name="qty" id="" placeholder="Qty">
                </div>
            </div>
            <div class="image-container">
                <div class="col-12">
                    <input accept="image/*" name="image" type='file' id="imgInp" class="form-control" />
                </div>
                <img id="blah" src="#" alt="" style="width: 100%; height:88%;" />
                <script>
                    imgInp.onchange = evt => {
                        const [file] = imgInp.files
                        if (file) {
                            blah.src = URL.createObjectURL(file)
                        }
                    }
                </script>
            </div>
            <style>
                .image-container {
                    position: absolute;
                    top: 26.5%;
                    right: 1%;
                    width: 40%;
                    height: 55%;
                    border: solid 2px black;
                }
            </style>
            <div class="col-7">
                Other Instructions :
                <textarea type="text" class="form-control" id="" name="otherinstructions"
                    placeholder="Other Instructions" rows="2"></textarea>
            </div>
            <div class="row">

                <div class="col-3">
                    <h6>Delivered Date :</h6>
                    <input type="date" class="form-control" name="delivereddate" id="date">
                </div>
                <div class="col-4">
                    <h6>Feedback :</h6>
                    <input type="text" class="form-control" name="feedback" id="feedback">
                </div>
            </div>
            <div class="col-4 mb-4">
                <input type="submit" value="Submit" name="submit" class="btn btn-primary col mt-4">
            </div>
        </form>
    </div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../js/javaScript.js"></script>

    <script>
        function noenter(e) {

            e = e || window.event;
            var key = e.keyCode || e.charCode;
            //alert('e.type: ' + e.type + '; key: ' + key);
            return key !== 13;
        }
    </script>
    <div id="div" class="div">
        <h1>Saved</h1>
    </div>
    <style>
        .div {
            margin: auto;
            text-align: center;
            width: 250px;
            height: 250px;
            position: absolute;
            top: 20%;
            left: 35%;
            border-radius: 50%;
            background-color: lightgreen;
            display: none;
        }

        .div h1 {
            margin-top: 40%;
            color: black;
        }
    </style>
</body>

</html>
<?php

if (@$_GET['status'] == 'success') {
    echo "
        <div class='div hide-show'>
            <script>    
                document.getElementById('div').style.display = 'block';
                setTimeout(function () {
                    document.getElementById('tick').style.display = 'block';
                }, 500);
                setTimeout(function () {
                    document.getElementById('div').style.display = 'none';
                    window.location.replace('form1.php');
                }, 1000);
            </script>
        </div>";
}
// feedback message goes here<br>';
?>