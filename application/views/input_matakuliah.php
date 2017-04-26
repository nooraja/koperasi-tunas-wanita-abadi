<?php echo form_open('helloworld/input_ruangan'); ?>
<table>
	<tr>
		<td>ID Matakuliah</td>
		<td><?php echo form_input('id_matakuliah','', array('placeholder' => 'id_matakuliah')); ?></td>
	</tr>
	<tr>
		<td>Nama Matakuliah</td>
		<td><?php echo form_input('nama_matakuliah','', array('placeholder' => 'nama_matakuliah')); ?></td>
	</tr>
	<tr>
		<td>Ruangan</td>
		<td><?php echo form_input('ruangan','', array('placeholder' => 'ruangan')); ?></td>
	</tr>
	<tr>
		<td colspan="2">
			<?php echo form_submit('submit', 'Submit Matakuliah'); ?>
		</td>
	</tr>
</table>

<?php echo form_close(); ?>