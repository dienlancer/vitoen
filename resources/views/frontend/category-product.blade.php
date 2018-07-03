<form method="post" class="frm margin-top-15" name="frm">
	<input type="hidden" name="filter_page" value="1">         
	{{ csrf_field() }}	
	<?php 	
	$breadcrumb='';	
	$seo=getSeo();
	$seo_title=$seo["title"];
	$seo_meta_keyword=$seo["meta_keyword"];
	$seo_meta_description=$seo["meta_description"];	
	if(count($category) > 0){
		$breadcrumb= getBreadCrumbCategoryProduct(@$category);		
		?>
		<h1 style="display: none;"><?php echo @$category['fullname']; ?></h1>
		<h2 style="display: none;"><?php echo @$category['meta_description']; ?></h2>
		<input type="hidden" name="category_id" value="<?php echo @$category['id']; ?>">
		<?php			
	}	
	else{
		$breadcrumb='<a href="'.url('/').'">Trang chủ</a><a href="javascript:void(0);">Tìm kiếm</a>';
		?>
		<h1 style="display: none;"><?php echo $seo_title; ?></h1>
		<h2 style="display: none;"><?php echo $seo_meta_description; ?></h2>
		<?php		
	}	
	?>	
	<div class="breadcrumb-title">
		<?php echo $breadcrumb; ?>
	</div>
	<?php 			
	if(count($items) > 0){			
		$k=0;			
		foreach ($items as $key => $value) {
			$product_id=$value['id'];
			$product_alias=$value['alias'];
			$product_fullname=$value['fullname'];
			$product_permalink=route('frontend.index.index',[$product_alias]) ;
			$product_img =get_product_thumbnail($value['image']) ;		
			$product_price=$value['price'];	
			$html_price='';                     
			if((int)@$product_price > 0){              
				$html_price=fnPrice($product_price) ;
			}else{
				$html_price='Giá : Liên hệ' ;
			}   
			if($k%3 == 0){
				echo '<div class="row">';
			}	
			?>
			<div class="col-sm-4">
				<div class="box-product box-product-rian">
					<div class="box-product-img">
						<center><figure><a href="<?php echo $product_permalink; ?>"><img alt="<?php echo @$value['alt_image']; ?>" src="<?php echo $product_img; ?>"></a></figure></center>
					</div>
					<h3 class="box-product-intro-title"><a href="<?php echo $product_permalink; ?>"><b><?php echo $product_fullname; ?></b></a></h3>
					<div class="box-product-price">
						<div><center><span class="price-on"><?php echo $html_price; ?></span></center></div>
					</div>
				</div>
			</div>
			<?php	
			$k++;		
			if($k%3==0 || $k==count($items)){
				echo '</div>';
			}			
		}
	}else{
		echo '<div class="margin-top-15"><center>Đang cập nhật...</center></div>';
	}
	?>
	<div class="margin-top-15">
		<div class="row">
			<div class="col-lg-12">
				<?php 
				if(count($items) > 0){
					echo $pagination->showPagination();
				}  		
				?>	
			</div>
		</div>		
	</div>
	<div class="margin-top-15">
		<div class="row">
			<div class="col-lg-12">
				<?php 
				if(!empty(@$category['content'])){
					echo @$category['content'];
				}		
				?>
			</div>
		</div>		
	</div>
</form>