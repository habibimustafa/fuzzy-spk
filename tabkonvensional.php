<form onsubmit="return validateForm();" action="outtab.php" method="post" name="tabungan"> 
        <table>
          <tr>
          <td width="70%">Jumlah ATM</td>
          <td>
            <div class="radio">
            <input onclick="rule('0','0');" type="radio" id="radio-atm1" name="atm" value="1" /><label for="radio-atm1">Sedikit</label>
            <input onclick="rule('0','1');" type="radio" id="radio-atm2" name="atm" value="2" /><label for="radio-atm2">Sedang</label>
            <input onclick="rule('0','2');" type="radio" id="radio-atm3" name="atm" value="3" /><label for="radio-atm3">Banyak</label>
            </div>
          </td>
          </tr>
          <tr class="atm" style="display:none;">          
          <td>Menurut Anda jumlah atm bernilai sedikit adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktatm" name="sdktatm" maxlength="50"> Unit</td>
          </tr>
          <tr class="atm" style="display:none;">
          <td>Menurut Anda jumlah atm bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgatm" name="sdgatm" maxlength="50"> Unit</td>
          </tr>
          <tr class="atm" style="display:none;">
          <td>Menurut Anda jumlah atm bernilai banyak adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="bykatm" name="bykatm" maxlength="50"> Unit</td>
          </tr>
          <tr>
          <td width="70%">Setoran Awal</td>
          <td>
            <div class="radio">
            <input onclick="rule('1','0');" type="radio" id="radio-awal1" name="awal" value="1" /><label for="radio-awal1">Murah</label>
            <input onclick="rule('1','1');" type="radio" id="radio-awal2" name="awal" value="2" /><label for="radio-awal2">Sedang</label>
            <input onclick="rule('1','2');" type="radio" id="radio-awal3" name="awal" value="3" /><label for="radio-awal3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktawal" name="sdktawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgawal" name="sdgawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="awal" style="display:none;">
          <td>Menurut Anda setoran awal bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="bykawal" name="bykawal" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Setoran Selanjutnya</td>
          <td>
            <div class="radio">
            <input onclick="rule('2','0');" type="radio" id="radio-lanjut1" name="lanjut" value="1" /><label for="radio-lanjut1">Murah</label>
            <input onclick="rule('2','1');" type="radio" id="radio-lanjut2" name="lanjut" value="2" /><label for="radio-lanjut2">Sedang</label>
            <input onclick="rule('2','2');" type="radio" id="radio-lanjut3" name="lanjut" value="3" /><label for="radio-lanjut3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktlanjut" name="sdktlanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdglanjut" name="sdglanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="lanjut" style="display:none;">
          <td>Menurut Anda setoran selanjutnya bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="byklanjut" name="byklanjut" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Biaya Administrasi</td>
          <td>
            <div class="radio">
            <input onclick="rule('3','0');" type="radio" id="radio-admin1" name="admin" value="1" /><label for="radio-admin1">Murah</label>
            <input onclick="rule('3','1');" type="radio" id="radio-admin2" name="admin" value="2" /><label for="radio-admin2">Sedang</label>
            <input onclick="rule('3','2');" type="radio" id="radio-admin3" name="admin" value="3" /><label for="radio-admin3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktadmin" name="sdktadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgadmin" name="sdgadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="admin" style="display:none;">
          <td>Menurut Anda biaya administrasi bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="bykadmin" name="bykadmin" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Bunga Tabungan</td>
          <td>
            <div class="radio">
            <input onclick="rule('4','0');" type="radio" id="radio-bunga1" name="bunga" value="1" /><label for="radio-bunga1">Rendah</label>
            <input onclick="rule('4','1');" type="radio" id="radio-bunga2" name="bunga" value="2" /><label for="radio-bunga2">Sedang</label>
            <input onclick="rule('4','2');" type="radio" id="radio-bunga3" name="bunga" value="3" /><label for="radio-bunga3">Tinggi</label>
            </div>
          </td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai rendah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktbunga" name="sdktbunga" maxlength="50"> Persen</td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgbunga" name="sdgbunga" maxlength="50"> Persen</td>
          </tr>
          <tr class="bunga" style="display:none;">
          <td>Menurut Anda bunga tabungan bernilai tinggi adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="bykbunga" name="bykbunga" maxlength="50"> Persen</td>
          </tr>
          <tr>
          <td width="70%">Biaya Penutupan</td>
          <td>
            <div class="radio">
            <input onclick="rule('5','0');" type="radio" id="radio-tutup1" name="tutup" value="1" /><label for="radio-tutup1">Murah</label>
            <input onclick="rule('5','1');" type="radio" id="radio-tutup2" name="tutup" value="2" /><label for="radio-tutup2">Sedang</label>
            <input onclick="rule('5','2');" type="radio" id="radio-tutup3" name="tutup" value="3" /><label for="radio-tutup3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdkttutup" name="sdkttutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgtutup" name="sdgtutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="tutup" style="display:none;">
          <td>Menurut Anda biaya penutupan tabungan bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="byktutup" name="byktutup" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Saldo Minimum</td>
          <td>
            <div class="radio">
            <input onclick="rule('6','0');" type="radio" id="radio-minim1" name="minim" value="1" /><label for="radio-minim1">Murah</label>
            <input onclick="rule('6','1');" type="radio" id="radio-minim2" name="minim" value="2" /><label for="radio-minim2">Sedang</label>
            <input onclick="rule('6','2');" type="radio" id="radio-minim3" name="minim" value="3" /><label for="radio-minim3">Mahal</label>
            </div>
          </td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai murah adalah lebih kecil atau sama dengan</td>
          <td><input type="textfield" id="sdktminim" name="sdktminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai sedang adalah sama dengan</td>
          <td><input type="textfield" id="sdgminim" name="sdgminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr class="minim" style="display:none;">
          <td>Menurut Anda saldo minimum bernilai mahal adalah lebih besar atau sama dengan</td>
          <td><input type="textfield" id="bykminim" name="bykminim" maxlength="50"> Rupiah</td>
          </tr>
          <tr>
          <td width="70%">Periode Undian Hadiah</td>
          <td>
            <div class="radio">
            <input onclick="rule('7','0');" type="radio" id="radio-undi1" name="undi" value="1" /><label for="radio-undi1">Jarang</label>
            <input onclick="rule('7','1');" type="radio" id="radio-undi2" name="undi" value="2" /><label for="radio-undi2">Sedang</label>
            <input onclick="rule('7','2');" type="radio" id="radio-undi3" name="undi" value="3" /><label for="radio-undi3">Sering</label>
            </div>
          </td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai jarang adalah lebih kecil atau sama dengan</td>
          <td>Per <input type="textfield" id="sdktundi" name="sdktundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sedang adalah sama dengan</td>
          <td>Per <input type="textfield" id="sdgundi" name="sdgundi" maxlength="50"> Bulan</td>
          </tr>
          <tr class="undi" style="display:none;">
          <td>Menurut Anda periode undian hadiah bernilai sering adalah lebih besar atau sama dengan</td>
          <td>Per <input type="textfield" id="bykundi" name="bykundi" maxlength="50"> Bulan</td>
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
      $kolom = array('jml_atm', 'set_awal_tab', 'set_selanjutnya_tab','biaya_admin_tab', 'bunga_tab', 'biaya_tutup_tab', 'saldo_minim_tab', 'periode_undian');
      foreach($kolom as $field){
        $qmax = "select max($field) from tabungan";
        $rmax = mysql_query($qmax) or die(mysql_error());
        $vmax = mysql_fetch_array($rmax);

        $qmin = "select min($field) from tabungan";
        $rmin = mysql_query($qmin) or die(mysql_error());
        $vmin = mysql_fetch_array($rmin);

        $nmax[] = $vmax[0];
        $nmin[] = $vmin[0];
        $nmid[] = $vmid = round( ($vmax[0]+$vmin[0])/2 );
        $nqu1[] = round( ($vmin[0]+$vmid)/2 );
        $nqu2[] = round( ($vmid+$vmax[0])/2 );
        
        $js_nmin = json_encode($nmin);
        $js_nqu1 = json_encode($nqu1);
        $js_nmid = json_encode($nmid);
        $js_nqu2 = json_encode($nqu2);
        $js_nmax = json_encode($nmax);
        
        $js_all  = "var nmin = ". $js_nmin . ";\n\t\t\t  ";
        $js_all .= "var nqu1 = ". $js_nqu1 . ";\n\t\t\t  ";
        $js_all .= "var nmid = ". $js_nmid . ";\n\t\t\t  ";
        $js_all .= "var nqu2 = ". $js_nqu2 . ";\n\t\t\t  ";
        $js_all .= "var nmax = ". $js_nmax . ";\n";
      }
      ?>

      <script type="text/javascript"><!-- 
        $( '.radio' ).buttonset();
        <?php echo $js_all; ?>
        var xtip = ["atm", "awal", "lanjut", "admin","bunga","tutup","minim","undi" ];
        function rule(tip, pilih){
          $('.'+xtip[tip]).hide();
          switch(pilih){
          case "0": //sedikit
            $('#sdkt'+xtip[tip]).val( nmin[tip] );
            $('#sdg'+xtip[tip]).val( nqu1[tip] );
            $('#byk'+xtip[tip]).val( nmid[tip] );
            $('.'+xtip[tip]).show('slow');
          break;

          case "1": //sedang
            $('#sdkt'+xtip[tip]).val( nqu1[tip] );
            $('#sdg'+xtip[tip]).val( nmid[tip] );
            $('#byk'+xtip[tip]).val( nqu2[tip] );
            $('.'+xtip[tip]).show('slow');
          break;

          case "2": //banyak
            $('#sdkt'+xtip[tip]).val( nmid[tip] );
            $('#sdg'+xtip[tip]).val( nqu2[tip] );
            $('#byk'+xtip[tip]).val( nmax[tip] );
            $('.'+xtip[tip]).show('slow');
          break;
          }
        }
        function hideinput(){
          $.each(xtip, function(){
            $('.'+this).hide('slow');
          });           
        }
      //--></script>  