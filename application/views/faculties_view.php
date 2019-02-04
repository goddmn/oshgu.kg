      <div class="pictureundermenu">
      	<div class="container">
      	<div class="themescriptonpicture">
		<?php
		foreach ($md_page as $page1) {
			echo $page1['tema_kg'];
		}
		?>
      	</div>
      </div>
      </div>

 <div class="container">
		<div class="row">
		<div class="col-md-8">
		<div class="borderblog">	
			<div class="tab-content">
			  <div class="tab-pane active" id="home">
		<?php
		foreach ($md_page as $page1) {
			echo $page1['page_text_kg'];
		}
		?>	
			  </div>
			</div>

	</div>
	</div>


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
		<a class="underslider_b" href="#"><span class="underslider_b_span"><img src="<?php echo base_url().'assets/images/flaticonsvg/schoolboy-carrying-a-bag.svg' ?>"></span><span>Абитуриенттерге</span></a>
		<a class="underslider_b" href="#"><span class="underslider_b_span"><img src="<?php echo base_url().'assets/images/flaticonsvg/study.svg' ?>"></span><span>Студенттерге</span></a>
		<a class="underslider_b" href="#"><span class="underslider_b_span"><img src="<?php echo base_url().'assets/images/flaticonsvg/graduate-student-avatar.svg' ?>"></span><span>Бүтүрүүчүлөргө</span></a>
		<a class="underslider_b" href="#"><span class="underslider_b_span"><img src="<?php echo base_url().'assets/images/flaticonsvg/classroom.svg' ?>"></span><span>Мугалимдерге</span></a>
		</div>
		<div class="borderblog2">
			<p>Билим берүү ресурстары</p>
			<ul>
				<li><a href="">ibooks.oshsu.kg</a></li>
				<li><a href="">okuma.kg</a></li>
				<li><a href="">Ош МУнун китепканасы</a></li>
				<li><a href="">Ош МУнун расмий сайты</a></li>
			</ul>
		</div>
		<div class="borderblog2">
			<a class="underslider_с" href="#"><i class="fa fa-book" aria-hidden="true"></i> <span>Билим берүү порталы</span></a>
			<a class="underslider_с" href="#"><i class="fa fa-calendar-check-o" aria-hidden="true"></i> <span>Сабактардын жадыбалы</span></a>
			<a class="underslider_с" href="#"><i class="fa fa-comments" aria-hidden="true"></i><span>Онлайн тестирлөө</span></a>
		</div>
	</div>
</div>
</div>