<div class="container">
	
	<div class="col-md-4">
		<div class="borderblog2">
			<div class="topsocial2"> 
			<ul class="topsocialul">
			<li class="facebooktop"><a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li class="twittertop"><a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li class="odnoklassnikitop"><a href="https://www.odnoklassniki.ru/"><i class="fa fa-odnoklassniki" aria-hidden="true"></i></a></li>
			<li class="youtubetop"><a href="https://www.youtube.com/"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
			<li class="instagramtop"><a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
		</ul>
		 </div>
		</div>

		<div class="borderblog2">
		<?php foreach ($right_menu1 as $r_m_1): ?>
			<a class="underslider_b" href="#"><span class="underslider_b_span"><img src="<?php echo base_url().'assets/images/flaticonsvg/ico'. $r_m_1['id'].'.svg' ?>"></span><span><?php echo $r_m_1['name_kg']; ?></span></a>
		<?php endforeach ?>
		</div>
		<div class="borderblog2">
			<p>Билим берүү ресурстары</p>
			<ul>
				<?php foreach ($right_menu2 as $r_m_2): ?>
					<li><a href=""><?php echo $r_m_2['name_kg']; ?></a></li>
				<?php endforeach ?>
			</ul>
		</div>
		<div class="borderblog2">
			<?php foreach ($right_menu3 as $r_m_3): ?>
					<a class="underslider_с" href="#"><i class="fa fa-book" aria-hidden="true"></i><span><?php echo $r_m_3['name_kg']; ?></span></a>
			<?php endforeach ?>
		</div>
	</div>
</div>