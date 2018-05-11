@extends("frontend.master")
@section("content")
<?php 
use Illuminate\Support\Facades\DB;
$setting=getSettingSystem();
$seo=getSeo();
$telephone=$setting['telephone']['field_value'];
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
		<div class="col-lg-12">
			<?php 
			$data_slideshow2=getBanner("slideshow");
			if(count($data_slideshow2) > 0){
				$items2=$data_slideshow2["items"];
				if(count($items2) > 0){
					?>
					<div class="slideshow">
						<script type="text/javascript" language="javascript">        
							$(document).ready(function(){
								$(".slick-slideshow").slick({
									dots: false,
									autoplay:true,
									arrows:false,
									adaptiveHeight:true,
									slidesToShow: 1,
									slidesToScroll: 1,        
								});  
							});     
						</script>
						<div class="slick-slideshow">    
							<?php 
							foreach ($items2 as $key => $value) {
								$alt2=$value["alt"];
								$featuredImg2=asset('upload/'.$value["image"]);
								?>
								<div><img src="<?php echo $featuredImg2; ?>" alt="<?php echo $alt2; ?>" /></div>
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
	</div>	
	<?php 
	$ft_source_category=App\CategoryProductModel::whereRaw('alias = ?',['thang-nhom'])->select('id','fullname','alias')->get()->toArray();
	$source_category_id=array();
	if(count($ft_source_category) > 0){
		$ft_id=$ft_source_category[0]['id'];
		$ft_fullname=$ft_source_category[0]['fullname'];
		$ft_alias=$ft_source_category[0]['alias'];
		$source_category_id[]=@$ft_id;
		getStringCategoryID($ft_id,$source_category_id,'category_product');
		?>
		<div class="row">
			<div class="col-lg-12">
				<div class="teraff margin-top-15">
					<div class="vinboom"><a href="<?php echo route('frontend.index.index',[$ft_alias]); ?>"><?php echo $ft_fullname; ?></a></div>
					<div class="raka">
						<?php     
						$args = array(                         
							'menu_class'            => 'shinichikudo',                                        
							'before_wrapper'        => '',
							'before_title'          => '',
							'after_title'           => '',
							'before_wrapper_ul'     =>  '',
							'after_wrapper_ul'      =>  '',
							'after_wrapper'         => ''     ,
							'link_before'           => '', 
							'link_after'            => '',                                        
							'theme_location'        => 'thang-nhom' ,
							'menu_li_actived'       => 'current-menu-item',
							'menu_item_has_children'=> 'menu-item-has-children',
							'alias'                 => @$seo_alias
						);                    
						wp_nav_menu($args);
						?>    
					</div>
					<div class="clr"></div>
				</div>
				<?php 
				$query=DB::table('product')
				->join('category_product','product.category_id','=','category_product.id');			 
				$query->whereIn('product.category_id',$source_category_id);   
				$ft_source_product=$query->select('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname as category_name','product.price','product.sale_price')
				->groupBy('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname','product.price','product.sale_price')
				->orderBy('product.id','desc')->take(10)->get()->toArray();     
				if(count($ft_source_product)){
					$ft_source_product=convertToArray($ft_source_product);
					?>
					<div class="ritakuta padding-top-5">
						<script type="text/javascript" language="javascript">
							$(document).ready(function(){
								$(".<?php echo $ft_alias; ?>").owlCarousel({
									autoplay:false,                    
									loop:true,
									margin:10,                        
									nav:false,            
									mouseDrag: true,
									touchDrag: true,                                
									responsiveClass:true,
									responsive:{
										0:{
											items:1
										},
										600:{
											items:5
										},
										1000:{
											items:5
										}
									}
								});
								var chevron_left='<i class="fa fa-chevron-left"></i>';
								var chevron_right='<i class="fa fa-chevron-right"></i>';
								$("div.<?php echo $ft_alias; ?> div.owl-prev").html(chevron_left);
								$("div.<?php echo $ft_alias; ?> div.owl-next").html(chevron_right);
							});                
						</script>
						<div class="owl-carousel <?php echo $ft_alias; ?> owl-theme">
							<?php 							
							foreach($ft_source_product as $key2 => $value2){
								$ft_product_id=$value2['id'];
								$ft_product_img=get_product_thumbnail($value2['image']) ;
								$ft_product_permalink=route('frontend.index.index',[$value2['alias']]);
								$ft_product_title=$value2['fullname'];
								$ft_product_price=$value2['price'];	
								$html_price='';                     
								if((int)@$ft_product_price > 0){              
									$html_price=fnPrice($ft_product_price) ;
								}else{
									$html_price='Giá : Liên hệ' ;
								}   			
								
								?>
								<div class="box-product">
									<div class="box-product-img">
										<center><figure><a href="<?php echo $ft_product_permalink; ?>"><img src="<?php echo $ft_product_img; ?>"></a></figure></center>
									</div>
									<div class="box-product-intro-title"><a href="<?php echo $ft_product_permalink; ?>"><b><?php echo $ft_product_title; ?></b></a></div>
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
										<div><center><span class="price-on"><?php echo $html_price; ?></span></center></div>
									</div>
								</div>
								<?php
							}
							?>
						</div>
					</div>
					<?php
				} 	   			
				?>				
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="caphethuocla margin-top-15 padding-bottom-15">
					<div class="feedback">
						<div class="vivanan">
							<div class="fata">TƯ VẤN CÙNG CHUYÊN GIA</div>
							<div class="pootoo"><a href="<?php echo route('frontend.index.index',['thang-nhom']); ?>">THANG NHÔM</a></div>
						</div>					
					</div>
					<div class="rinux">
						<?php 
						$query=DB::table('article')
						->join('article_category','article.id','=','article_category.article_id')
						->join('category_article','category_article.id','=','article_category.category_id')
						->where('category_article.id',13);
						$source_article=$query->select('article.id','article.alias','article.fullname')
						->groupBy('article.id','article.alias','article.fullname')
						->orderBy('article.id','desc')
						->take(10)
						->get()
						->toArray();
						$source_article=convertToArray($source_article);
						$ct_k=1;
						if(count($source_article) > 0){
							foreach ($source_article as $key => $value) {
								$ct_fullname=$value['fullname'];
								$ct_alias=$value['alias'];
								?>
								<div class="col-sm-6">
									<div class="sidamex margin-top-15">
										<span><img src="<?php echo asset('upload/pointer_icon.png'); ?>"></span>
										<span><a href="<?php echo route('frontend.index.index',[$ct_alias]); ?>"><?php echo $ct_fullname; ?></a></span>
									</div>
								</div>
								<?php
								if($ct_k % 2 == 0){
									?><div class="clr"></div><?php 
								}
								$ct_k++;
							}
						}						
						?>
					</div>
					<div class="clr"></div>
				</div>
			</div>
		</div>	
		<?php 		
	}		
	$ft_source_category=App\CategoryProductModel::whereRaw('alias = ?',['bang-keo'])->select('id','fullname','alias')->get()->toArray();	
	$source_category_id=array();
	if(count($ft_source_category) > 0){
		$ft_id=$ft_source_category[0]['id'];
		$ft_fullname=$ft_source_category[0]['fullname'];
		$ft_alias=$ft_source_category[0]['alias'];
		$source_category_id[]=@$ft_id;
		getStringCategoryID($ft_id,$source_category_id,'category_product');		
		?>
		<div class="row">
			<div class="col-lg-12">
				<div class="teraff margin-top-15">
					<div class="vinboom"><a href="<?php echo route('frontend.index.index',[$ft_alias]); ?>"><?php echo $ft_fullname; ?></a></div>
					
					<div class="clr"></div>
				</div>
				<?php 
				$query=DB::table('product')
				->join('category_product','product.category_id','=','category_product.id');			 
				$query->whereIn('product.category_id',$source_category_id);   
				$ft_source_product=$query->select('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname as category_name','product.price','product.sale_price')
				->groupBy('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname','product.price','product.sale_price')
				->orderBy('product.id','desc')->take(10)->get()->toArray();     
				if(count($ft_source_product)){
					$ft_source_product=convertToArray($ft_source_product);

					?>
					<div class="ritakuta padding-top-5">
						<script type="text/javascript" language="javascript">
							$(document).ready(function(){
								$(".<?php echo $ft_alias; ?>").owlCarousel({
									autoplay:false,                    
									loop:true,
									margin:10,                        
									nav:false,            
									mouseDrag: true,
									touchDrag: true,                                
									responsiveClass:true,
									responsive:{
										0:{
											items:1
										},
										600:{
											items:5
										},
										1000:{
											items:5
										}
									}
								});
								var chevron_left='<i class="fa fa-chevron-left"></i>';
								var chevron_right='<i class="fa fa-chevron-right"></i>';
								$("div.<?php echo $ft_alias; ?> div.owl-prev").html(chevron_left);
								$("div.<?php echo $ft_alias; ?> div.owl-next").html(chevron_right);
							});                
						</script>
						<div class="owl-carousel <?php echo $ft_alias; ?> owl-theme">
							<?php 							
							foreach($ft_source_product as $key2 => $value2){
								$ft_product_id=$value2['id'];
								$ft_product_img=get_product_thumbnail($value2['image']) ;
								$ft_product_permalink=route('frontend.index.index',[$value2['alias']]);
								$ft_product_title=$value2['fullname'];
								$ft_product_price=$value2['price'];	
								$html_price='';                     
								if((int)@$ft_product_price > 0){              
									$html_price=fnPrice($ft_product_price) ;
								}else{
									$html_price='Giá : Liên hệ' ;
								}   											
								?>
								<div class="box-product">
									<div class="box-product-img">
										<center><figure><a href="<?php echo $ft_product_permalink; ?>"><img src="<?php echo $ft_product_img; ?>"></a></figure></center>
									</div>
									<div class="box-product-intro-title"><a href="<?php echo $ft_product_permalink; ?>"><b><?php echo $ft_product_title; ?></b></a></div>
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
										<div><center><span class="price-on"><?php echo $html_price; ?></span></center></div>
									</div>
								</div>
								<?php
							}
							?>
						</div>
					</div>
					<?php
				} 	   			
				?>				
			</div>
		</div>	
		<?php 		
	}						
	?>	
	
</div>
@endsection()               