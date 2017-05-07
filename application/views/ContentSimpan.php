	<div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
				<h1 class="page-header">Simpan</h1>
			</div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /#page-wrapper -->
        <div class="row">
        	<div class="col-lg-12">
        		<div class="panel panel-default">
        			<div class="panel-heading">
        				Data Table Simpanan
        			</div>

        			<div class="panel-body">
        				<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
        					<thead>
        					<tr>
        						<th>
        							No Simpanan</th>
        						<th>
        							Tanggal Simpanan
        						</th>
        						<th>
        							Simpanan Wajib
        						</th>
        						<th>
        							Simpanan Sukarela
        						</th>
        						<th>
        							Pemeriksa Simpanan
        						</th>
        						
        					</tr>
        				</thead>
        				<tbody>
        					<?php
        						foreach ($simpanan as $smpn) {
        							echo 
        							"<tr>
        								<td>".$smpn->no_simpanan."</td>
        								<td>".$smpn->tgl_simpanan."</td>
        								<td>".$smpn->simpanan_pokok."</td>
        								<td>".$smpn->simpanan_sukarela."</td>
        								<td>".$smpn->pemeriksa_simpanan."</td>
        							</tr>";
        						}
        					?>
        				</tbody>
        				</table>
        				
        			</div>
        		</div>
        	</div>
        </div>

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<?php echo base_url();?>assets/admin-koperasi/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo base_url();?>assets/admin-koperasi/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<?php echo base_url();?>assets/admin-koperasi/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="<?php echo base_url();?>assets/admin-koperasi/vendor/raphael/raphael.min.js"></script>
    <script src="<?php echo base_url();?>assets/admin-koperasi/vendor/morrisjs/morris.min.js"></script>
    <script src="<?php echo base_url();?>assets/admin-koperasi/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<?php echo base_url();?>assets/admin-koperasi/dist/js/sb-admin-2.js"></script>

</body>

</html>