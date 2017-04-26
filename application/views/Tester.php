<?php 
//echo $judul; 
?>

<hr>

<table>
	<tr><th>ID</th><th>Nama</th></tr>
	<?php 
	foreach ($mahasiswa as $key) {
		echo 
		"<tr>
			<td>$key->id_mahasiswa</td>
			<td>$key->nama_mahasiswa</td>
		</tr>";
	}
	?>
</table>

