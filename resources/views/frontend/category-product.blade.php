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
		?>
		<div class="margin-top-5 box-round-category">
			<?php 
			$k=1;			
			foreach ($items as $key => $value) {
				$product_id=$value['id'];
				$product_alias=$value['alias'];
				$product_name=$value['fullname'];
				$product_permalink=route('frontend.index.index',[$product_alias]) ;
				$product_img =get_product_thumbnail($value['image']) ;		
				$product_price=$value['price'];	
				$product_sale_price=$value['sale_price'];							
				$html_price='';                     
				if((int)@$product_price == 0 && (int)@$product_sale_price == 0){              
					$html_price='<span class="price-on">Giá : Liên hệ</span>' ;

				}else{								
					if((int)@$product_sale_price == 0){
						$html_price='<span class="price-on">'.convertToTextPrice($product_price).'&nbsp;đ'.'</span>'  ;
					}else{
						$html_price='<div><span class="price-off">'.convertToTextPrice($product_price).'&nbsp;đ</span></div>';
						$html_price.='<div><span class="price-on">'.convertToTextPrice($product_sale_price).'&nbsp;đ</span></div>';
					}								
				}				
				?>
				<div class="box-product-category">
					<div class="box-product-img canai">
						<center><a href="<?php echo $product_permalink; ?>"><img src="<?php echo $product_img; ?>" alt="<?php echo @$value['alt_image']; ?>"></a></center>
						<?php 
						if((int)@$value['sale_off'] > 0){
							?>
							<div class="pricetag">
							<div class="canai">
								<img src="<?php echo asset('upload/pricetag.png'); ?>" >
								<div class="riman">-<?php echo @$value['sale_off']; ?>%</div>										
							</div>										
						</div>
							<?php
						}
						?>						
					</div>
					<h3 class="box-product-intro-title"><a href="<?php echo $product_permalink; ?>"><b><?php echo $product_name; ?></b></a></h3>
					<?php 
					/* begin thương hiệu */		
					$trademark='';
					$father_data=App\CategoryParamModel::whereRaw('alias = ?',['thuong-hieu'])->select('id')->orderBy('sort_order','asc')->get()->toArray();
					if(count($father_data) > 0){
						$children_data=App\CategoryParamModel::whereRaw('parent_id = ?',[(int)@$father_data[0]['id']])->select('id','alias','fullname','param_value')->orderBy('sort_order','asc')->get()->toArray();
						$arr_id=array();
						if(count($children_data) > 0){
							foreach ($children_data as $child_key => $child_value){
								$arr_id[]=(int)@$child_value['id'];
							}                        				
							$data_category_param=DB::table('category_param')
							->join('post_param','category_param.id','=','post_param.param_id')
							->whereIn('post_param.param_id',@$arr_id)
							->where('post_param.post_id',(int)@$product_id)
							->select('category_param.id','category_param.fullname')
							->get()
							->toArray();                        				
							if(count($data_category_param) > 0){
								$data_category_param=convertToArray($data_category_param);
								$trademark=$data_category_param[0]['fullname'];
								?>
								<div class="trademark">
									<center>
										<span>Thương hiệu:&nbsp;</span><span><font color="#333333"><?php echo $trademark; ?></font></span>
									</center>										
								</div>
								<?php
							}                        				
						}
					}
					/* end thương hiệu */		
					?>	
					<div class="box-product-price">
										<?php echo $html_price; ?>
					</div>																	
				</div>
				<?php					
				if((int)$k%4==0 || $k == count($items)){
					echo '<div class="clr"></div>';
				} 		
				$k++;	
			}
			?>
		</div>		
		<?php				
	}else{
		echo '<div class="margin-top-15"><center>Đang cập nhật...</center></div>';
	}		
	if(count($items) > 0){
		?>		
		<div class="margin-top-5">
			<div class="row">
				<div class="col-lg-12">
					<?php 
					echo $pagination->showPagination();
					?>
				</div>
			</div>		
		</div>
		<?php		
	} 
	if(!empty(@$category['content'])){
		?>
		<div class="margin-top-15">
			<div class="row">
				<div class="col-lg-12">
					<?php 
					echo @$category['content'];		
					?>
				</div>
			</div>		
		</div>
		<?php		
	} 		
	?>		
</form>