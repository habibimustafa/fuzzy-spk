<?php include ("header.php") ?>
<?php require ("fungsi.php") ?>
 <div id="inner">
    <div id="main">


		<?php
		$tampil= $_GET['tab'];
		$idbank = $_GET['id'];
		if($tampil=='konvtab'){
			$query = "select * from tabungan where id_tab = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo '"'.$list['bank_tab'].'"'; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_tab']; ?></td></tr>
			<tr><td>Nama Produk :</td><td> <?php echo $list['jenis_tab']; ?></td></tr>
			<tr><td>Jumlah ATM: </td><td> <?php echo $list['jml_atm']; ?></td></tr>
			<tr><td>Setoran Awal:</td><td> <?php echo $list['set_awal_tab']; ?></td></tr>
			<tr><td>Setoran Selanjutnya :</td><td> <?php echo $list['set_selanjutnya_tab']; ?></td></tr>
			<tr><td>Biaya Administrasi :</td><td> <?php echo $list['biaya_admin_tab']; ?></td></tr>
			<tr><td>nisbah :</td><td> <?php echo $list['nisbah_tab']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_tab']; ?></td></tr>
			<tr><td>Saldo Minimum:</td><td> <?php echo $list['saldo_minim_tab']; ?></td></tr>
			<tr><td>Periode Undian :</td><td> <?php echo $list['periode_undian']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='syartab'){
			$query = "select * from tabungan2 where id_tab2 = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_tab2']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_tab2']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_tab2']; ?></td></tr>
			<tr><td>Setoran Awal: </td><td><?php echo $list['set_awal_tab']; ?></td></tr>
			<tr><td>Setoran Selanjutnya : </td><td><?php echo $list['set_selanjutnya_tab']; ?></td></tr>
			<tr><td>Biaya Administrasi : </td><td><?php echo $list['biaya_admin_tab']; ?></td></tr>
			<tr><td>Nisbah: </td><td><?php echo $list['nisbah_tab']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_tab']; ?></td></tr>
			<tr><td>Saldo Minimum: </td><td><?php echo $list['saldo_minim_tab']; ?></td></tr>
			<tr><td>Periode Undian : </td><td><?php echo $list['periode_undian']; ?></td></tr>
			</table>
			<?php 
			}elseif ($tampil=='semuatab') {
			$query = "select * from tabunganall where id_tab = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo '"'.$list['bank_tab'].'"'; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_tab']; ?></td></tr>
			<tr><td>Nama Produk :</td><td> <?php echo $list['jenis_tab']; ?></td></tr>
			<tr><td>Jumlah ATM: </td><td> <?php echo $list['jml_atm']; ?></td></tr>
			<tr><td>Setoran Awal:</td><td> <?php echo $list['set_awal_tab']; ?></td></tr>
			<tr><td>Setoran Selanjutnya :</td><td> <?php echo $list['set_selanjutnya_tab']; ?></td></tr>
			<tr><td>Biaya Administrasi :</td><td> <?php echo $list['biaya_admin_tab']; ?></td></tr>
			<tr><td>nisbah :</td><td> <?php echo $list['nisbah_tab']; ?></td></tr>
			<tr><td>Nisbah :</td><td> <?php echo $list['nisbah_tab']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_tab']; ?></td></tr>
			<tr><td>Saldo Minimum:</td><td> <?php echo $list['saldo_minim_tab']; ?></td></tr>
			<tr><td>Periode Undian :</td><td> <?php echo $list['periode_undian']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='konvgiro'){
			$query = "select * from giro where id_giro = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_giro']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_giro']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_giro']; ?></td></tr>
			<tr><td>Setoran Awal: </td><td><?php echo $list['set_awal_giro']; ?></td></tr>
			<tr><td>Saldo Minimum : </td><td><?php echo $list['saldo_minim_giro']; ?></td></tr>
			<tr><td>Pilihan Mata Uang : </td><td><?php echo $list['pil_mata_uang_giro']; ?></td></tr>
			<tr><td>nisbah: </td><td><?php echo $list['nisbah_giro']; ?></td></tr>
			<tr><td>Biaya Administrasi: </td><td><?php echo $list['biaya_admin_giro']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_giro']; ?></td></tr>
			<tr><td>Biaya Buku : </td><td><?php echo $list['biaya_buku_giro']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='syargiro'){
			$query = "select * from giro2 where id_giro2 = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_giro2']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_giro2']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_giro2']; ?></td></tr>
			<tr><td>Setoran Awal: </td><td><?php echo $list['set_awal_giro']; ?></td></tr>
			<tr><td>Saldo Minimum : </td><td><?php echo $list['saldo_minim_giro']; ?></td></tr>
			<tr><td>Pilihan Mata Uang : </td><td><?php echo $list['pil_mata_uang_giro']; ?></td></tr>
			<tr><td>Biaya Administrasi: </td><td><?php echo $list['biaya_admin_giro']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_giro']; ?></td></tr>
			<tr><td>Biaya Buku : </td><td><?php echo $list['biaya_buku_giro']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='semuagiro'){
			$query = "select * from giro where id_giro = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_giro']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_giro']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_giro']; ?></td></tr>
			<tr><td>Setoran Awal: </td><td><?php echo $list['set_awal_giro']; ?></td></tr>
			<tr><td>Saldo Minimum : </td><td><?php echo $list['saldo_minim_giro']; ?></td></tr>
			<tr><td>Pilihan Mata Uang : </td><td><?php echo $list['pil_mata_uang_giro']; ?></td></tr>
			<tr><td>nisbah : </td><td><?php echo $list['nisbah_giro']; ?></td></tr>
			<tr><td>Biaya Administrasi: </td><td><?php echo $list['biaya_admin_giro']; ?></td></tr>
			<tr><td>Biaya Penutupan: </td><td><?php echo $list['biaya_tutup_giro']; ?></td></tr>
			<tr><td>Biaya Buku : </td><td><?php echo $list['biaya_buku_giro']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='konvdep'){
			$query = "select * from deposito where id_dep = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_dep']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_dep']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_dep']; ?></td></tr>
			<tr><td>Bunga 1 Bulan: </td><td><?php echo $list['bunga_1_dep']; ?></td></tr>
			<tr><td>Bunga 3 Bulan: </td><td><?php echo $list['bunga_3_dep']; ?></td></tr>
			<tr><td>Bunga 6 Bulan : </td><td><?php echo $list['bunga_6_dep']; ?></td></tr>
			<tr><td>Bunga 12 Bulan : </td><td><?php echo $list['bunga_12_dep']; ?></td></tr>
			<tr><td>Bunga 24 Bulan: </td><td><?php echo $list['bunga_24_dep']; ?></td></tr>
			<tr><td>Pilihan Mata Uang: </td><td><?php echo $list['pil_mata_uang_dep']; ?></td></tr>
			<tr><td>Minimal Pembukaan: </td><td><?php echo $list['minim_pembukaan_dep']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='syardep'){
			$query = "select * from deposito2 where id_dep2 = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_dep2']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_dep2']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_dep2']; ?></td></tr>
			<tr><td>Nisbah 1 Bulan: </td><td><?php echo $list['nisbah_1_dep']; ?></td></tr>
			<tr><td>Nisbah 3 Bulan: </td><td><?php echo $list['nisbah_3_dep']; ?></td></tr>
			<tr><td>Nisbah 6 Bulan : </td><td><?php echo $list['nisbah_6_dep']; ?></td></tr>
			<tr><td>Nisbah 12 Bulan : </td><td><?php echo $list['nisbah_12_dep']; ?></td></tr>
			<tr><td>Pilihan Mata Uang: </td><td><?php echo $list['pil_mata_uang_dep']; ?></td></tr>
			<tr><td>Minimal Pembukaan: </td><td><?php echo $list['minim_pembukaan_dep']; ?></td></tr>
			</table>
			<?php
			}elseif($tampil=='semuadep'){
			$query = "select * from depositoall where id_dep = '$idbank'";
			$result=mysql_query($query) or die(mysql_error());
			$list=mysql_fetch_array($result);

			//print_r($list);
			?>
			<h3>Detail Bank <?php echo $list['bank_dep']; ?></h3>
			<table>
			<tr><td width="30%">Nama Bank: </td><td><?php echo $list['bank_dep']; ?></td></tr>
			<tr><td>Nama Produk : </td><td><?php echo $list['jenis_dep']; ?></td></tr>
			<tr><td>Bunga 1 Bulan: </td><td><?php echo $list['bunga_1_dep']; ?></td></tr>
			<tr><td>Bunga 3 Bulan: </td><td><?php echo $list['bunga_3_dep']; ?></td></tr>
			<tr><td>Bunga 6 Bulan : </td><td><?php echo $list['bunga_6_dep']; ?></td></tr>
			<tr><td>Bunga 12 Bulan : </td><td><?php echo $list['bunga_12_dep']; ?></td></tr>
			<tr><td>Bunga 24 Bulan: </td><td><?php echo $list['bunga_24_dep']; ?></td></tr>
			<tr><td>Nisbah 1 Bulan: </td><td><?php echo $list['nisbah_1_dep']; ?></td></tr>
			<tr><td>Nisbah 3 Bulan: </td><td><?php echo $list['nisbah_3_dep']; ?></td></tr>
			<tr><td>Nisbah 6 Bulan : </td><td><?php echo $list['nisbah_6_dep']; ?></td></tr>
			<tr><td>Nisbah 12 Bulan : </td><td><?php echo $list['nisbah_12_dep']; ?></td></tr>
			<tr><td>Pilihan Mata Uang: </td><td><?php echo $list['pil_mata_uang_dep']; ?></td></tr>
			<tr><td>Minimal Pembukaan: </td><td><?php echo $list['minim_pembukaan_dep']; ?></td></tr>
			</table>
		
	<?php } ?>


		<p><a href="javascript:history.back();">Back</a></p>

	</div>
</div>
<?php include ("footer.php")?>   