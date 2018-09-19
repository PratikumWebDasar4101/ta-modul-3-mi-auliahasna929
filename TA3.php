<?php
  $host ="localhost"; 
  $user ="root"; 
  $pass =""; 
  $db ="masukandata"; 
  $conn = mysqli_connect($host, $user, $pass, $db) 
  or die ("Koneksi gagal");
  	try {
		$pdo = new PDO("mysql:host={$host}; dbname={$db};", $user, $pass);
		$pdo -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	} catch (PDOException $e) {
		print "Koneksi atau query bermasalah : " . $e -> getMessage() . "<br>";
		die();
	}

  $namauser = $_POST['namauser'];
  $nim 			= $_POST['nim'];
  $Fakultas 	= $_POST['Fakultas'];
  $JK = $_POST['JK'];
  		$nama_foto = $_FILES['foto']['name'];
        $tmp_foto = $_FILES['foto']['tmp_name'];
        $dir_foto = "FOTONYA/";
        $target_foto = $dir_foto . $nama_foto;
        if (!move_uploaded_file($tmp_foto, $target_foto))
            die("Foto gagal di upload..!!");
        $query = $pdo -> prepare("INSERT INTO datamahasiswa VALUES ('$nim','$namauser','$Fakultas','$JK','$target_foto')");
        $query -> execute();
        if ($query)
            header("Location: TA3.html");
        else
            die("data Gagal");
          ?>