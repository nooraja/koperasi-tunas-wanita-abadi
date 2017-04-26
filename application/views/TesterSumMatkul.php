<?php  ?>

<table>
	<tr>
		<td>id matkul</td>
	</tr>
	<?php 
		foreach ($matakuliah as $key) {
			echo "
			<tr>
				<td>".$key->id_matakuliah."</td>
			</tr>";
		}
	 ?>
</table>