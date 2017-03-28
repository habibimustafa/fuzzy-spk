
<form onsubmit="return validateForm();"  action="outtabsyr.php" method="post" name="tabsyariah">                   
       <table>
       <tr>
      <td width="70%">Setoran awal</td>
      <td>
        <div class="radio">
        <input onclick="rulesyariah('0','0');" type="radio" id="radio-awalsy1" name="awal" value="1" /><label for="radio-awalsy1">Murah</label>
        <input onclick="rulesyariah('0','1');" type="radio" id="radio-awalsy2" name="awal" value="2" /><label for="radio-awalsy2">Sedang</label>
        <input onclick="rulesyariah('0','2');" type="radio" id="radio-awalsy3" name="awal" value="3" /><label for="radio-awalsy3">Mahal</label>
        </div> 
      </td>       
      </tr>
      <tr class="awal" style="display:none;">         
      <td>Menurut Anda setoran awal bernilai murah, lebih kecil atau sama dengan</td>
      <td><input type="textfield" id="rdhawal" name="rdhawal"  maxlength="50"> Rupiah
        </tr>
        
       <tr class="awal" style="display:none;"> 
      <td>Menurut Anda setoran awal bernilai sedang, adalah sama dengan</td>
      <td><input type="textfield" id="tghawal" name="tghawal" maxlength="50"> Rupiah
      </td>
      </tr>

      <tr class="awal" style="display:none;"> 
      <td>Menurut Anda setoran awal bernilai mahal, adalah lebih besar atau sama dengan</td>
      <td><input type="textfield" id="tgiawal" name="tgiawal" maxlength="50"> Rupiah
      </td>
      </tr>               

      <tr>
      <td width="70%">Setoran Selanjutnya</td>
           <td>
            <div class="radio">
            <input onclick="rulesyariah('1','0');" type="radio" id="radio-lanjutsy1" name="lanjut" value="1" /><label for="radio-lanjutsy1">Mahal</label>
            <input onclick="rulesyariah('1','1');" type="radio" id="radio-lanjutsy2" name="lanjut" value="2" /><label for="radio-lanjutsy2">Mahal</label>
            <input onclick="rulesyariah('1','2');" type="radio" id="radio-lanjutsy3" name="lanjut" value="3" /><label for="radio-lanjutsy3">Mahal</label>
          </div>
         </td>       
        </tr>
    <tr class="lanjut" style="display:none;">        
    <td>Menurut Anda setoran selanjutnya bernilai murah, lebih kecil atau sama dengan</td>
    <td><input  type="textfield" id="rdhlanjut" name="rdhlanjut"  maxlength="50"> Rupiah
    </tr>
  
    <tr class="lanjut" style="display:none;"> 
    <td>Menurut Anda setoran selanjutnya bernilai sedang, adalah sama dengan</td>
    <td><input type="textfield" id="tghlanjut" name="tghlanjut"  maxlength="50"> Rupiah
    </tr>

<tr class="lanjut" style="display:none;"> 
  <td>Menurut Anda setoran selanjutnya bernilai mahal, adalah lebih besar atau sama dengan</td>
<td><input type="textfield" id="tgilanjut" name="tgilanjut"  maxlength="50"> Rupiah
  </tr>        
          <tr>
          <td width="70%">Biaya Administrasi</td>
          <td>
            <div class="radio">
            <input onclick="rulesyariah('2','0');" type="radio" id="radio-adminsy1" name="admin" value="1" /><label for="radio-adminsy1">Murah</label>
            <input onclick="rulesyariah('2','1');" type="radio" id="radio-adminsy2" name="admin" value="2" /><label for="radio-adminsy2">Sedang</label>
            <input onclick="rulesyariah('2','2');" type="radio" id="radio-adminsy3" name="admin" value="3" /><label for="radio-adminsy3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="rdhadmin" name="rdhadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="tghadmin" name="tghadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="tgiadmin" name="tgiadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Nisbah Tabungan</td>
          <td>
            <div class="radio">
            <input onclick="rulesyariah('3','0');" type="radio" id="radio-nisbah1" name="nisbah" value="1" /><label for="radio-nisbah1">Rendah</label>
            <input onclick="rulesyariah('3','1');" type="radio" id="radio-nisbah2" name="nisbah" value="2" /><label for="radio-nisbah2">Sedang</label>
            <input onclick="rulesyariah('3','2');" type="radio" id="radio-nisbah3" name="nisbah" value="3" /><label for="radio-nisbah3">Tinggi</label>
            </div>
          </td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai rendah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="rdhnisbah" name="rdhnisbah" maxlength="50"> Persen</td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="tghnisbah" name="tghnisbah" maxlength="50"> Persen</td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai tinggi adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="tginisbah" name="tginisbah" maxlength="50"> Persen</td>
          </tr>
          <tr>
          <td width="70%">Biaya Penutupan</td>
          <td>
            <div class="radio">
            <input onclick="rulesyariah('4','0');" type="radio" id="radio-tutupsy1" name="tutup" value="1" /><label for="radio-tutupsy1">Murah</label>
            <input onclick="rulesyariah('4','1');" type="radio" id="radio-tutupsy2" name="tutup" value="2" /><label for="radio-tutupsy2">Sedang</label>
            <input onclick="rulesyariah('4','2');" type="radio" id="radio-tutupsy3" name="tutup" value="3" /><label for="radio-tutupsy3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tanisbahn bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="rdhtutup" name="rdhtutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tanisbahn bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="tghtutup" name="tghtutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tanisbahn bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="tgitutup" name="tgitutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Saldo Minimum</td>
          <td>
            <div class="radio">
            <input onclick="rulesyariah('5','0');" type="radio" id="radio-minimsy1" name="minim" value="1" /><label for="radio-minimsy1">Murah</label>
            <input onclick="rulesyariah('5','1');" type="radio" id="radio-minimsy2" name="minim" value="2" /><label for="radio-minimsy2">Sedang</label>
            <input onclick="rulesyariah('5','2');" type="radio" id="radio-minimsy3" name="minim" value="3" /><label for="radio-minimsy3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="rdhminim" name="rdhminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="tghminim" name="tghminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="tgiminim" name="tgiminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Periode Undian Hadiah</td>
          <td>
            <div class="radio">
            <input onclick="rulesyariah('6','0');" type="radio" id="radio-undisy1" name="undi" value="1" /><label for="radio-undisy1">Jarang</label>
            <input onclick="rulesyariah('6','1');" type="radio" id="radio-undisy2" name="undi" value="2" /><label for="radio-undisy2">Sedang</label>
            <input onclick="rulesyariah('6','2');" type="radio" id="radio-undisy3" name="undi" value="3" /><label for="radio-undisy3">Sering</label>
            </div>
          </td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai jarang adalah lebih kecil atau sama dengan</td>
          <td>Per <input type="textfield" id="rdhundi" name="rdhundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sedang adalah sama dengan</td>
          <td>Per <input type="textfield" id="tghundi" name="tghundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sering adalah lebih besar atau sama dengan</td>
          <td>Per <input type="textfield" id="tgiundi" name="tgiundi" maxlength="50"> Bulan</td>
          </tr>
  
<tr>
          <td colspan="2" style="text-align:center;">
            <input name="submit" type="submit" class="box" id="submit" value="Lihat Rekomendasi Bank">
            <input name="reset" type="reset" class="box" id="reset" value="Reset Form" onclick="hideinputsyariah();">
          </td>
          </tr>
        </table>
        </form>


<?php
$koloms = array('set_awal_tab', 'set_selanjutnya_tab', 'biaya_admin_tab', 'nisbah_tab', 'biaya_tutup_tab', 'saldo_minim_tab', 'periode_undian');
foreach($koloms as $field){
  $qmaxs = "select max($field) from tabungan2";
  $rmaxs = mysql_query($qmaxs) or die(mysql_error());
  $vmaxs = mysql_fetch_array($rmaxs);

  $qmins = "select min($field) from tabungan2";
  $rmins = mysql_query($qmins) or die(mysql_error());
  $vmins = mysql_fetch_array($rmins);

  $nmaxs[] = $vmaxs[0];
  $nmins[] = $vmins[0];
  $nmids[] = $vmids = round( ($vmaxs[0]+$vmins[0])/2 );
  $nqu1s[] = round( ($vmins[0]+$vmids)/2 );
  $nqu2s[] = round( ($vmids+$vmaxs[0])/2 );

        $js_nmins = json_encode($nmins);
        $js_nqu1s = json_encode($nqu1s);
        $js_nmids = json_encode($nmids);
        $js_nqu2s = json_encode($nqu2s);
        $js_nmaxs = json_encode($nmaxs);
        
        $js_alls  = "var nmins = ". $js_nmins . ";\n\t\t\t  ";
        $js_alls .= "var nqu1s = ". $js_nqu1s . ";\n\t\t\t  ";
        $js_alls .= "var nmids = ". $js_nmids . ";\n\t\t\t  ";
        $js_alls .= "var nqu2s = ". $js_nqu2s . ";\n\t\t\t  ";
        $js_alls .= "var nmaxs = ". $js_nmaxs . ";\n";
      }
      ?>

      <script type="text/javascript"><!-- 
        $( '.radio' ).buttonset();
        <?php echo $js_alls; ?>
      var xtips = ["awal", "lanjut", "admin", "nisbah", "tutup","minim","undi"];

      function rulesyariah(tips, pilihs){
        
          $('.'+xtips[tips]).hide();
          switch(pilihs){
          case "0": //sedikit
            $('#rdh'+xtips[tips]).val( nmins[tips] );
            $('#tgh'+xtips[tips]).val( nqu1s[tips] );
            $('#tgi'+xtips[tips]).val( nmids[tips] );
            $('.'+xtips[tips]).show('slow');
          break;

          case "1": //sedang
            $('#rdh'+xtips[tips]).val( nqu1s[tips] );
            $('#tgh'+xtips[tips]).val( nmids[tips] );
            $('#tgi'+xtips[tips]).val( nqu2s[tips] );
            $('.'+xtips[tips]).show('slow');
          break;

          case "2": //banyak
            $('#rdh'+xtips[tips]).val( nmids[tips] );
            $('#tgh'+xtips[tips]).val( nqu2s[tips] );
            $('#tgi'+xtips[tips]).val( nmaxs[tips] );
            $('.'+xtips[tips]).show('slow');
          break;
          }
        }
        function hideinputsyariah(){
          $.each(xtips, function(){
            $('.'+this).hide('slow');
          });           
        }
      //--></script>  