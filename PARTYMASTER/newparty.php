<?php  
    if(isset($_POST['save'])){
        $addparty = $_POST['newparty'];
        if(!empty($addparty)){
        $sqlparty = "INSERT INTO `party_name` (`SNO`, `TAG_NAME`) VALUES (NULL, '$addparty')";
        $query = mysqli_query($conn, $sqlparty);
        if($query){
            echo "<div class='alert alert-success' role='alert'>
            <h1>Data Successfully Saved</h1>
          </div>";
          header('Location: partys.php');
        }
    }else{
      echo "<div class='alert alert-danger' role='alert'>
      <h1>Please Enter Required Data</h1>
    </div>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">
  <style>
    
  </style>
<body>
  <div class="container mt-4 modalparty">
    <form action="" method="post">
      <legend class="bg-dark text-white fs-2" style="padding-left:10px;">Add New Party</legend>
      <div class="mb-3 col-8 d-flex">
        <input type="text" id="disabledTextInput" name="newparty" class="form-control fs-5 col-6"
          placeholder="Input Name here">
        <button type="submit" name="save" class="btn btn-primary col-4 fs-5">Save</button>
      </div>
    </form>
  </div>
</body>

</html>

