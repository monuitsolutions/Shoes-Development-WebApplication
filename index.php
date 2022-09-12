
<?php
    session_start();
    include("host.php");

    if(isset($_POST['login'])){
        $id = $_POST['userid'];
        $pwd = $_POST['pwd'];

        $sql = "SELECT * FROM `users` WHERE NAME='$id' AND PASSWORD='$pwd'";
        $data = mysqli_query($conn, $sql);
        $count = mysqli_num_rows($data);
        // echo "My Number".$count;
        
           if($count == 1){
             $_SESSION['userid'] = $id;

             header("location: FORM/form1.php");
           }
    }
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

    <title>Floyd Login</title>
</head>

<body>
    <div class="container mt-5 col-4 px-1 shadow-lg p-3 bg-body rounded">
        <form action="" method="POST">
            <h1 class="bg-dark text-white text-center">Floyd Sample Development</h1>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Admin</label>
                <select class='form-control ' id='exampleInputEmail1' name='userid'>
                    <option>Select User</option>
                    <?php
                        $query = "SELECT * FROM `users`";
                         $result = mysqli_query($conn, $query);
                        while($row = mysqli_fetch_assoc($result)){
                            echo "<option>".$row['NAME']."</option>";
                            }
                    ?>
                     <select>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" name="pwd" id="exampleInputPassword1">
            </div>
            <input type="submit" name="login" class="btn btn-primary mt-2" value="Login">
        </form>
    </div>
</body>

</html>