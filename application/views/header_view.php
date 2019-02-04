<div class="topmenu">
<div class="container">
<div class="row">
	<div class="col-xs-12 col-sm-5">
		<div class="announcement">Жаңылыктар:</div>
		<div class="topuniversity">
			<marquee behavior="scroll" direction="left">
				<a class="marquee" href="news1.html">Аалам алпы- Айтматов ...\</a>
				<a class="marquee" href="news2.html">Сүрөт көргөзмө ...\</a>		
				<a class="marquee" href="news3.html">Ааламды арууланткан Айтматов ...\</a>	
				<a class="marquee" href="news4.html">ОшМУнун студенти Сейитбек уулу Мунарбек «Эң мыкты мушкер-2018» наамын жеңип алды ...\</a>
			</marquee>
		</div>
	</div>
	<div class="col-xs-12 col-sm-7">
		<!-- <div class="topsocial2"> -->
<!-- 	<ul class="topsocial">
	<li class="facebooktop"><a href="https://www.facebook.com/"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
	<li class="twittertop"><a href="https://www.twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
	<li class="linkedintop"><a href="https://www.linkedin.com/"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
	<li class="youtubetop"><a href="https://www.youtube.com/"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
	<li class="instagramtop"><a href="https://www.instagram.com/"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
</ul> -->
<!-- </div> -->
<ul class="topsocial1">
	<li><a href="http://avn.oshsu.kg/avn11.html">Образовательный портал</a></li>
	<li><a href="http://avn.oshsu.kg/avn10.html">ТЕСТ</a></li>
	<li><a href="http://avn.oshsu.kg/AVN_search_st.html">Поиск студентов</a></li>
	<!-- <li><a href="#">Blog</a></li> -->
</ul>
</div>
</div>
</div>
</div>




<nav class="navbar navbar-default" role="navigation" >

<div class="hub">
<div class="container">
	<div class="roe">
		<div class="row">
			<div class="col-sm-6">
				<div class="row">
					<div class="col-sm-3 col-md-2">
						<div class="logo">
							<img src="<?php echo base_url('assets/images/logo1.svg');?>">
						</div>
					</div>
					<div class="col-sm-9 col-md-10">
						<div class="mainname">Ош мамлекеттик университети</div>
						<div class="education">Сырттан жана дистанттык окуу бөлүмү</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row">
					<div class="col-xs-5">
						<div class="phone2">
							<div class="number">+996 3222 2-45-25</div>
							<div class="email">oshsu.oms@gmail.com</div>
						</div>
						<div class="phone"><i class="fa fa-phone" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-xs-7">
						<div class="phone2">
							<div class="number">Кыргызстан, 723500, г.Ош</div>
							<div class="email">ул.Ленина, 331, ОшГУ Главный корпус</div>
						</div>
						<div class="phone"><i class="fa fa-home" aria-hidden="true"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</nav>




<div class="main" id="top_nav">

<div class="container">
<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu1">
		<span class="sr-only">Навигация</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>
</div>
<div class="collapse navbar-collapse" id="menu1">
	<ul class="nav navbar-nav">
		<li class="active"><a href="<?php echo base_url();?>">Башкы бет</a></li>
		<?php 
		foreach ($md_menu  as $item) {
			?>
			<li>
				<a href="<?php echo $item['url'];?>"><?php echo $item['name_kg'];?>
				<?php
				if ($item['id_page']==1 ) 
					{echo '<b class="caret"></b>';}?></a>
				<?php
				if ($item['id_page']==1) {
					?>
					<ul class="firstchild">
						<?php
						$query= $this->Get_model->md_menuu($item['id']);
						foreach ($query as $item1)
						{ 
							?>             	
							<li><a href=""><?php echo $item1['name_kg'];?></a></li>
							<?php
							$under_menu = $this->Get_model->md_menuu($item1['id']);
							foreach ($under_menu as $item2)
							{
								echo '<li><a href="';

								if($item2['url']==false) {echo base_url('pages/page/').$item2['id_page'];} 
								else {echo $item2['url'];}
								echo '">'.$item2['name_kg'].'</a></li>';
							}
						}
						?>
					</ul>
				<?php } ?>
			</li>
			<?php
		}
		?>
	</ul>
	<form class="navbar-form navbar-right" role="search">
		<!-- <ul class="nav navbar-nav navbar-right"> -->
			<div class="form-group">
				<input type="text" class="form-control"  placeholder="Поиск...">
				<button type="submit" class="searglif" ><span class="glyphicon glyphicon-search"></span></button>
			</div>
			<!-- </ul> -->
		</form>

	</div>
</div>

</div>



