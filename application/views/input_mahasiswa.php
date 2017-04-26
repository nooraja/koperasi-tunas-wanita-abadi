<?php echo form_open('helloworld/input_simpan'); ?>
<table>
	<tr>
		<td>ID Mahasiswa</td>
		<td><?php echo form_input('id_mahasiwa', '', array('placeholder' => 'id_mahasiswa')); ?></td>
	</tr>
	<tr>
		<td>Nama Mahasiwa</td>
		<td><?php echo form_input('nama_mahasiswa', '', array('placeholder' => 'nama_mahasiswa')); ?></td>
	</tr>
	<tr>
		<td colspan="2"><?php echo form_submit('submit', '0K'); ?></td>
	</tr>
</table>
<?php echo form_close();  ?>