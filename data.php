<?php 

require_once('connection.php');
$query = mysqli_query ($kon,"SELECT * FROM user");
$queryes = mysqli_query ($kon,"SELECT * FROM tbl_barang");

$results = array();
$barang = array();

while($row = mysqli_fetch_array($query)){
    array_push($results, array(
        'id' => $row['id'],
        'username' => $row['username'],
        'nama' => $row['nama'],
        'alamat' => $row ['alamat']
    ));
}

while($row = mysqli_fetch_array($queryes)){
    array_push($barang, array(
        'id' => $row['idb'],
        'code' => $row['code'],
        'nama barang' => $row['namab'],
        'tahun Pengadaan' => $row ['tahun_p'],
        'foto' => $row ['foto']
    ));
}

echo json_encode(
    array('barang' => $barang,
    'username' => $results)
)

?>