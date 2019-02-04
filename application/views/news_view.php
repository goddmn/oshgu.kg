<div class="container"><br>
<div class="feature">Жаңылыктар</div>
<div class="row">
<?php foreach ($md_news as $news): ?>
	<div class="latestphoto col-sm-6">
		<div class="border">
			<div class="row">
				<div class="colimg col-md-6">
					<div class="newsimg">
						<img src="<?php echo base_url().$news['foto'];?>">
						<div class="bluecurtain">
							<?php 
						echo '<a class="bluebutton" href="';
						if($news['url']==false) {echo base_url('pages/inner_news/').$news['id'];} 
						else {echo $news['url'];}
						echo '">Кененирээк</a>'; ?>
						</div>
					</div>
				</div>
				<div class="latest col-md-6">
					<?php 
					echo '<a href="';

						if($news['url']==false) {echo base_url('pages/page/').$news['id'];} 
						else {echo $news['url'];}
						echo '"></a>'; ?>
					<a href="news4.html"><?php echo $news['tema_kg']; ?></a>
					<div class="latestnewsmeta">
						<div class="time">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
							<a><?php echo $news['vrem']; ?></a>
							<i class="fa fa-eye" aria-hidden="true"></i>	
							<?php echo $news['stat'] ?></div>
							<p><?php echo $news['page_text_kg']; ?></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	<?php endforeach ?>

</div>

</div>