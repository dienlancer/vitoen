<?php 
$setting=getSettingSystem();
$map_url=$setting['map_url']['field_value'];       
?>
<div class="tieu-de margin-top-15">
	Liên hệ
</div>		
<div class="box-article margin-top-10">
	<div class="col-md-4 contact no-padding-left">
		<form method="post" name="frm-contact" class="margin-top-15" enctype="multipart/form-data">							
			{{ csrf_field() }}      			
			<?php 
			if(count(@$msg) > 0){
				$type_msg='';					
				if((int)@$checked == 1){															
					$type_msg='note-success';
				}else{
					$type_msg='note-danger';
				}
				?>
				<div class="note <?php echo $type_msg; ?>" >
					<ul>
						<?php 
						foreach (@$msg as $key => $value) {
							?>
							<li><?php echo $value; ?></li>
							<?php
						}
						?>                              
					</ul>	
				</div>      
				<?php
			}
			?>							
			<div class="margin-top-5"><input type="input" class="contact-input" name="fullname" value="<?php echo @$data['fullname']; ?>" placeholder="Họ và tên"></div>
			<div class="margin-top-5"><input type="input" class="contact-input" name="email" value="<?php echo @$data['email']; ?>" placeholder="Email"></div>
			<div class="margin-top-5"><input type="input" class="contact-input" name="telephone" value="<?php echo @$data['telephone']; ?>" placeholder="Điện thoại"></div>
			<div class="margin-top-5"><input type="input" class="contact-input" name="title" value="<?php echo @$data['title']; ?>" placeholder="Chủ đề"></div>
			<div class="margin-top-5"><input type="input" class="contact-input" name="address" value="<?php echo @$data['address']; ?>" placeholder="Địa chỉ"></div>
			<div class="margin-top-5"><textarea name="content" class="contact-input" placeholder="Nội dung" ><?php echo @$data['content']; ?></textarea></div>
			<div class="margin-top-5 box-readmore">
				<a href="javascript:void(0);" onclick="document.forms['frm-contact'].submit();">Gửi</a>		  
			</div>				
		</form>
	</div>
	<div class="col-md-8 contact-info no-padding-left">
		<div class="margin-top-15">
			<?php 
			$module=getPage("thong-tin-lien-he-widget");
			if(count($module) > 0){				
				$content=$module['content'];
				echo $content;	
			}
			?>
		</div>				
	</div>
	<div class="clr"></div>
</div>
<div class="margin-top-15">
	<iframe src="<?php echo $map_url; ?>" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>