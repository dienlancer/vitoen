<div class="margin-top-5">
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
									<div><img src="<?php echo $featuredImg2; ?>" alt="<?php echo $alt2; ?>" title="<?php echo $value['caption']; ?>" /></div>
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
			<?php 
			$source_featured_product=App\ProductModel::whereRaw('status = ?',[1])->select('id','fullname','alias','image','price')->orderBy('id','desc')->take(20)->get()->toArray();							
			if(count($source_featured_product) > 0){
				?>
				<div class="margin-top-15 thamluang">		
					<script type="text/javascript" language="javascript">
						$(document).ready(function(){
							$(".featured-product").owlCarousel({
								autoplay:false,                    
								loop:true,
								margin:0,                        
								nav:false,            
								mouseDrag: true,
								touchDrag: true,                                
								responsiveClass:true,
								responsive:{
									0:{
										items:1
									},
									600:{
										items:1
									},
									1000:{
										items:4
									}
								}
							});
							var chevron_left='<i class="fa fa-chevron-left"></i>';
							var chevron_right='<i class="fa fa-chevron-right"></i>';
							$("div.featured-product div.owl-prev").html(chevron_left);
							$("div.featured-product div.owl-next").html(chevron_right);
						});                
					</script>
					<div class="owl-carousel featured-product owl-theme">
						<?php 	

						foreach($source_featured_product as $key2 => $value){
							$ft_product_id=$value['id'];
							$ft_product_img=get_product_thumbnail($value['image']) ;
							$ft_product_permalink=route('frontend.index.index',[$value['alias']]);
							$ft_product_title=$value['fullname'];
							$ft_product_price=$value['price'];	
							$html_price='';                     
							if((int)@$ft_product_price > 0){              
								$html_price=fnPrice($ft_product_price) ;
							}else{
								$html_price='Giá : Liên hệ' ;
							}									

							?>
							<div class="box-product-master margin-top-10">
								<div class="box-product-img">
									<center><a href="<?php echo $ft_product_permalink; ?>"><img src="<?php echo $ft_product_img; ?>" alt="<?php echo @$value['alt_image']; ?>"></a></center>
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
										?>
										<div class="trademark">
											<center>
												<span>Thương hiệu:&nbsp;</span>
												<span>
													<font color="#333333">
														<?php 
														if(count($data_category_param) > 0){
															$data_category_param=convertToArray($data_category_param);
															$trademark=$data_category_param[0]['fullname'];									
															echo $trademark;				
														} else{
															echo 'Đang cập nhật';
														}																
														?>											
													</font>
												</span>
											</center>										
										</div>
										<?php												                       			
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