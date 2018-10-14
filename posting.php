<form method="POST" enctype="multipart/form-data">
	<table>
		<tr>
			<td>Judul</td>
			<td>:</td>
			<td><input type="text" name="judul"></td>
		</tr>

		<tr>
			<td>Masukkan Postingan</td>
			<td>:</td>
			<td><textarea name="post" placeholder="Postingkan Sesuatu!"></textarea></td>
		</tr>

		<tr>
			<td>Unggah Gambar</td>
			<td>:</td>
			<td><input type="file" name="gbr"></td>
		</tr>

		<tr>
			<td><a href="halawal.php"> Halaman Awal </a>
				<input type="submit" name="up"></td>
		</tr>
	</table>
</form>


<?php 

session_start();
error_reporting(0);

	if (isset($_POST['up'])) {
		include 'koneksi.php';
		$query=mysqli_query($conn, "SELECT nim,nama FROM jurusan WHERE nim ='$_SESSION[nim]");
		$row=mysqli_fetch_array($query);

			$nim =$row['nim'];
			$nama =$row['nama'];
			$judul =$_POST['judul'];
			$posting =$_POST['post'];
			$gambar -$_FILES["gbr"]["name"];

			$qry=$conn->query("INSERT INTO `posting` (`nim`, `nama`, `judul`, `posting`, `gambar`)
								VALUES ('$nim', '$nama', '$judul', '$posting', '$gambar')");
			echo "Berhasil Diupload";


			
	}

 ?>