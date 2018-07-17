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
	<form name="frm-view-cart" method="post" action="" class="margin-top-15">
		{{ csrf_field() }}
		<table class="com_product16" cellpadding="0" cellspacing="0" width="100%">
			<thead>
				<tr>	
					<th>Sản phẩm</th>
					<th><center>Giá</center></th>
					<th>Số lượng</th>
					<th><center>Tổng giá</center></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<?php	
				$total_price=0;
				$quantity=0;
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
					$quantity+=(int)@$product_quantity;
					$total_price+=(float)$value["product_total_price"];																
					?>
					<tr>			
						<td class="td-left"><a href="<?php echo $product_link ?>"><?php echo $product_name; ?></a></td>
						<td align="right" class="com_product21" ><?php echo $product_price_text; ?></td>
						<td align="center" class="com_product22" ><input  type="text" onkeypress="return isNumberKey(event)" value="<?php echo $product_quantity; ?>" size="4" class="com_product19" name="quantity[<?php echo $product_id; ?>]">		
						</td>
						<td align="right" class="com_product23" ><?php echo $product_total_price_text; ?></td>
						<td align="center" class="com_product24" ><a href="<?php echo route('frontend.index.delete',[$product_id]); ?>" onclick="return xacnhanxoa();"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
					</tr>
					<?php
				} 
				?>					
			</tbody>	
			<tfoot>
				<tr>
					<td colspan="2">
						<a href="<?php echo route('frontend.index.trash'); ?>" class="com_product28"><div><i class="far fa-trash-alt"></i></div><div class="margin-left-5">Xóa giỏ hàng</div></a>
						<a href="javascript:void(0);" onclick="document.forms['frm-view-cart'].submit();" class="com_product28">
							<div><i class="fas fa-sync-alt"></i></div>
							<div class="margin-left-5">Cập nhật</div>
						</a>												
						<a href="<?php echo route('frontend.index.getHome'); ?>" class="com_product28">
							<div><i class="fas fa-backward"></i></div>
							<div class="margin-left-5">Tiếp tục mua hàng</div> 
						</a>
						<a href="<?php echo route('frontend.index.checkout'); ?>" class="com_product28">							
							<div >Thanh toán</div>
							<div class="margin-left-5"><i class="fas fa-forward"></i></div>
						</a>													
					</td>			
					<td><center><b><?php echo $quantity ?></b></center></td>
					<td class="td-right"><b><?php echo fnPrice($total_price) ; ?></b></td>
					<td></td>
				</tr>
			</tfoot>		
		</table>
	</form>
	<?php
}else{
	?>
	<div class="margin-top-15"><center>Giỏ hàng rỗng</center></div>
	<?php
}
?>