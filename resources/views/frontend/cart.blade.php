<div class="breadcrumb-title margin-top-15">
	GIỎ HÀNG
</div>
<?php 
$setting=getSettingSystem();
$product_width = $setting['product_width']['field_value'];
$product_height = $setting['product_height']['field_value'];
$ssName="vmart";
$arrCart=array();
if(Session::has($ssName)){
	$arrCart=Session::get($ssName);    
}      
if(count($arrCart) > 0){
	?>
	<form name="frm" method="post" action="" class="margin-top-15">
		{{ csrf_field() }}
		<table   cellpadding="0" cellspacing="0" width="100%">
			<thead>
				<tr>	
					<th>Sản phẩm</th>
					<th>Giá</th>
					<th>Số lượng</th>
					<th>Tổng giá</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<?php	
				$total_price=0;
				foreach ($arrCart as $key => $value) {	
					$product_id=$value["product_id"];      
					$product_name 				=	$value["product_name"];
					$product_code				=	$value["product_code"];
					$product_price 				=	$value["product_price"];        
					$product_image 				=  	asset('/upload/'.$product_width.'x'.$product_height.'-'.$value['product_image']) ;        
					$product_link 				= 	route('frontend.index.index',[$value['product_alias']]);			
					$product_quantity			=	$value["product_quantity"];
					$product_price_text 		=	fnPrice($value["product_price"]);
					$product_total_price_text 	= 	fnPrice($value["product_total_price"]);
					$total_price+=(float)$value["product_total_price"];				
					$delete_cart				=	route('frontend.index.deleteAll');
					$continue_link 				=	url('/');
					$delete_link 				=	route('frontend.index.delete',[$product_id]);
					$checkout_link 				=	route('frontend.index.checkout');
					?>
					<tr>			
						<td ><a href="<?php echo $product_link ?>"><?php echo $product_name; ?></a></td>
						<td align="right" ><?php echo $product_price_text; ?></td>
						<td align="center" ><input  type="text" onkeypress="return isNumberKey(event)" value="<?php echo $product_quantity; ?>" size="4" class="com_product19" name="quantity[<?php echo $product_id; ?>]">		
						</td>
						<td align="right" ><?php echo $product_total_price_text; ?></td>
						<td align="center" ><a href="<?php echo $delete_link; ?>"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
					</tr>
					<?php
				} 
				?>					
			</tbody>			
		</table>
	</form>
	<?php
}else{
	?>
	<div class="margin-top-15"><center>Giỏ hàng rỗng</center></div>
	<?php
}
?>