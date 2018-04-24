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
	$ft_source_category=App\CategoryProductModel::whereRaw('parent_id = ?',0)->select('id','fullname','alias')->get()->toArray();
	if(count($ft_source_category) > 0){
		foreach ($ft_source_category as $key => $value) {
			$ft_id=$value['id'];
			$ft_fullname=$value['fullname'];
			$ft_alias=$value['alias'];
			$source_category_id[]=@$ft_id;
			getStringCategoryID($ft_id,$source_category_id,'category_product');
			$query=DB::table('product')
			->join('category_product','product.category_id','=','category_product.id')  ;      			 
			$query->whereIn('product.category_id',$source_category_id);   
			$ft_source_product=$query->select('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname as category_name','product.price','product.sale_price')
			->groupBy('product.id','product.code','product.fullname','product.alias','product.image','category_product.fullname','product.price','product.sale_price')
			->orderBy('product.created_at','desc')->take(10)->get()->toArray();      	   
			if(count($ft_source_product) > 0){
				?>
				<div class="row">
					<div class="col-lg-12">
						<div class="box-category">
							<div class="padding-left-15 padding-top-15 padding-right-15">
								<div class="zuna-home">
									<div class="cot-1">
										<div class="margin-left-10"><img src="<?php echo asset('upload/iconlogo.ico'); ?>"></div>
										<h2 class="margin-left-10"><a href="<?php echo route('frontend.index.index',[$ft_alias]); ?>"><?php echo $ft_fullname; ?></a></h2>
									</div>							
									<div class="clr"></div>
								</div>						
								<div class="box-tialia margin-top-10">
									<script type="text/javascript" language="javascript">
										$(document).ready(function(){
											$(".<?php echo $ft_alias; ?>").owlCarousel({
												autoplay:false,                    
												loop:true,
												margin:10,                        
												nav:true,            
												mouseDrag: false,
												touchDrag: false,                                
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
										$ft_source_product=convertToArray($ft_source_product);
										foreach($ft_source_product as $key2 => $value2){
											$ft_product_img=get_product_thumbnail($value2['image']) ;
											$ft_product_permalink=route('frontend.index.index',[$value2['alias']]);
											$ft_product_title=$value2['fullname'];
											$ft_product_price=$value2['price'];
											$ft_product_sale_price=$value2['sale_price'];
											$html_price='';                     
											if((int)@$ft_product_sale_price > 0){              
												$price_on_html ='<span class="price-on">'.fnPrice($ft_product_sale_price).'</span>';
												$price_off_html='<span class="price-off">'.fnPrice($ft_product_price).'</span>' ;                 
												$html_price='<div class="sale-price">'.$price_on_html.'</div><div class="old-price">'.$price_off_html.'</div><div class="clr"></div>' ;              
											}else{
												$html_price='<span class="price-on">'.fnPrice($ft_product_price).'</span>' ;                  
											}   					
											?>
											<div class="box-product">
												<div class="box-product-img">
													<center><figure><a href="<?php echo $ft_product_permalink; ?>"><img src="<?php echo $ft_product_img; ?>"></a></figure></center>
												</div>
												<div class="box-product-intro-title"><a href="<?php echo $ft_product_permalink; ?>"><b><?php echo $ft_product_title; ?></b></a></div>
												<div class="box-product-price">
													<div><center><?php echo $html_price; ?></center></div>
												</div>
											</div>
											<?php
										}
										?>
									</div>
								</div>					
							</div>	
						</div>	
					</div>
				</div>
				<?php 
			}			
		}
	}
	?>	
</div>
@endsection()               