<?php 
$setting=getSettingSystem();
$seo=getSeo();
$seo_logo_frontend=asset('upload/'.$seo['logo_frontend']);
?>
<div class="dang-ky-email">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="ruden">
					<div><img src="<?php echo asset('upload/icon-email.png'); ?>"></div>
					<div class="margin-left-15"><font color="#ffffff"><b>ĐĂNG KÝ NHẬN THÔNG TIN KHUYẾN MÃI</b></font></div>
					<form name="frm-register-info" method="POST" action="">
						{{ csrf_field() }}
						<div class="ruden">
							<div class="margin-left-15"><input type="text" name="email" class="txt-email"></div>
							<div class="btn-register-info margin-left-15"><a href="javascript:void(0);" >Gửi</a></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="goc-tu-van">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"><div class="nioc">GÓC TƯ VẤN</div></div>
		</div>
		<?php 
		$query=DB::table('article')
			->join('article_category','article.id','=','article_category.article_id')
			->join('category_article','category_article.id','=','article_category.category_id')
			->where('category_article.alias','tu-van');
		$source_article=$query->select('article.id','article.fullname','article.alias','article.image')
							->groupBy('article.id','article.fullname','article.alias','article.image')
							->orderBy('article.id','desc')
							->take(12)
							->get()
							->toArray();
		if(count($source_article) > 0){
			$data_article=convertToArray($source_article);
			$k=0;
			foreach ($data_article as $key => $value) {
				$article_id=$value['id'];
				$article_name=$value['fullname'];
				$article_permalink=route('frontend.index.index',[$value['alias']]);
				$article_thumbnail=get_article_thumbnail($value['image']) ;
				if((int)@$k%3==0){
					echo '<div class="row">';
				}
				?>
				<div class="col-lg-4">
					<div class="box-featured-article">
						<div class="row">
							<div class="col-lg-4">
								<a href="<?php echo $article_permalink; ?>"><img src="<?php echo $article_thumbnail; ?>"></a>
							</div>
							<div class="col-lg-8">
								<div class="article-per"><a href="<?php echo $article_permalink; ?>"><?php echo $article_name; ?></a></div>
							</div>
						</div>
					</div>
				</div>
				<?php
				$k++;
                if($k%3==0 || $k == count($data_article)){
                        echo '</div>';
                } 
			}
		}		
		?>		
	</div>
</div>
<div class="content-bottom">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">	
				<div class="margin-top-15">
					<center><a href="<?php echo url('/'); ?>"><img src="<?php echo $seo_logo_frontend; ?>" width="150"></a></center>
				</div>
				<div>
					<?php 
				$module=getPage("intro-content-bottom");
				if(count($module) > 0){					
					$content=$module["content"];					
					echo $content;
				}
				?>
				</div>										
			</div>
			<div class="col-sm-2">
				<?php     
				$args = array(                         
					'menu_class'            => 'dmcontentbottom', 					                     
					'before_wrapper'        => '<div class="margin-top-20">',
					'before_title'          => '<h3 class="brabel">',
					'after_title'           => '</h3>',
					'before_wrapper_ul'     =>  '<div>',
					'after_wrapper_ul'      =>  '</div>',
					'after_wrapper'         => '</div>'     ,
					'link_before'       	=> '', 
					'link_after'        	=> '',                                        
					'theme_location'        => 'about-us' ,
					'menu_li_actived'       => 'current-menu-item',
					'menu_item_has_children'=> 'menu-item-has-children',
					'alias'                 => $seo_alias
				);                    
				wp_nav_menu($args);
				?>       
			</div>
			<div class="col-sm-3">
				<?php     
				$args = array(                         
					'menu_class'            => 'dmcontentbottom', 					                     
					'before_wrapper'        => '<div class="margin-top-20">',
					'before_title'          => '<h3 class="brabel">',
					'after_title'           => '</h3>',
					'before_wrapper_ul'     =>  '<div>',
					'after_wrapper_ul'      =>  '</div>',
					'after_wrapper'         => '</div>'     ,
					'link_before'       	=> '', 
					'link_after'        	=> '',                                        
					'theme_location'        => 'policy' ,
					'menu_li_actived'       => 'current-menu-item',
					'menu_item_has_children'=> 'menu-item-has-children',
					'alias'                 => $seo_alias
				);                    
				wp_nav_menu($args);
				?>       
			</div>
			<div class="col-sm-3">
				<?php 
				$module=getPage("cham-soc-khach-hang");			
				if(count($module) > 0){		
					$fullname=$module['fullname'];		
					$content=$module["content"];					
					?>		
					<div class="margin-top-20">
						<h3 class="brabel"><?php echo $fullname; ?></h3>
						<div class="margin-top-15">
							<?php echo $content; ?>
						</div>		
					</div>										
					<?php				
				}
				?>						
			</div>			
		</div>
	</div>
</div>
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<div class="margin-top-15">
					<img src="<?php echo asset('upload/thong-bao-bo-cong-thuong.png'); ?>">
				</div>
				<?php 
				$module=getPage("chung-thuc-bo-cong-thuong");			
				if(count($module) > 0){							
					$content=$module["content"];					
					?>		
					<div class="margin-top-15">
						<?php echo $content; ?>
					</div>										
					<?php				
				}
				?>		
			</div>
			<div class="col-sm-4">
				<?php 
				$module=getPage("intro-footer");			
				if(count($module) > 0){		
					$fullname=$module['fullname'];		
					$content=$module["content"];					
					?>		
					<div class="margin-top-15">
						<h3 class="brabel"><?php echo $fullname; ?></h3>
						<div class="margin-top-15">
							<?php echo $content; ?>
						</div>		
					</div>										
					<?php				
				}
				?>	
			</div>
			<div class="col-sm-4">
				<h3 class="brabel margin-top-15">THANH TOÁN</h3>
				<div class="margin-top-15">
					<img src="<?php echo asset('upload/payment-footer.png'); ?>">
				</div>				
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				&copy;Bản quyền thuộc về VITOEN.  Thiết kế web bởi <a href="https://vidoco.vn/"><font color="#333"><b>VIDOCO</b></font></a>.
			</div>
		</div>
	</div>
</footer>
<div class="modal fade modal-add-cart" id="modal-alert-add-cart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        
      </div>
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>        
			</div>
			<div class="modal-body">

			</div>      
		</div>
	</div>
</div>