<?php 
$linkCancel             =   route('frontend.'.$controller.'.getList');
$linkSave               =   route('frontend.'.$controller.'.save');
$linkUploadFile         =   route('frontend.'.$controller.'.uploadFile');
$linkCreateAlias        =   route('frontend.'.$controller.'.createAlias');
$inputFullName          =   '<input type="text" class="form-control" name="fullname"    onblur="createAlias()"     value="'.@$arrRowData['fullname'].'">';
$inputAlias             =   '<input type="text" class="form-control" name="alias"        disabled      value="'.@$arrRowData['alias'].'">'; 

$inputMetakeyword             =   '<textarea  name="meta_keyword" rows="2" cols="100" class="form-control" >'.@$arrRowData['meta_keyword'].'</textarea>'; 
$inputMetadescription             =   '<textarea  name="meta_description" rows="2" cols="100" class="form-control" >'.@$arrRowData['meta_description'].'</textarea>'; 
$inputPrice             =   '<input type="text" class="form-control" name="price" onkeyup="PhanCachSoTien(this);"      value="'.convertToTextPrice(@$arrRowData['price']).'">';
$inputSalePrice             =   '<input type="text" class="form-control" name="sale_price" onkeyup="PhanCachSoTien(this);"        value="'.convertToTextPrice(@$arrRowData['sale_price']).'">';
$status                 =    (int)@$arrRowData['status']  ;
$inputStatus                =   '<input type="hidden" name="status"  value="'.@$status.'" />';
$inputIntro            =   '<textarea  name="intro" rows="5" cols="100" class="form-control" >'.@$arrRowData['intro'].'</textarea>'; 
$inputDetail            =   '<textarea name="detail" rows="5" cols="100" class="form-control" >'.@$arrRowData['detail'].'</textarea>'; 
$inputSortOrder         =   '<input type="hidden" class="form-control" name="sort_order"    value="'.@$arrRowData['sort_order'].'"  >';
$ddlCategoryProduct      =   cmsSelectboxCategory("category_id","form-control",@$arrCategoryProductRecursive,@$arrRowData['category_id'],"",'Chọn danh mục');
$ddlCategoryParam        =cmsSelectboxCategoryParamMultiple("category_param_id[]", 'form-control', @$arrCategoryParamRecursive, @$arrProductParam,"",'Chọn danh mục');
$inputSizeType         =   '<input type="text" class="form-control" name="size_type"     value="'.@$arrRowData['size_type'].'">';
$id                     =   (count(@$arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"  value="'.@$id.'" />'; 
$inputAliasMenu       =   '<input type="hidden" name="alias_menu" value="'.@$arrRowData['alias'].'" />'; 
$picture                =   "";
$strImage               =   "";
$setting= getSettingSystem();
$product_width = $setting['product_width']['field_value'];
$product_height = $setting['product_height']['field_value'];  
if(count(@$arrRowData)>0){
	if(!empty(@$arrRowData["image"])){
		$picture        =   '<div class="col-sm-6"><center>&nbsp;<img src="'.asset("/upload/" . $product_width . "x" . $product_height . "-".@$arrRowData["image"]).'" style="width:100%" />&nbsp;</center></div><div class="col-sm-6"><a href="javascript:void(0);" onclick="deleteImage();"><img src="'.asset('public/adminsystem/images/delete-icon.png').'"/></a></div>';                        
		$strImage       =   @$arrRowData["image"];
	}        
}   
$inputPictureHidden     =   '<input type="hidden" name="image_hidden"  value="'.@$strImage.'" />';
$str_child_image="";
if(count(@$arrRowData) > 0){
	$arrProductChildImage=json_decode(@$arrRowData['child_image']);    
	if(count(@$arrProductChildImage) > 0){        
		$str_child_image=implode(',',$arrProductChildImage);
	}    
}   
$inputChildPictureHidden     =   '<input type="hidden" name="image_child_hidden"  value="'.@$str_child_image.'" />';
?>
<div class="tieu-de margin-top-15">
	Đăng sản phẩm
</div>		
<form method="post" name="frm" class="margin-top-5 padding-top-5 box-article frm-vip" enctype="multipart/form-data">
	{{ csrf_field() }}          
	<?php 
	echo $inputPictureHidden; 
	echo $inputChildPictureHidden;
	echo $inputID;
	echo $inputStatus;
	echo $inputAliasMenu;
	echo $inputSortOrder;
	?>            	                                        
	<div class="row margin-bottom-5">
		<label class="col-md-3 control-label"></label>
		<div class="col-md-9">
			<div class="actions"><a href="javascript:void(0);" onclick="save();" class="btn purple">Lưu&nbsp;<i class="fa fa-floppy-o"></i></a> </div>
		</div>
		
	</div>            
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Sản phẩm</b></label>
		<div class="col-md-9">
			<?php echo $inputFullName; ?>
			<span class="help-block"></span>
		</div>
		
	</div>
	<div class="form-group">  
		<label class="col-md-3 control-label"><b>Alias</b></label>
		<div class="col-md-9">
			<?php echo $inputAlias; ?>
			<span class="help-block"></span>
		</div>   
		
	</div>      		
	<div class="form-group"> 
		<label class="col-md-3 control-label"><b>Giá</b></label>
		<div class="col-md-9">
			<?php echo $inputPrice; ?>
			<span class="help-block"></span>
		</div>    
		
	</div>    
	<div class="form-group"> 
		<label class="col-md-3 control-label"><b>Giá khuyến mãi</b></label>
		<div class="col-md-9">
			<?php echo $inputSalePrice; ?>
			<span class="help-block"></span>
		</div>   
		
	</div>    
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Loại sản phẩm</b></label>
		<div class="col-md-9">
			<?php echo $ddlCategoryProduct; ?>
			<span class="help-block"></span>
		</div>
		
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Thuộc tính</b></label>
		<div class="col-md-9">
			<?php echo $ddlCategoryParam; ?>
			<span class="help-block"></span>
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Kích thước</b></label>
		<div class="col-md-9">
			<?php echo $inputSizeType; ?>
			<span class="help-block"></span>
		</div> 
		
	</div> 
	<div class="form-group">                      
		<label class="col-md-3 control-label"><b>Hình</b></label>
		<div class="col-md-4">
			<input type="file" name="image"  />   
			<div class="picture-area"><?php echo $picture; ?>                      </div>
			
		</div>
		<div class="col-md-5">
			<div>
				<a href="javascript:void(0);" onclick="addRow();" class="btn"> Thêm mới

				</a>
			</div>
			<table class="table-image" border="0" cellpadding="0" cellspacing="0" border="1" width="100%">
				<thead>
					<tr>                                    
						<th><center>Thumbnails</center></th>                                  
						<th ></th>
					</tr>
				</thead>
				<tbody>
					<?php
					if(count($arrRowData) > 0){
						$arrProductChildImage=json_decode(@$arrRowData['child_image']);    
						if(count($arrProductChildImage) > 0){
							foreach ($arrProductChildImage as $key => $value) {
								$featuredImg=url("/upload/" . $product_width . "x" . $product_height . "-".@$value);
								?>
								<tr>
									<td align="center" valign="middle">
										<img src="<?php echo $featuredImg; ?>" width="<?php echo ((int)$product_width/6); ?>" />
										<input type="hidden" name="product_child_image_hidden" value="<?php echo $value; ?>" />
									</td>
									<td align="center" valign="middle">
										<a href="javascript:void(0);"  onclick="removeRow(this);"><img src="<?php echo url("/public/adminsystem/images/delete-icon.png"); ?>" /></a>
									</td>
								</tr>
								<?php
							}                                            
						}    
					}   
					?>                                    
				</tbody>
			</table>    
		</div>    
		
	</div>  
	<div class="form-group">  
		<label class="col-md-3 control-label"><b>Meta keyword</b></label>
		<div class="col-md-9">
			<?php echo $inputMetakeyword; ?>
			<span class="help-block"></span>
		</div>    
		
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Meta description</b></label>
		<div class="col-md-9">                            
			<?php echo $inputMetadescription; ?>
			<span class="help-block"></span>
		</div>
		
	</div>
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Giới thiệu</b></label>
		<div class="col-md-9">                            
			<?php echo $inputIntro; ?>
			<span class="help-block"></span>
		</div> 
		
	</div> 
	<div class="form-group">
		<label class="col-md-3 control-label"><b>Chi tiết</b></label>
		<div class="col-md-9">                            
			<?php echo $inputDetail; ?>
			<span class="help-block"></span>
			<script type="text/javascript" language="javascript">
				CKEDITOR.replace('detail',{
					height:300
				});
			</script>
			<span class="help-block"></span>
		</div>    

	</div> 	
	<div class="clr"></div>	  
</form>
<script type="text/javascript" language="javascript">
	
	function resetErrorStatus(){
		var id                   =   $('input[name="id"]');        
		var fullname             =   $('input[name="fullname"]');
		var alias                =   $('input[name="alias"]');     
		var category_id  		=   $('select[name="category_id"]');   
		var sort_order           =   $('input[name="sort_order"]');

		$(fullname).closest('.form-group').removeClass("has-error");        
		$(alias).closest('.form-group').removeClass("has-error");
		$(category_id).closest('.form-group').removeClass("has-error");
		$(sort_order).closest('.form-group').removeClass("has-error");        


		$(fullname).closest('.form-group').find('span').empty().hide();        
		$(alias).closest('.form-group').find('span').empty().hide();
		$(category_id).closest('.form-group').find('span').empty().hide();
		$(sort_order).closest('.form-group').find('span').empty().hide(); 

	}

	function uploadFileImport(ctrl_image){    
		var token = $('input[name="_token"]').val();       
		var image=ctrl_image;        
		var file_upload=$(image).get(0);
		var files = file_upload.files;
		var file  = files[0];    
		var frmdata = new FormData();        
		frmdata.append("image", file);
		frmdata.append("_token", token);
		$.ajax({ url: '<?php echo $linkUploadFile; ?>', method: 'post', data: frmdata, contentType: false, processData: false })
	}
	function deleteImage(){
		var xac_nhan = 0;
		var msg="Bạn có muốn xóa ?";
		if(window.confirm(msg)){ 
			xac_nhan = 1;
		}
		if(xac_nhan  == 0){
			return 0;
		}
		$(".picture-area").empty();
		$("input[name='image_hidden']").val("");        
	}
	function save(){
		var id=$('input[name="id"]').val();                
		var fullname=$('input[name="fullname"]').val();        
		var alias=$('input[name="alias"]').val();
		var alias_menu=$('input[name="alias_menu"]').val();

		var meta_keyword=$('textarea[name="meta_keyword"]').val();
		var meta_description=$('textarea[name="meta_description"]').val();
		var category_id=$('select[name="category_id"]').val();
		var category_param_id=$('select[name="category_param_id[]"]').val();      
		var image = $('input[name="image"]').val();
		if (image != ''){
			image = image.substr(image.lastIndexOf('\\') + 1);       
		}
		var image_hidden=$('input[name="image_hidden"]').val();             
		var child_image='';
		var tbody=$("table.table-image > tbody")[0];
		var arr_child_image=new Array(tbody.rows.length);
		for(var i=0;i<tbody.rows.length;i++){
			var row=tbody.rows[i];
			var imageChild='';
			var product_child_image_hidden=$(row.cells[0]).find('input[type="hidden"][name="product_child_image_hidden"]');
			var product_child_image_file=$(row.cells[0]).find('input[type="file"][name="product_child_image_file"]');
			if(product_child_image_hidden.length > 0){
				imageChild=$(product_child_image_hidden).val();
			}
			if(product_child_image_file.length > 0){
				imageChild = $(product_child_image_file).val();
				imageChild = imageChild.substr(imageChild.lastIndexOf('\\') + 1);       
			}
			arr_child_image[i]=imageChild;
		}
		if(arr_child_image.length > 0){
			child_image=arr_child_image.toString();          
		}                     
		var price=$('input[name="price"]').val();
		var sale_price=$('input[name="sale_price"]').val();
		var size_type=$('input[name="size_type"]').val();
		var intro=$('textarea[name="intro"]').val(); 
		var detail=CKEDITOR.instances['detail'].getData();    
		var status=$('input[name="status"]').val();           
		var sort_order=$('input[name="sort_order"]').val();        
		var token = $('input[name="_token"]').val();   
		resetErrorStatus();
		var dataItem={
			"id":id,            
			"fullname":fullname,            
			"alias":alias,
			"alias_menu":alias_menu,            
			"meta_keyword":meta_keyword,
			"meta_description":meta_description,
			"image":image,
			"image_hidden":image_hidden,           
			"price":price,
			"sale_price":sale_price,
			"size_type":size_type,
			"intro":intro,
			"detail":detail,
			"category_id":category_id,  
			"category_param_id":category_param_id,                           
			"child_image":child_image,            
			"sort_order":sort_order,
			"status":status,         
			"_token": token
		};
		$.ajax({
			url: '<?php echo $linkSave; ?>',
			type: 'POST',
			data: dataItem,
			async: false,
			success: function (data) {
				if(data.checked==true){
					uploadFileImport($('input[name="image"]'));    
					var child_image_ctrl=$("table.table-image > tbody").find("input[type='file']");                
					if(child_image_ctrl.length > 0){
						for(var i=0;i<child_image_ctrl.length;i++){
							uploadFileImport(child_image_ctrl[i]);
						}
					}                    
					window.location.href = "<?php echo $linkCancel; ?>";
				}else{
					var data_error=data.error;                     
					if(typeof data_error.fullname               != "undefined"){
						$('input[name="fullname"]').closest('.form-group').addClass(data_error.fullname.type_msg);
						$('input[name="fullname"]').closest('.form-group').find('span').text(data_error.fullname.msg);
						$('input[name="fullname"]').closest('.form-group').find('span').show();                        
					}                    
					if(typeof data_error.alias                  != "undefined"){
						$('input[name="alias"]').closest('.form-group').addClass(data_error.alias.type_msg);
						$('input[name="alias"]').closest('.form-group').find('span').text(data_error.alias.msg);
						$('input[name="alias"]').closest('.form-group').find('span').show();                       
					}
					if(typeof data_error.category_id               != "undefined"){
						$('select[name="category_id"]').closest('.form-group').addClass(data_error.category_id.type_msg);
						$('select[name="category_id"]').closest('.form-group').find('span').text(data_error.category_id.msg);
						$('select[name="category_id"]').closest('.form-group').find('span').show();                        
					}
					if(typeof data_error.sort_order               != "undefined"){
						$('input[name="sort_order"]').closest('.form-group').addClass(data_error.sort_order.type_msg);
						$('input[name="sort_order"]').closest('.form-group').find('span').text(data_error.sort_order.msg);
						$('input[name="sort_order"]').closest('.form-group').find('span').show();                        
					}                                   
				}
				spinner.hide();
			},
			error : function (data){
				spinner.hide();
			},
			beforeSend  : function(jqXHR,setting){
				spinner.show();
			},
		});
	}
	function addRow() {
		var tbody=$("table.table-image > tbody")[0];
		var row=tbody.insertRow(tbody.length);
		var cell0 = row.insertCell(0);
		var cell1 = row.insertCell(1);
		cell0.innerHTML = '<input type="file" name="product_child_image_file">';
		cell1.innerHTML = '<a href="javascript:void(0);"  onclick="removeRow(this);"><img src="<?php echo url("/public/adminsystem/images/delete-icon.png"); ?>" />';         
	}
	function removeRow(control) {
		var tbody=$(control).closest("tbody")[0];
		var tr=$(control).closest("tr")[0];
		var image=$(tr).find("input[type='hidden']").val();            
		var image_child_hidden=$('input[name="image_child_hidden"]').val()            
		var arrImageChild=image_child_hidden.split(',');
		var index=arrImageChild.indexOf(image);
		if (index > -1) {
			arrImageChild.splice(index, 1);
		}
		var str=arrImageChild.toString();
		$('input[name="image_child_hidden"]').val(str);
		var index = $(tr).index();         
		tbody.deleteRow(index); 
	}
	function createAlias(){
		var id=$('input[name="id"]').val();   
		var fullname    = $('input[name="fullname"]').val();
		var token       = $('input[name="_token"]').val();     
		var dataItem={      
			"id":id,      
			"fullname":fullname,            
			"_token": token
		};   
		$('input[name="alias"]').val(''); 
		resetErrorStatus();    
		$.ajax({
			url: '<?php echo $linkCreateAlias; ?>',
			type: 'POST',
			data: dataItem,            
			async: false,
			success: function (data) {                
				if(data.checked==true){
					$('input[name="alias"]').val(data.alias); 
				}else{                    
					var data_error=data.error;
					if(typeof data_error.fullname               != "undefined"){
						$('input[name="fullname"]').closest('.form-group').addClass(data_error.fullname.type_msg);
						$('input[name="fullname"]').closest('.form-group').find('span').text(data_error.fullname.msg);
						$('input[name="fullname"]').closest('.form-group').find('span').show();                        
					}                            
				}
				spinner.hide();
			},
			error : function (data){
				spinner.hide();
			},
			beforeSend  : function(jqXHR,setting){
				spinner.show();
			},
		});
	}

</script>
