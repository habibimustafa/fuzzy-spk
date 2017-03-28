<?php include ("header.php") ?>
<?php require ("fungsi.php") ?>

 <div id="inner">
    <div id="main">
      <h2>Pemilihan Jenis Tabungan Bank</h2>
      <div id="tabs" class="htabs">
        <ul>
        <li><a href="#tab1">Tabungan Konvensional</a></li>
        <li><a href="#tab2">Tabungan Syariah</a></li>
        <li><a href="#tab3">Tabungan Konvensional & Syariah</a></li>
        </ul>     
        <div id="tab1" class="tab-content" style="display: block;">   
        <?php include "tabkonvensional.php"; ?>      
        </div>

        <div id="tab2" class="tab-content" style="display: block;">
        <?php include "tabsyariah.php"; ?> 
        </div>
        <div id="tab3" class="tab-content" style="display: block;">
          <?php include "tabsemua.php"; ?> 
        </div>
      </div>
      <script type="text/javascript"><!-- 
        $( "#tabs" ).tabs();
      //--></script>
    </div>
  </div>


 <?php include ("footer.php")?>    