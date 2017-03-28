<?php include ("header.php") ?>
<?php require ("fungsi.php") ?>
 <div id="inner">
    <div id="main">
      <h2>Rekomendasi Jenis Tabungan Bank</h2>
     
<?php
    if (isset($_POST['submit']))
    {

      //print_r($_POST);
      //survei atm
      $atm = @$_POST['atm'];
      $atm1 = @$_POST['sdktatm'];$atm1=intval($atm1);
      $atm2 = @$_POST['sdgatm'];$atm2 = intval($atm2);
      $atm3 = @$_POST['bykatm'];$atm3 = intval($atm3);

      $awal = @$_POST['awal'];
      $awal1 = @$_POST['sdktawal'];$awal1=intval($awal1);
      $awal2 = @$_POST['sdgawal'];$awal2 = intval($awal2);
      $awal3 = @$_POST['bykawal'];$awal3 = intval($awal3);

      $lanjut = @$_POST['lanjut'];
      $lanjut1 = @$_POST['sdktlanjut'];$lanjut1=intval($lanjut1);
      $lanjut2 = @$_POST['sdglanjut'];$lanjut2 = intval($lanjut2);
      $lanjut3 = @$_POST['byklanjut'];$lanjut3 = intval($lanjut3);

      $admin = @$_POST['admin'];
      $admin1 = @$_POST['sdktadmin'];$admin1=intval($admin1);
      $admin2 = @$_POST['sdgadmin'];$admin2 = intval($admin2);
      $admin3 = @$_POST['bykadmin'];$admin3 = intval($admin3);

      $bunga = @$_POST['bunga'];
      $bunga1 = @$_POST['sdktbunga'];$bunga1=intval($bunga1);
      $bunga2 = @$_POST['sdgbunga'];$bunga2 = intval($bunga2);
      $bunga3 = @$_POST['bykbunga'];$bunga3 = intval($bunga3);

      
      $tutup = @$_POST['tutup'];
      $tutup1 = @$_POST['sdkttutup'];$tutup1=intval($tutup1);
      $tutup2 = @$_POST['sdgtutup'];$tutup2 = intval($tutup2);
      $tutup3 = @$_POST['byktutup'];$tutup3 = intval($tutup3);

      $minim = @$_POST['minim'];
      $minim1 = @$_POST['sdktminim'];$minim1=intval($minim1);
      $minim2 = @$_POST['sdgminim'];$minim2 = intval($minim2);
      $minim3 = @$_POST['bykminim'];$minim3 = intval($minim3);

      $undi = @$_POST['undi'];
      $undi1 = @$_POST['sdktundi'];$undi1=intval($undi1);
      $undi2 = @$_POST['sdgundi'];$undi2 = intval($undi2);
      $undi3 = @$_POST['bykundi'];$undi3 = intval($undi3);
    }  

function getsedikit($field,$val1,$val2,$val3){
  //echo "<script>alert('".$field." / ".$val1." / ".$val2." / ".$val3."')</script>\r\n";

  $query = "select * from tabungan";
  $result=mysql_query($query) or die(mysql_error());
  $i=0; $nilai=array();
  while($list=mysql_fetch_array($result)){
    $x=$list[$field];
    $idtab=$list['id_tab'];   

    if($x<=$val1){
      $nilai[$idtab]=1;
      //echo "<script>alert('".$nilai[$i]."')</script>";
    
    }elseif($x>=$val1 && $x<=$val3){
      $nilai[$idtab]= ($val3-$x)/($val3-$val1);
      //echo "<script>alert('".$nilai[$i]."')</script>";   
    
    }else{
      $nilai[$idtab]=0;
      //echo "<script>alert('".$nilai[$i]."')</script>";
    
    }
    $i++;
    //echo $min;   
  }

  return $nilai;
  
}   

  function getsedang($field,$val1,$val2,$val3){
      //echo "<script>alert('".$field." / ".$val1." / ".$val2." / ".$val3."')</script>\r\n";
      $query = "select * from tabungan";
      $i=0;
      $nilai=array();
      $result=mysql_query($query) or die(mysql_error());
      while($list=mysql_fetch_array($result)){
         $x=$list[$field];
         $idtab=$list['id_tab'];

         if($x<=$val1 || $x>=$val3){
            $nilai[$idtab]=0;
            
         }
         elseif($x>=$val1 && $x<=$val2){
          $nilai[$idtab]= ($x-$val1)/($val2-$val1);
         
          
         }
         elseif($x>=$val2 && $x<=$val3){
          $nilai[$idtab]=($val3-$x)/($val3-$val2);
       
         }
         $i++;
    //echo $min;
   }

  return $nilai;
  
}   


function getbanyak($field,$val1,$val2,$val3){
      //echo "<script>alert('".$field." / ".$val1." / ".$val2." / ".$val3."')</script>\r\n";
      $query = "select * from tabungan";
      $i=0;
      $nilai=array();
      $result=mysql_query($query) or die(mysql_error());
      while($list=mysql_fetch_array($result)){
         $x=$list[$field];
         $idtab=$list['id_tab'];
        
         if($x<=$val1){
            $nilai[$idtab]=0;
          
         }
         elseif($x>=$val1 && $x<=$val3 ){
          $nilai[$idtab]= ($x-$val1)/($val3-$val1); 
         
         }
         elseif($x>=$val3){
          $nilai[$idtab] = 1;        
         }
          $i++;
    //echo $min;   
  }

  return $nilai;
  
}   


$kolom = array('jml_atm', 'set_awal_tab', 'set_selanjutnya_tab','biaya_admin_tab', 'bunga_tab', 'biaya_tutup_tab', 'saldo_minim_tab', 'periode_undian');
//$lo = count($kolom);

$u = 0; $hasil = array();
//for($u=0;$u<=$lo;$u++){
foreach ($kolom as $fields) {

  switch ($u+1) {
                      
    case 1: 
      $xx = $atm; 
      $n1 = $atm1;
      $n2 = $atm2;
      $n3 = $atm3;
    break;

    case 2: 
      $xx = $awal; 
      $n1 = $awal1;
      $n2 = $awal2;
      $n3 = $awal3;
    break;

    case 3: 
      $xx = $lanjut; 
      $n1 = $lanjut1;
      $n2 = $lanjut2;
      $n3 = $lanjut3;
    break;

    case 4: 
      $xx = $admin; 
      $n1 = $admin1;
      $n2 = $admin2;
      $n3 = $admin3;
    break;

    case 5: 
      $xx = $bunga; 
      $n1 = $bunga1;
      $n2 = $bunga2;
      $n3 = $bunga3;
    break;

    case 6: 
      $xx = $tutup; 
      $n1 = $tutup1;
      $n2 = $tutup2;
      $n3 = $tutup3;
    break;

    case 7: 
      $xx = $minim; 
      $n1 = $minim1;
      $n2 = $minim2;
      $n3 = $minim3;
    break;

    case 8: 
      $xx = $undi; 
      $n1 = $undi1;
      $n2 = $undi2;
      $n3 = $undi3;
    break;
  }

  if($xx == "1"){
      $out[$kolom[$u]] = getsedikit($kolom[$u],$n1,$n2,$n3);
  }elseif($xx == "2"){
      $out[$kolom[$u]] = getsedang($kolom[$u],$n1,$n2,$n3);
  }elseif($xx == "3"){
      $out[$kolom[$u]] = getbanyak($kolom[$u],$n1,$n2,$n3);
  }

  $u++;

}

//print_r($out);

$query = "select * from tabungan";
$result=mysql_query($query) or die(mysql_error());
while($list=mysql_fetch_array($result)){
  $idtab = $list['id_tab'];
  $bank=$list['bank_tab'];
  $jenis=$list['jenis_tab'];

  $atm = ( isset($out[$kolom[0]][$idtab]) )? $out[$kolom[0]][$idtab]: null;
  $awal = ( isset($out[$kolom[1]][$idtab]) )? $out[$kolom[1]][$idtab]: null;
  $lanjut = ( isset($out[$kolom[2]][$idtab]) )? $out[$kolom[2]][$idtab]: null;
  $admin = ( isset($out[$kolom[3]][$idtab]) )? $out[$kolom[3]][$idtab]: null;
  $bunga = ( isset($out[$kolom[4]][$idtab]) )? $out[$kolom[4]][$idtab]: null;
  $tutup = ( isset($out[$kolom[5]][$idtab]) )? $out[$kolom[5]][$idtab]: null;
  $minim = ( isset($out[$kolom[6]][$idtab]) )? $out[$kolom[6]][$idtab]: null;
  $undi = ( isset($out[$kolom[7]][$idtab]) )? $out[$kolom[7]][$idtab]: null;
 
  $col = array();
  if( isset($out[$kolom[0]][$idtab]) ) $col['atm'] = $out[$kolom[0]][$idtab];
  if( isset($out[$kolom[1]][$idtab]) ) $col['awal'] = $out[$kolom[1]][$idtab];
  if( isset($out[$kolom[2]][$idtab]) ) $col['lanjut'] = $out[$kolom[2]][$idtab];
  if( isset($out[$kolom[3]][$idtab]) ) $col['admin'] = $out[$kolom[3]][$idtab];
  if( isset($out[$kolom[4]][$idtab]) ) $col['bunga'] = $out[$kolom[4]][$idtab];
  if( isset($out[$kolom[5]][$idtab]) ) $col['tutup'] = $out[$kolom[5]][$idtab];
  if( isset($out[$kolom[6]][$idtab]) ) $col['minim'] = $out[$kolom[6]][$idtab];
  if( isset($out[$kolom[7]][$idtab]) ) $col['undi'] = $out[$kolom[7]][$idtab];
  
  $fire = ( count($col) > 0 ) ? min($col) : null;
  
  if($fire != null):
    $tabungan[$idtab] = array(
      'id'=>$idtab,
      'nama'=> $bank,
      'produk' => $jenis,
      'atm' => $atm,
      'awal' => $awal,
      'lanjut' => $lanjut,
      'admin' => $admin,
      'bunga' => $bunga,
      'tutup' => $tutup,
      'minim' => $minim,
      'undi' => $undi,
      'fire' => $fire
    );
  endif;
  
  $datamiu[$idtab] = array(
      'id'=>$idtab,
      'nama'=> $bank,
      'produk' => $jenis,
      'atm' => $atm,
      'awal' => $awal,
      'lanjut' => $lanjut,
      'admin' => $admin,
      'bunga' => $bunga,
      'tutup' => $tutup,
      'minim' => $minim,
      'undi' => $undi,
      'fire' => $fire,
      'miu' => $col
  );
}

 function aasort(&$aray,$key){
    $sorter=array();
    $ret=array();
    reset($aray);
    foreach($aray as $ii =>$va){
      $sorter[$ii]=$va[$key];
    }
    arsort($sorter);
    foreach ($sorter as $ii => $va) {
      $ret[$ii]=$aray[$ii];
    }
    $aray=$ret;
  }
  
  function rating10($num){
	$num = floor($num*10);
	
	$ret = '<div class="rating">';
	for($i=1;$i<=10;$i++){
		if($i>$num){
			$ret .= '<span class="empty">☆</span>';
		}else{
			$ret .= '<span class="full">☆</span>';
		}
	}
	$ret .= '</div>';
	
	return $ret;
  }

  $oop = count($tabungan);
  if($oop != 0){
      aasort($tabungan,"fire");
      $tabel = "<table>";
      $tabel .= "<tr>";
      $tabel .= "<th>No.</th>";
      $tabel .= "<th>Nilai Rekomendasi</th>";
      $tabel .= "<th>Nama Bank</th>";
      $tabel .= "<th>Nama Produk Tabungan</th>";
      $tabel .= "<th>Detail Bank</th>";
      $tabel .= "</tr>";
        
      $nomor= 0; $loadmore= 0;
      foreach ($tabungan as $row) {
          if(!empty($row ['fire'])){
          $nomor++; if(($nomor>=10) && ($nomor%10==1)) $loadmore++;
          
          $tabel .= "<tr class=\"more m$loadmore\">";
          $tabel .= "<td style='text-align:center;'>$nomor</td>";
          //$tabel .= "<td style='text-align:center;'>". (round($row['fire'],2))*100 . "%<br>".rating10($row['fire'])."</td>";
          $tabel .= "<td style='text-align:center;'>". $row['fire'] . "<br>".rating10($row['fire'])."</td>";
          $tabel .= "<td style='text-align:center;'>".$row['nama']."</td>";
          $tabel .= "<td  style='text-align:center;text-transform:uppercase;' >".$row['produk']."</td>";
          $tabel .= "<td style='text-align:center;'><a href=\"bank.php?id=".$row['id']."&tab=konvtab\">Detail Bank<a></td>";
          $tabel .= "</tr>";
          }
      }
      
      if($loadmore>0){
          $tabel .= "<tr class=\"mload\">";
          $tabel .= "<td colspan=\"5\" style='text-align:center;'><a href=\"javascript:loadmore();\">&laquo; Load More &raquo;</a></td>";
          $tabel .= "</tr>";
      }
      
      $tabel .= "</table>";
      echo $tabel;
      //echo '<a class="button fancybox" href="#miu" title="Hasil Perhitungan Nilai µ">Lihat Hasil Perhitungan Nilai µ</a>';
  }else{
      echo "<p>Maaf, Tidak ada rekomendasi!</p>";
      //echo '';
  } 

?>
<a class="button fancybox" href="#miu" title="Hasil Perhitungan Nilai µ">Lihat Hasil Perhitungan Nilai µ</a>
<div id="miu" style="width:1024px;display:none;">
    <h3 class="judul">Hasil Perhitungan Nilai µ</h3>
    <?php
      
      //echo "<pre>";
      //print_r($datamiu);
      //echo "</pre>";
      
      aasort($datamiu,"fire");
      $tabel = "<table>";
      $tabel .= "<tr>";
      $tabel .= "<td style='text-align:center;font-weight:bold;'>No.</td>";
      $tabel .= "<td style='text-align:center;font-weight:bold;'>Nama Bank - Produk</td>";
      if($_POST['atm']) $tabel .= "<td style='text-align:center;font-weight:bold;'>ATM</td>";
      if($_POST['awal']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Awal</td>";
      if($_POST['lanjut']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Lanjut</td>";
      if($_POST['admin']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Admin</td>";
      if($_POST['bunga']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Bunga</td>";
      if($_POST['tutup']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Tutup</td>";
      if($_POST['minim']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Minim</td>";
      if($_POST['undi']) $tabel .= "<td style='text-align:center;font-weight:bold;'>Undi</td>";
      $tabel .= "<td style='text-align:center;font-weight:bold;'>Fire</td>";
      $tabel .= "</tr>";

      $nomor=0;
      foreach ($datamiu as $row) {
          $nomor++;
          $tabel .= "<tr>";
          $tabel .= "<td style='text-align:center;'>$nomor</td>";
          $tabel .= "<td style='text-transform:uppercase;'><a href=\"bank.php?id=".$row['id']."&tab=konvtab\">".$row['nama']." - ".$row['produk']."<a></td>";
          if($_POST['atm']) $tabel .= "<td style='text-align:'>".$row['atm']."</td>";
          if($_POST['awal']) $tabel .= "<td style='text-align:'>".$row['awal']."</td>";
          if($_POST['lanjut']) $tabel .= "<td style='text-align:'>".$row['lanjut']."</td>";
          if($_POST['admin']) $tabel .= "<td style='text-align:'>".$row['admin']."</td>";
          if($_POST['bunga']) $tabel .= "<td style='text-align:'>".$row['bunga']."</td>";
          if($_POST['tutup']) $tabel .= "<td style='text-align:'>".$row['tutup']."</td>";
          if($_POST['minim']) $tabel .= "<td style='text-align:'>".$row['minim']."</td>";
          if($_POST['undi']) $tabel .= "<td style='text-align:'>".$row['undi']."</td>";
          $tabel .= "<td style='text-align:center;'>".$row['fire']."</td>";
          $tabel .= "</tr>";
      }
      
      $tabel .= "</table>";
      echo $tabel;
    ?>
</div>
<style> 
.fancybox-lock .fancybox-overlay {background-color: rgba(0, 0, 0, 0.8);} 
.fancybox-lock h3.judul {text-align:center;}
.fancybox-lock table {margin: 0 auto; border:1px solid #333;}
.fancybox-lock table tbody tr td {border:1px solid #333;}
.fancybox-lock .fancybox-close {display:none;}
</style>
<script type="text/javascript"><!-- 
<?php if($oop != 0): ?>
var morenum=<?php echo $loadmore;?>;
var ldmore=0;
function loadmore(){
    ldmore++;
    if(ldmore==morenum){ $('.mload').hide(); }
    $('.m'+ldmore).show('slow');
}
<?php endif; ?>
$(document).ready(function(){
	$('.fancybox').fancybox();
});
//--></script>  

<br/><br/>
<div align="center">
<a href="tabungan.php">Input Kriteria Lagi</a>
</div>

</div>
</div>
<?php include ("footer.php")?>    