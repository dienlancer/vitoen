<form method="post" class="frm margin-top-15" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}		
	<?php 			
	$breadcrumb= getBreadCrumbCategoryArticle($category);	
	?>
	<div class="breadcrumb-title">
		<?php echo $breadcrumb; ?>
	</div>
	<h1 style="display: none;"><?php echo @$category['fullname']; ?></h1>
	<h2 style="display: none;"><?php echo @$meta_description; ?></h2>
	<div class="row">
		<?php 	
		if(count($items) > 0){
			$k=1;			
			foreach ($items as $key => $value) {
				$id=$value['id'];
				$alias=$value['alias'];
				$fullname=$value['fullname'];
				$permalink=route('frontend.index.index',[$alias]) ;
				$image=get_article_thumbnail($value['image']) ;
				$intro=substr($value['intro'],0,200).'...' ;
				$count_view=(int)@$value['count_view'];
				$count_view_text=number_format($count_view,0,",",".");				
				?>
				<div class="box-row margin-top-10">
					<div class="col-sm-4 no-padding-left"><div class="box-img"><center><figure><a href="<?php echo $permalink; ?>"><img src="<?php echo $image; ?>" /></a></figure></center></div></div>
					<div class="col-sm-8 no-padding-left">
						<h3 class="box-title"><a href="<?php echo $permalink; ?>"><?php echo $fullname; ?></a></h3>
						<div class="margin-top-5">
							<div class="view-post-count">
								<i class="fa fa-eye" aria-hidden="true"></i><span class="margin-left-5"><?php echo $count_view_text; ?>&nbsp;lượt xem	</span>
							</div>							
						</div>
						<div class="margin-top-5 box-intro"><?php echo $intro; ?></div>
						<div class="box-readmore margin-top-10"><a href="<?php echo $permalink; ?>">Xem chi tiết</a></div>
					</div>
					<div class="clr"></div>
				</div>
				<?php			
			}
		}else{
			echo '<div class="margin-top-15"><center>Đang cập nhật...</center></div>';
		}
		?>
	</div>
	<div class="margin-top-15">
		<?php 
		if(count($items) > 0){
			echo $pagination->showPagination();
		}  
		?>
	</div>
</form>