@extends("frontend.master")
@section("content")
<?php 
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
$seo=getSeo();
$hotline1=$setting['hotline1']['field_value'];
$email_to=$setting['email_to']['field_value'];
$facebook_url=$setting['facebook_url']['field_value'];
$twitter_url=$setting['twitter_url']['field_value'];
$google_plus=$setting['google_plus']['field_value'];
$youtube_url=$setting['youtube_url']['field_value'];
$instagram_url=$setting['instagram_url']['field_value'];
$pinterest_url=$setting['pinterest_url']['field_value'];   
$company=$setting['contacted_person']['field_value'];
?>
<h1 style="display: none;"><?php echo $seo["title"]; ?></h1>
<div class="container">
	<div class="row">
		<div class="col-lg-3">	
			@include("frontend.sidebar-category-product")     
		</div>
		<div class="col-lg-9">
			@include("frontend.banner-slide")     							
		</div>
	</div>
</div>	
<div class="container">	
	<?php 
	$source_category=App\CategoryProductModel::whereRaw('status = ? and parent_id = ?',[1,0])->select('id','fullname','alias')->orderBy('sort_order','asc')->get()->toArray();	
	if(count($source_category) > 0){
		foreach ($source_category as $key => $value) {
			$ft_id=$value['id'];
			$ft_fullname=$value['fullname'];
			$ft_alias=$value['alias'];
			$source_category_id=array();
			$source_category_id[]=(int)@$ft_id;
			getStringCategoryID($ft_id,$source_category_id,'category_product');
			$source_child_category=App\CategoryProductModel::whereRaw('status = ? and parent_id = ?',[1,(int)@$ft_id])->select('id','fullname','alias')->orderBy('sort_order','asc')->take(6)->get()->toArray();
			?>
			<div class="row">
				<div class="col-lg-12">
					<div class="teraff margin-top-15">
						<h2 class="vinboom"><a href="<?php echo route('frontend.index.index',[$ft_alias]); ?>"><?php echo @$ft_fullname; ?></a></h2>
						<?php 
						if(count($source_child_category) > 0){
							?>
							<div class="raka litu">
								<ul class="shinichikudo">
									<?php 
									foreach ($source_child_category as $key_child => $value_child) {
										$ft_child_id=$value_child['id'];
										$ft_child_fullname=$value_child['fullname'];
										$ft_child_alias=$value_child['alias'];
										?>
										<li><a href="<?php echo route('frontend.index.index',[$ft_child_alias]); ?>"><div><?php echo $ft_child_fullname; ?></div></a></li>
										<?php
									}
									?>									
								</ul>
							</div>
							<?php
						}
						?>			
						<div class="raka">
							<a href="<?php echo route('frontend.index.index',[@$ft_alias]); ?>"><div>Xem tất cả&nbsp;<i class="fas fa-angle-right"></i></div></a>
						</div>			
						<div class="clr"></div>
					</div>
					<?php 
					$query=DB::table('product')
					->join('category_product','product.category_id','=','category_product.id');			 
					$query->whereIn('product.category_id',$source_category_id); 
					$query->where(function($query){
						$query->where('product.sale_off',0)
						->orWhere('product.sale_off',null)
						->orWhere('product.sale_off','');
					});
					$source_product=$query->select('product.id','product.code','product.fullname','product.alias','product.image','product.alt_image','category_product.fullname as category_name','product.price','sale_off','product.sale_price')
					->groupBy('product.id','product.code','product.fullname','product.alias','product.image','product.alt_image','category_product.fullname','product.price','sale_off','product.sale_price')
					->orderBy('product.id','desc')->take(10)->get()->toArray();   					
					if(count($source_product) > 0){
						$data_product=convertToArray($source_product);
						?>
						<div class="ritakuta">
							<?php 		
							$k=1;					
							foreach($data_product as $key2 => $value2){
								$ft_product_id=$value2['id'];
								$ft_product_img=get_product_thumbnail($value2['image']) ;
								$ft_product_permalink=route('frontend.index.index',[$value2['alias']]);
								$ft_product_title=$value2['fullname'];
								$ft_product_price=$value2['price'];	
								$ft_product_sale_price=$value2['sale_price'];							
								$html_price='';                     
								if((int)@$ft_product_price == 0 && (int)@$ft_product_sale_price == 0){              
									$html_price='<span class="price-on">Giá : Liên hệ</span>' ;
									
								}else{								
									if((int)@$ft_product_sale_price == 0){
										$html_price='<span class="price-on">'.convertToTextPrice($ft_product_price).'&nbsp;đ'.'</span>'  ;
									}else{
										$html_price='<div><span class="price-off">'.convertToTextPrice($ft_product_price).'&nbsp;đ</span></div>';
										$html_price.='<div><span class="price-on">'.convertToTextPrice($ft_product_sale_price).'&nbsp;đ</span></div>';
									}								
								}													
								?>
								<div class="box-product">
									<div class="box-product-img">
										<center><a href="<?php echo $ft_product_permalink; ?>"><img src="<?php echo $ft_product_img; ?>" alt="<?php echo @$value2['alt_image']; ?>"></a></center>
									</div>
									<h3 class="box-product-intro-title"><a href="<?php echo $ft_product_permalink; ?>"><b><?php echo $ft_product_title; ?></b></a></h3>
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
											->where('post_param.post_id',(int)@$ft_product_id)
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
								if((int)@$k%5==0){
									?>
									<div class="clr"></div>
									<?php
								}
								$k++;
							}
							?>
						</div>
						<?php
					} 
					?>
				</div>
			</div>
			<?php
		}
	}
	?>
</div>
@endsection()               
