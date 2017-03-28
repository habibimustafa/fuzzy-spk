<form onsubmit="return validateForm();" action="outtabsmw.php" method="post" name="tabsemua"> 
        <table>
          <tr>
          <td width="70%">Jumlah ATM</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('0','0');" type="radio" id="radio-atmsmw1" name="atm" value="1" /><label for="radio-atmsmw1">Sedikit</label>
            <input onclick="rulesemua('0','1');" type="radio" id="radio-atmsmw2" name="atm" value="2" /><label for="radio-atmsmw2">Sedang</label>
            <input onclick="rulesemua('0','2');" type="radio" id="radio-atmsmw3" name="atm" value="3" /><label for="radio-atmsmw3">Banyak</label>
            </div>
          </td>
          </tr>
          <tr class="atm" style="display:none;">          
          <td>Menurut Anda jumlah atm bernilai sedikit adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhatm" name="mrhatm" maxlength="50"> Unit</td>
          </tr>
          <tr class="atm" style="display:none;">
          <td>Menurut Anda jumlah atm bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midatm" name="midatm" maxlength="50"> Unit</td>
          </tr>
          <tr class="atm" style="display:none;">
          <td>Menurut Anda jumlah atm bernilai banyak adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhlatm" name="mhlatm" maxlength="50"> Unit</td>
          </tr>
          <tr>
          <td width="70%">Setoran Awal</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('1','0');" type="radio" id="radio-awlsmw1" name="awal" value="1" /><label for="radio-awlsmw1">Murah</label>
            <input onclick="rulesemua('1','1');" type="radio" id="radio-awlsmw2" name="awal" value="2" /><label for="radio-awlsmw2">Sedang</label>
            <input onclick="rulesemua('1','2');" type="radio" id="radio-awlsmw3" name="awal" value="3" /><label for="radio-awlsmw3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhawal" name="mrhawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midawal" name="midawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhlawal" name="mhlawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Setoran Selanjutnya</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('2','0');" type="radio" id="radio-ljtsmw1" name="lanjut" value="1" /><label for="radio-ljtsmw1">Murah</label>
            <input onclick="rulesemua('2','1');" type="radio" id="radio-ljtsmw2" name="lanjut" value="2" /><label for="radio-ljtsmw2">Sedang</label>
            <input onclick="rulesemua('2','2');" type="radio" id="radio-ljtsmw3" name="lanjut" value="3" /><label for="radio-ljtsmw3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhlanjut" name="mrhlanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midlanjut" name="midlanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhllanjut" name="mhllanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Biaya Administrasi</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('3','0');" type="radio" id="radio-admsmw1" name="admin" value="1" /><label for="radio-admsmw1">Murah</label>
            <input onclick="rulesemua('3','1');" type="radio" id="radio-admsmw2" name="admin" value="2" /><label for="radio-admsmw2">Sedang</label>
            <input onclick="rulesemua('3','2');" type="radio" id="radio-admsmw3" name="admin" value="3" /><label for="radio-admsmw3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhadmin" name="mrhadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midadmin" name="midadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhladmin" name="mhladmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Bunga Tabungan</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('4','0');" type="radio" id="radio-bgasmw1" name="bunga" value="1" /><label for="radio-bgasmw1">Rendah</label>
            <input onclick="rulesemua('4','1');" type="radio" id="radio-bgasmw2" name="bunga" value="2" /><label for="radio-bgasmw2">Sedang</label>
            <input onclick="rulesemua('4','2');" type="radio" id="radio-bgasmw3" name="bunga" value="3" /><label for="radio-bgasmw3">Tinggi</label>
            </div>
          </td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai rendah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhbunga" name="mrhbunga" maxlength="50"> Persen</td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midbunga" name="midbunga" maxlength="50"> Persen</td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai tinggi adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhlbunga" name="mhlbunga" maxlength="50"> Persen</td>
          </tr>
           <tr>
          <td width="70%">Nisbah Tabungan</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('5','0');" type="radio" id="radio-nisbahsmw1" name="nisbah" value="1" /><label for="radio-nisbahsmw1">Rendah</label>
            <input onclick="rulesemua('5','1');" type="radio" id="radio-nisbahsmw2" name="nisbah" value="2" /><label for="radio-nisbahsmw2">Sedang</label>
            <input onclick="rulesemua('5','2');" type="radio" id="radio-nisbahsmw3" name="nisbah" value="3" /><label for="radio-nisbahsmw3">Tinggi</label>
            </div>
          </td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai rendah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhnisbah" name="mrhnisbah" maxlength="50"> Persen</td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midnisbah" name="midnisbah" maxlength="50"> Persen</td>
          </tr>
          <tr class="nisbah" style="display:none;">
          <td>Menurut Anda nisbah tanisbahn bernilai tinggi adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhlnisbah" name="mhlnisbah" maxlength="50"> Persen</td>
          </tr>

          <tr>
          <td width="70%">Biaya Penutupan</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('6','0');" type="radio" id="radio-ttpsmw1" name="tutup" value="1" /><label for="radio-ttpsmw1">Murah</label>
            <input onclick="rulesemua('6','1');" type="radio" id="radio-ttpsmw2" name="tutup" value="2" /><label for="radio-ttpsmw2">Sedang</label>
            <input onclick="rulesemua('6','2');" type="radio" id="radio-ttpsmw3" name="tutup" value="3" /><label for="radio-ttpsmw3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhtutup" name="mrhtutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midtutup" name="midtutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhltutup" name="mhltutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Saldo Minimum</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('7','0');" type="radio" id="radio-mnimsmw1" name="minim" value="1" /><label for="radio-mnimsmw1">Murah</label>
            <input onclick="rulesemua('7','1');" type="radio" id="radio-mnimsmw2" name="minim" value="2" /><label for="radio-mnimsmw2">Sedang</label>
            <input onclick="rulesemua('7','2');" type="radio" id="radio-mnimsmw3" name="minim" value="3" /><label for="radio-mnimsmw3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="mrhminim" name="mrhminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="midminim" name="midminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="mhlminim" name="mhlminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Periode Undian Hadiah</td>
          <td>
            <div class="radio">
            <input onclick="rulesemua('8','0');" type="radio" id="radio-undismw1" name="undi" value="1" /><label for="radio-undismw1">Jarang</label>
            <input onclick="rulesemua('8','1');" type="radio" id="radio-undismw2" name="undi" value="2" /><label for="radio-undismw2">Sedang</label>
            <input onclick="rulesemua('8','2');" type="radio" id="radio-undismw3" name="undi" value="3" /><label for="radio-undismw3">Sering</label>
            </div>
          </td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai jarang adalah lebih kecil atau sama dengan</td>
          <td>Per <input type="textfield" id="mrhundi" name="mrhundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sedang adalah sama dengan</td>
          <td>Per <input type="textfield" id="midundi" name="midundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sering adalah lebih besar atau sama dengan</td>
          <td>Per <input type="textfield" id="mhlundi" name="mhlundi" maxlength="50"> Bulan</td>
          </tr>
          <tr>
          <td colspan="2" style="text-align:center;">
            <input name="submit" type="submit" class="box" id="submit" value="Lihat Rekomendasi Bank">
            <input name="reset" type="reset" class="box" id="reset" value="Reset Form" onclick="hideinput();">
          </td>
          </tr>
        </table>
        </form>

<?php
      $kolomw = array('jml_atm', 'set_awal_tab', 'set_selanjutnya_tab', 'biaya_admin_tab','bunga_tab', 'nisbah_tab', 'biaya_tutup_tab', 'saldo_minim_tab', 'periode_undian');

      foreach($kolomw as $field){
        $qmaxw = "select max($field) from tabunganall";
        $rmaxw = mysql_query($qmaxw) or die(mysql_error());
        $vmaxw = mysql_fetch_array($rmaxw);

        $qminw = "select min($field) from tabunganall";
        $rminw = mysql_query($qminw) or die(mysql_error());
        $vminw = mysql_fetch_array($rminw);

        $nmaxw[] = $vmaxw[0];
        $nminw[] = $vminw[0];
        $nmidw[] = $vmidw = round( ($vmaxw[0]+$vminw[0])/2 );
        $nqu1w[] = round( ($vminw[0]+$vmidw)/2 );
        $nqu2w[] = round( ($vmidw+$vmaxw[0])/2 );
        
        $js_nminw = json_encode($nminw);
        $js_nqu1w = json_encode($nqu1w);
        $js_nmidw = json_encode($nmidw);
        $js_nqu2w = json_encode($nqu2w);
        $js_nmaxw = json_encode($nmaxw);
        
        $js_allw  = "var nminw = ". $js_nminw . ";\n\t\t\t  ";
        $js_allw .= "var nqu1w = ". $js_nqu1w . ";\n\t\t\t  ";
        $js_allw .= "var nmidw = ". $js_nmidw . ";\n\t\t\t  ";
        $js_allw .= "var nqu2w = ". $js_nqu2w . ";\n\t\t\t  ";
        $js_allw .= "var nmaxw = ". $js_nmaxw . ";\n";
      }
      ?>

      <script type="text/javascript"><!-- 
        $( '.radio' ).buttonset();
        <?php echo $js_allw; ?>
        var xtipw = ["atm", "awal", "lanjut", "admin","bunga","nisbah","tutup","minim","undi" ];
        function rulesemua(tipw, pilihw){
          $('.'+xtipw[tipw]).hide();
          switch(pilihw){
          case "0": //sedikit
            $('#mrh'+xtipw[tipw]).val( nminw[tipw] );
            $('#mid'+xtipw[tipw]).val( nqu1w[tipw] );
            $('#mhl'+xtipw[tipw]).val( nmidw[tipw] );
            $('.'+xtipw[tipw]).show('slow');
          break;

          case "1": //sedang
            $('#mrh'+xtipw[tipw]).val( nqu1w[tipw] );
            $('#mid'+xtipw[tipw]).val( nmidw[tipw] );
            $('#mhl'+xtipw[tipw]).val( nqu2w[tipw] );
            $('.'+xtipw[tipw]).show('slow');
          break;

          case "2": //banyak
            $('#mrh'+xtipw[tipw]).val( nmidw[tipw] );
            $('#mid'+xtipw[tipw]).val( nqu2w[tipw] );
            $('#mhl'+xtipw[tipw]).val( nmaxw[tipw] );
            $('.'+xtipw[tipw]).show('slow');
          break;
          }
        }
        function hideinput(){
          $.each(xtipw, function(){
            $('.'+this).hide('slow');
          });           
        }
      //--></script>  