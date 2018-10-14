<form method="POST">

	<table>
		<tr>
			<td>Nama</td>
			<td>:</td>
			<td><input type="text" name="nama" length="35"></td>
		</tr>

		<tr>
			<td>NIM</td>
			<td>:</td>
			<td><input type="number" name="nim" length="10"></td>
		</tr>

		<tr>
			<td>Kelas</td>
			<td>:</td>
			<td><input type="radio" name="kelas" value="01">01<br>
			<input type="radio" name="kelas" value="02">02<br>
			<input type="radio" name="kelas" value="03">03<br>
			<input type="radio" name="kelas" value="04">04<br></td>
		</tr>

		<tr>
			<td>Jenis Kelamin</td>
			<td>:</td>
			<td><input type="radio" name="jk" value="Laki-Laki">Laki-Laki<br>
			<input type="radio" name="jk" value="Perempuan">Perempuan<br></td>
		</tr>

		<tr>
			<td>Hobi</td>
			<td>:</td>
			<td><input type="checkbox" name="hobi" value="Basket">Basket</td>
			<td><input type="checkbox" name="hobi" value="Travelling"> Travelling</td>
			<td><input type="checkbox" name="hobi" value="Shopping"> Shopping </td>
			<td><input type="checkbox" name="hobi" value="Diving"> Diving</td>
			<td><input type="checkbox" name="hobi" value="Climbing"> Climbing
		</tr>

		<tr>
			<td>Fakultas</td>
			<td>:</td>
			<td> <select name="fakultas">
				 <option value="FIT"> Fakultas Ilmu Terapan </option>
				 <option value="FIK"> Fakultas Industri Kreatif </option>
				 <option value="FKB"> Fakultas Komunikasi Bisnis </option>
				 <option value="FEB"> Fakultas Ekonomi Bisnis </option>
			</select>
			</td>
		</tr>

		<tr>
			<td>Alamat</td>
			<td>:</td>
			<td><textarea name="alamat"></textarea></td>
		</tr>

		<tr>
			<td>Password</td>
			<td>:</td>
			<td><input type="password" name="pass"></td>
		</tr>


		<tr>
		<td><input type="submit" name="kirim" value="kirim"></td>
		</tr>

	</table>
</form>

<?php 
if (isset($_POST['kirim'])) {
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db = "jurusan";
	$conn = mysqli_connect($host,$user,$pass,$db);

	$nama    	= $_POST['nama'];
	$nim     	= $_POST['nim'];
	$kelas   	= $_POST['kelas'];
	$jeniskl 	= $_POST['jk'];
	$hobi   	= $_POST['hobi'];
	$fakultas 	= $_POST['fakultas'];
	$alamat 	= $_POST['pass'];
	$pass 		= $_POST['pass'];

	$sql = $conn->query("INSERT INTO jurusan
						 VALUES ('$nama','$nim','$kelas','$jeniskl','$hobi','$fakultas','$alamat','$pass')");

	echo "Berhasil"."<br>";
	echo "<a href = 'login.php'>Klik</a> lanjut";
}
 ?>