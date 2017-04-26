<?php  ?>

<hr>
<table>
	<tr>
		<th>ID Matakuliah</th>
		<th>Matakuliah</th>
		<th>Ruangan</th>
	</tr>
	<?php 
		foreach ($matakuliah as $key) {
			echo "
			<tr>
				<td>".$key->id_matakuliah."</td>
				<td>".$key->nama_matakuliah."</td>
				<td>".$key->ruangan."</td>
			</tr>
			";
		}
	?>
</table>