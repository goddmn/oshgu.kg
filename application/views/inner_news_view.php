			<div class="pictureundermenu">
				<div class="container">
					<div class="themescriptonpicture">
						ЖАҢЫЛЫКТАР
					</div>
				</div>
			</div>
		<?php foreach ($md_news as $news): ?>
			<div class="col-md-8">
				<div class="row">
						<div class="borderblog">
				<h1 id="tema"><?php echo $news['tema_kg'] ?></h1>

				<div class="row">
					<div class="slider-for" id="slider-for">
						<?php 
			$img_name=$news['gallery'];
			$arr_js="var fruits ='".$img_name."';";
			// echo '<div id="img" class="img" style="background-image: url('.base_url()..');"></div>';
			 ?>
					</div>

					<div class="slider-nav">
						<div class="img2" style="background-image: url();"></div>
					</div>
				</div>
				<p><?php echo $news['page_text_kg']; ?></p>
				<div class="time">
					<i class="fa fa-clock-o" aria-hidden="true"></i><?php echo $news['vrem']; ?>
					<i class="fa fa-eye" aria-hidden="true"></i><?php echo $news['stat']; ?>
				</div>
			</div>
				</div>
		
					<script type="text/javascript">
<?php echo $arr_js;?>
var ggg = 456;
console.log('asdasdasdasd');
var arr = fruits.split(',');
for (var i = 0; i < arr.length; i++) {
var block = document.getElementById('slider-for');
	block.innerHTML='<div class="img11" style="background-image: url('<?php echo base_url();?>+arr[i]');"></div>';
}
		</script>
			<?php endforeach ?>
		</div>