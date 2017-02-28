<?php 
    include 'links.php';
    include'function.php';
    session_start();
?>
<title>Participant Login|TechTrix</title>
<body>
	<center>
        
                    <div class="col-md-12">
                    <h2>Participant Login</h2>
                     
					<div style="width:300px;">
                        <div class="form-group" style="color:#fff;">
                        <form action="" method="post">
                       <label></label>
                      <input type="text" class="form-control" name="trix_id" placeholder="Unique Techtrix Team ID" required/>

                            <label></label>
                            <input type="password" class="form-control" name="password" placeholder="Password" required/>
                            <br>
                            <input type="submit" class="btn btn-info" name="submit" value="Login"/>
                            <input type="reset"  class="btn btn-default" value="Reset"/>
                        </form>
                    </div>                   
      <center>
</body>

<?php
if(isset($_POST['submit']))
    {
        $_SESSION['trix_id']=student_login_check($_POST['trix_id'],$_POST['password']);
        header('location:student_home.php');
    }
?>

