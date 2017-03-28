<?php include ("header.php") ?>
<?php require ("fungsi.php") ?>
  <script type="text/javascript">
        jQuery(window).load(function() {
          jQuery('.flexslider').flexslider({
            animation: "fade",
            direction: "horizontal",
            slideshowSpeed: 3000,
            animationSpeed: 1000
          });
        });
  </script>

  <section id="content" class="row">
  <section id="slideshow">
	  <div class="flexslider">
		  <ul class="slides">
			  <li>
				  <img width="960" height="320" src="slide/1.jpg" alt="bingung" />
				  <div class="flex-caption"><p>Bingung Memilih Bank</p></div>
			  </li>
			  <li>
				  <img width="960" height="320" src="slide/2.jpg" alt="bingung" />
				  <div class="flex-caption"><p>Bingung Memilih Bank</p></div>
			  </li>
			  <li>
				  <img width="960" height="320" src="slide/3.jpg" alt="bingung" />
				  <div class="flex-caption"><p>Bingung Memilih Bank</p></div>
			  </li>
			  <li>
				  <img width="960" height="320" src="slide/4.jpg" alt="bingung" />
				  <div class="flex-caption"><p>Bingung Memilih Bank</p></div>
			  </li>
			  <li>
				  <img width="960" height="320" src="slide/5.jpg" alt="bingung" />
				  <div class="flex-caption"><p>Bingung Memilih Bank</p></div>
			  </li>
		  </ul>
	  </div>
  </section>
  </section>
        
<?php include ("footer.php")?> 