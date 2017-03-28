<?php

	$user = "u1786488_fuzzy";
	$password = "GT7tz=U]u(Iz";
	$database = "u1786488_fuzzybank";
	mysql_connect("localhost",$user,$password) or die(mysql_error());
	mysql_select_db($database);

	function gettabu($tabel){
		$query = "select * from $tabel";
		$result=mysql_query($query) or die(mysql_error());
		while($list=mysql_fetch_array($result)){
			$a[] = $list['jml_atm'];
		}
		return $a;
	}
	function getdata($tabel,$id){
		$query = "select * from $tabel where jml_atm='$id'";
		$result=mysql_query($query) or die(mysql_error());
		$list=mysql_fetch_array($result);
		//$num = mysql_num_rows($result);
		return $list;
	}
	function getdata2($tabel){
		$query = "select * from $tabel";
		$result=mysql_query($query) or die(mysql_error());
		$i=0;
		while($list=mysql_fetch_array($result)){
			for($j=0;$j<mysql_num_fields($result);$j++){
				$namafield = mysql_field_name($result, $j);
				$data[$i][$namafield] = $list[$j];	
			}
			$i++;
		}
		//$num = mysql_num_rows($result);
		return $data;
	}
	function getdata3($tabel,$id){
		$query = "select * from $tabel where id_care = '$id'";
		$result=mysql_query($query) or die(mysql_error());
		$i=0;
		while($list=mysql_fetch_array($result)){
			for($j=0;$j<mysql_num_fields($result);$j++){
				$namafield = mysql_field_name($result, $j);
				$data[$i][$namafield] = $list[$j];	
			}		
			$i++;
		}
		//$num = mysql_num_rows($result);
		return $data;
	}
	function send($nama,$password,$alamat,$telp){
		$query = "insert into user values
				('','$nama','$password','$alamat','$telp','','')";
		$result = mysql_query($query) or die(mysql_error());
	}
	
	function sign($nama,$password){
		$query = "select * from user where nama = '$nama' AND password = '$password' ";
		$result=mysql_query($query) or die("Query Failed ".mysql_error());
		if(mysql_num_rows($result)<=0) return false;
		$i=0;
		while($list=mysql_fetch_array($result)){
			for($j=0;$j<mysql_num_fields($result);$j++){
				$namafield = mysql_field_name($result, $j);
				$data[$i][$namafield] = $list[$j];	
			}
			$i++;
		}
		//$num = mysql_num_rows($result);
		return $data;
	}
?>