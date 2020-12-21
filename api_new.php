<?php
error_reporting(0);
include "koneksi.php";


$auth = $_GET['auth']; //888
$perintah = $_GET['perintah'];

// ==========tb_guru=================
$kd_guru = $_GET['kd_guru'];
$nip = $_GET['nip'];
$nm_gr = $_GET['nm_gr'];
// ==========tb_siswa=================
$kd_siswa = $_GET['kd_siswa'];
$nis = $_GET['nis'];
$nm_siswa = $_GET['nm_siswa'];
// ==========tb_kelas=================
$kd_siswa = $_GET['kd_siswa'];
$kelas = $_GET['kelas'];
$thn_ajaran = $_GET['thn_ajaran'];
// ==========tb_mapel=================
$kd_kls = $_GET['kd_kls'];
$nm_mapel = $_GET['nm_mapel'];
$ket = $_GET['ket'];
// ==========tb_user=================
$nama_user = $_GET['nama_user'];
$pass = $_GET['pass'];
$level = $_GET['level'];








//echo $kodemk;echo $namamk;
// ===========================================insert================================================================
// ===============insert tb_guru=================
if($auth == "888"){

if(!empty($_GET) && $perintah=="insert_guru"){

    $sql = "INSERT INTO tb_guru (nip, nm_gr) VALUES ('". $nip. "', '".$nm_gr."')";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

// ===============insert tb_siswa=================

if(!empty($_GET) && $perintah=="insert_siswa"){

    $sql = "INSERT INTO tb_siswa (nis, nm_siswa) VALUES ('". $nis. "', '".$nm_siswa."')";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

// ===============insert tb_kelas=================
if(!empty($_GET) && $perintah=="insert_kelas"){

    $sql = "INSERT INTO tb_kelas (kd_guru, kd_siswa, kelas) VALUES ('".$kd_guru."', '".$kd_siswa."','".$kelas."')";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============insert tb_mapel=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="insert_mapel"){

    $sql = "INSERT INTO tb_mapel (kd_kls, nm_mapel, ket) VALUES ('". $kd_kls. "', '".$nm_mapel."', '".$ket."')";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============insert tb_user=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="insert_user"){

    $sql = "INSERT INTO tb_user (nama_user, pass, level) VALUES ('". $nama_user. "', '".$pass."', '".$level."')";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}



// ==============================================update tb_guru==============================================================

if(!empty($_GET) && $perintah=="update_guru"){

    $sql = "update tb_guru set nm_gr='".$nm_gr."' where kd_guru='".$kd_guru."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

// ===============update tb_siswa=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="update_siswa"){

    $sql = "update tb_siswa set nm_siswa='".$nm_siswa."' where kd_siswa='".$kd_siswa."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============update tb_kelas=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="update_kelas"){

    $sql = "update tb_kelas set nm_gr='".$nm_gr."' where kd_kls='".$kd_kls."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============update tb_mapel=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="update_mapel"){

    $sql = "update tb_mapel set nm_mapel='".$nm_mapel."' where kd_mapel='".$kd_mapel."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============update tb_user=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="update_user"){

    $sql = "update tb_user set nama_user='".$nama_user."' where id_user='".$id_user."'";
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

// ======================================ini delete tb_guru====================================================================

if(!empty($_GET) && $perintah=="delete_guru"){

    $sql = "delete from tb_guru where kd_guru=".$kd_guru;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}

// ===============delete tb_siswa=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="delete_siswa"){

    $sql = "delete from tb_siswa where kd_siswa=".$kd_siswa;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============delete tb_kelas=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="delete_kelas"){

    $sql = "delete from tb_kelas where kd_kls=".$kd_kls;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============delet tb_mapel=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="delete_mapel"){

    $sql = "delete from tb_mapel where kd_mapel=".$kd_mapel;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ===============delet tb_user=================
// ===============ini belum selesai=================
if(!empty($_GET) && $perintah=="delete_user"){

    $sql = "delete from tb_user where id_user=".$id_user;
    echo"<br>";
    echo $sql;

    if (mysqli_query($conn, $sql)) {
        echo "<br>";
        echo "Record has been deleted";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }


}


// ========================================ini select==========================================================
// ===============select tb_guru selesai=================

// ===============dibawah cara panggilnya=================
// =============== http://localhost/api_new.php?auth=888&perintah=select_guru =================
if(!empty($_GET) && $perintah=="select_guru"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
$sql = "select nip, username, nm_gr from tb_guru";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['nip'] = $row['nip'];
            $row_array['username'] = $row['username'];
            $row_array['nm_gr'] = $row['nm_gr'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }

// ===============select tb_siswa selesai=================
if(!empty($_GET) && $perintah=="select_siswa"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
$sql = "select nis, pass, nm_siswa from tb_siswa";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['nis'] = $row['nis'];
            $row_array['pass'] = $row['pass'];
            $row_array['nm_siswa'] = $row['nm_siswa'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }
// ===============select tb_kelas selesai=================
if(!empty($_GET) && $perintah=="select_kelas"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
$sql = "select kd_siswa, kelas, thn_ajaran from tb_kelas";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['kd_siswa'] = $row['kd_siswa'];
            $row_array['kelas'] = $row['kelas'];
            $row_array['thn_ajaran'] = $row['thn_ajaran'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }
// ===============select tb_mapel selesai=================
if(!empty($_GET) && $perintah=="select_mapel"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
$sql = "select kd_kls, nm_mapel, ket from tb_mapel";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['kd_kls'] = $row['kd_kls'];
            $row_array['nm_mapel'] = $row['nm_mapel'];
            $row_array['ket'] = $row['ket'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }
// ===============select tb_user selesai=================
if(!empty($_GET) && $perintah=="select_user"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
$sql = "select nama_user, pass, level from tb_user";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['nama_user'] = $row['nama_user'];
            $row_array['pass'] = $row['pass'];
            $row_array['level'] = $row['level'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }

}


// ===============select tb_user selesai=================
if(!empty($_GET) && $perintah=="login"){
$return_arr = array();
//$sql = "SELECT id, npm, nama FROM mahasiswa";
//$sql = "select id_user, nama_user, pass, from tb_user where nama_user=$nama_user and pass=$pass";
//$sql = "SELECT nama_user='".$nama_user."' from tb_user where pass='".$pass."'";
$sql = "SELECT * FROM tb_user where nama_user='$nama_user' AND pass='$pass'";
$result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
            //echo "<br>";
            //echo "id= ". $row["id"]. ", kodemk= ". $row["kodemk"]. ", nama matakuliah = ".$row["nama_matakuliah"];
            //echo "id = $row['id'] , kodemk= $row['kodemk']";
            
            $row_array['nama_user'] = $row['nama_user'];
            $row_array['pass'] = $row['pass'];
            $row_array['id_user'] = $row['id_user'];

            array_push($return_arr,$row_array);
        }
        echo json_encode($return_arr);
    } else {
            echo "0 results";
    }
$conn->close();
    }




?>