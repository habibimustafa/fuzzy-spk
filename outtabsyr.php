<?php include ("header.php") ?>
<?php require ("fungsi.php") ?>

<div id="inner">
    <div id="main">
      <h2>Rekomendasi Jenis Tabungan Bank</h2>
      
<?php
    if (isset($_POST['submit']))
    {

      $awal = @$_POST['awal'];
      $awal1 = @$_POST['rdhawal'];$awal1=intval($awal1);
      $awal2 = @$_POST['tghawal'];$awal2syr= intval($awal2);
      $awal3 = @$_POST['tgiawal'];$awal3syr = intval($awal3);

      $lanjut = @$_POST['lanjut'];
      $lanjut1 = @$_POST['rdhlanjut'];$lanjut1=intval($lanjut1);
      $lanjut2 = @$_POST['tghlanjut'];$lanjut2 = intval($lanjut2);
      $lanjut3 = @$_POST['tgilanjut'];$lanjut3 = intval($lanjut3);

      $admin = @$_POST['admin'];
      $admin1 = @$_POST['rdhadmin'];$admin1=intval($admin1);
      $admin2 = @$_POST['tghadmin'];$admin2 = intval($admin2);
      $admin3 = @$_POST['tgiadmin'];$admin3 = intval($admin3);

      $nisbah= @$_POST['nisbah'];
      $nisbah1 = @$_POST['rdhnisbah'];$nisbah1=intval($nisbah1);
      $nisbah2= @$_POST['tghnisbah'];$nisbah2 = intval($nisbah2);
      $nisbah3 = @$_POST['tginisbah'];$nisbah3= intval($nisbah3);

      
      $tutup = @$_POST['tutup'];
      $tutup1 = @$_POST['rdhtutup'];$tutup1=intval($tutup1);
      $tutup2 = @$_POST['tghtutup'];$tutup2 = intval($tutup2);
      $tutup3 = @$_POST['tgitutup'];$tutup3 = intval($tutup3);

      $minim = @$_POST['minim'];
      $minim1 = @$_POST['rdhminim'];$minim1=intval($minim1);
      $minim2= @$_POST['tghminim'];$minim2 = intval($minim2);
      $minim3 = @$_POST['tgiminim'];$minim3 = intval($minim3);

      $undi = @$_POST['undi'];
      $undi1 = @$_POST['rdhundi'];$undi1=intval($undi1);
      $undi2 = @$_POST['tghundi'];$undi2 = intval($undi2);
      $undi3 = @$_POST['tgiundi'];$undi3 = intval($undi3);

      }  

   function getsedikit($field,$val1,$val2,$val3){
  //echo "<script>alert('".$field." / ".$val1." / ".$val2." / ".$val3."')</script>\r\n";

  $query = "select * from tabungan2";
  $result=mysql_query($query) or die(mysql_error());
  $i=0; $nilai=array();
  while($list=mysql_fetch_array($result)){
    $x=$list[$field];
    $idtab=$list['id_tab2'];   

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


      $query = "select * from tabungan2";
      $i=0;
      $nilai=array();
      $result=mysql_query($query) or die(mysql_error());
      while($list=mysql_fetch_array($result)){
         $x=$list[$field];
         $idtab=$list['id_tab2'];

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
      $query = "select * from tabungan2";
      $i=0;
      $nilai=array();
      $result=mysql_query($query) or die(mysql_error());
      while($list=mysql_fetch_array($result)){
         $x=$list[$field];
         $idtab=$list['id_tab2'];
        
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

$kolom = array('set_awal_tab', 'set_selanjutnya_tab', 'biaya_admin_tab', 'nisbah_tab', 'biaya_tutup_tab', 'saldo_minim_tab', 'periode_undian');
//$lo = count($kolom);

$u = 0; $hasil = array();
//for($u=0;$u<=$lo;$u++){
foreach ($kolom as $fields) {

  switch ($u+1) {
    
   case 1: 
      $xx = $awal; 
      $n1 = $awal1;
      $n2 = $awal2;
      $n3 = $awal3;
    break;
   case 2: 
      $xx = $lanjut; 
      $n1 = $lanjut1;
      $n2 = $lanjut2;
      $n3 = $lanjut3;
    break;
    case 3: 
      $xx = $admin; 
      $n1 = $admin1;
      $n2 = $admin2;
      $n3 = $admin3;
    break;
    case 4: 
      $xx = $nisbah; 
      $n1 = $nisbah1;
      $n2 = $nisbah2;
      $n3 = $nisbah3;
    break;
    case 5: 
      $xx = $tutup; 
      $n1 = $tutup1;
      $n2 = $tutup2;
      $n3 = $tutup3;
    break;
    case 6: 
      $xx = $minim; 
      $n1 = $minim1;
      $n2 = $minim2;
      $n3 = $minim3;
    break;
   case 7: 
      $xx = $undi; 
      $n1 = $undi1;
      $n2 = $undi2;
      $n3 = $undi3;
    break;

  }

  if($xx == "1"){
      $out[] = getsedikit($kolom[$u],$n1,$n2,$n3);
  }elseif($xx == "2"){
      $out[] = getsedang($kolom[$u],$n1,$n2,$n3);
  }elseif($xx == "3"){
      $out[] = getbanyak($kolom[$u],$n1,$n2,$n3);
 }

  $u++;

}

$query = "select * from tabungan2";
$result=mysql_query($query) or die(mysql_error());
while($list=mysql_fetch_array($result)){
  $idtab = $list['id_tab2'];
  $bank=$list['bank_tab2'];
  $jenis=$list['jenis_tab2'];

  $awal = ( isset($out[0][$idtab]) )? $out[0][$idtab]: null;
  $lanjut = ( isset($out[1][$idtab]) )? $out[1][$idtab]: null;
  $admin = ( isset($out[2][$idtab]) )? $out[2][$idtab]: null;
  $nisbah= ( isset($out[3][$idtab]) )? $out[3][$idtab]: null;
  $tutup = ( isset($out[4][$idtab]) )? $out[4][$idtab]: null;
  $minim = ( isset($out[5][$idtab]) )? $out[5][$idtab]: null;
  $undi = ( isset($out[6][$idtab]) )? $out[6][$idtab]: null;

  $col = array();
  if( isset($out[0][$idtab]) ) array_push($col, $out[0][$idtab]);
  if( isset($out[1][$idtab]) ) array_push($col, $out[1][$idtab]);
  if( isset($out[2][$idtab]) ) array_push($col, $out[2][$idtab]);
  if( isset($out[3][$idtab]) ) array_push($col, $out[3][$idtab]);
  if( isset($out[4][$idtab]) ) array_push($col, $out[4][$idtab]);
  if( isset($out[5][$idtab]) ) array_push($col, $out[5][$idtab]);
  if( isset($out[6][$idtab]) ) array_push($col, $out[6][$idtab]);

  $tabungan[$idtab] = array(
    'id'=>$idtab,
    'nama'=> $bank,
    'produk' => $jenis,
    'awal' => $awal,
    'lanjut' => $lanjut,
    'admin' => $admin,
    'nisbah' => $nisbah,
    'tutup' => $tutup,
    'minim' => $minim,
    'undi' => $undi,
    'fire' => $fire
  );
}
//print_r($tabungan);
  
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

 aasort($tabungan,"fire");

  $oop = count($tabungan);
  if($oop != 0){
  
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
          $tabel .= "<td style='text-align:center;'>".round($row['fire'],2)."</td>";
          $tabel .= "<td style='text-align:center;'>".$row['nama']."</td>";
          $tabel .= "<td  style='text-align:center;text-transform:uppercase;' >".$row['produk']."</td>";
          $tabel .= "<td style='text-align:center;'><a href=\"bank.php?id=".$row['id']."&tab=syartab\">Detail Bank<a></td>";
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
  
  }
 

?> 

<script type="text/javascript"><!-- 
var morenum=<?php echo $loadmore;?>;
var ldmore=0;
function loadmore(){
    ldmore++;
    if(ldmore==morenum){ $('.mload').hide(); }
    $('.m'+ldmore).show('slow');
}
//--></script>  

<br/> <br/>
             <div align="center">
              <a href="tabungan.php">Input Kriteria Lagi</a>
            </div>

</div>
</div>
<?php include ("footer.php")?>    