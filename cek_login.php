<?php
    include('admin/koneksi.php');

    if(isset($_POST['go'])){
	
    $username = mysqli_real_escape_string($kon,htmlentities($_POST['username']));
    $password = md5(mysqli_real_escape_string($kon,htmlentities($_POST['password'])));
                                 
    $sql = mysqli_query($kon,"SELECT * FROM user WHERE username='$username' AND password='$password' ") 
	or die(mysqli_error($kon));

    if(mysqli_num_rows($sql) == 0){
	echo "<script>alert('Username / Password salah!')</script>";
    echo '<script type="text/javascript">window.location="index.php"</script>';

   }else{
		
	session_start();

    $row = mysqli_fetch_assoc($sql);
	
    $_SESSION['id_login']	= $row['id'];
    $_SESSION['level']      = $row['level'];
    $_SESSION['name']       = $row['nama'];
    $_SESSION['nip']        = $row['nip'];
    $_SESSION['alamat']     = $row['alamat'];
    $_SESSION['tempat_l']   = $row['tempat_l'];
    $_SESSION['tgl_lahir']  = $row['tgl_lahir'];  
    $_SESSION['unit_k']     = $row['unit_k'];
    $_SESSION['status']     = $row['status'];             
    
    if($row['level'] == 'admin'){
    echo "<strong>Success!</strong> Redirecting you back in 1 seconds.
                <meta http-equiv='refresh' content='1; url= admin/index.php'/>  ";
    }
	/**elseif($row['level'] == 'maintenance'){
    echo "<script>alert('Success')</script>";
    echo '<script type="text/javascript">window.location="dosen/index.php"</script>';
                                     
    }*/
    else{
    header('location:index.php');
    }
}
}
?>