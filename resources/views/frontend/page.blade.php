<?php 
use App\PageModel;
$seo=getSeo();
$seo_logo_frontend=asset('upload/'.$seo['logo_frontend']);
if(count($item) > 0){	
	$id=$item["id"];
	$fullname = $item["fullname"];
	$intro=$item["intro"];
	$content=$item['content'];
	/* begin cập nhật count view */
	$count_view=(int)@$item['count_view'];
	$count_view++;
	$row				=	PageModel::find((int)@$id); 
	$row->count_view=$count_view;
	$row->save();
	$count_view_text=number_format($count_view,0,",",".");
	/* end cập nhật count view */
	?>
	<div class="margin-top-15 box-article">
		<h1 class="tieu-de-bai-viet">
			<?php echo $fullname; ?>		
		</h1>
		<div class="margin-top-15">			
			<span class="post-view">
				<i class="fa fa-eye" aria-hidden="true"></i>&nbsp;&nbsp;<?php echo $count_view_text ?>&nbsp;Lượt xem
			</span>
		</div>		
		<hr class="duong-ngang" />
		<?php 
		if(!empty(@$intro)){
			?>
			<div class="margin-top-10 article-excerpt  justify">
				<?php echo $intro; ?>
			</div>	
			<hr class="duong-ngang" />	
			<?php
		}
		?>	
		<div class="margin-top-15">
			<?php echo $content; ?>
		</div>	
	</div>
	<script type="application/ld+json">
		{
			"@context": "http://schema.org",
			"@type": "NewsArticle",
			"mainEntityOfPage": {
			"@type": "WebPage",
			"@id": "https://google.com/article"
		},
		"headline": "Article headline",
		"image": "<?php echo asset('upload/'.@$item['image']); ?>",
		"datePublished": "<?php echo @$item['created_at']; ?>",
		"dateModified": "<?php echo @$item['updated_at']; ?>",
		"author": {
		"@type": "Person",
		"name": "Administrator"
	},
	"publisher": {
	"@type": "Organization",
	"name": "Google",
	"logo": {
	"@type": "ImageObject",
	"url": "<?php echo $seo_logo_frontend; ?>"
}
},
"description": "<?php echo @$intro; ?>"
}
</script>
<?php
}
?>	

