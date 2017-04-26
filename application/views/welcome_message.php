<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Data My Fucking User</title>

	
</head>
<body>
<table border="1" style="border-collapse: collapse;">
	<tr style="background: grey">
		<td>ID User</td>
		<td>Name</td>
		<td>Address</td>
	</tr>
	<?php foreach ($data as $users) { ?>

	<tr style="background: grey">
		<td><?php echo $users['id']; ?></td>
		<td><?php echo $users['name']; ?></td>
		<td><?php echo $users['addres'];</td>
	</tr>
</table>

</body>
</html>