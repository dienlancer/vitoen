<?php 
$setting=getSettingSystem();
$product_width = $setting['product_width']['field_value'];
$product_height = $setting['product_height']['field_value'];
$ssName="vmart";
$arrCart=array();
if(Session::has($ssName)){
	$arrCart=Session::get($ssName);    
} 
?>
<div class="breadcrumb-title margin-top-15">
	THANH TOÁN
</div>
<?php 
if(count(@$arrCart) > 0){
	?>
	<table class="com_product16 margin-top-5" cellpadding="0" cellspacing="0" width="100%">
		<thead>
			<tr>	
				<th>Sản phẩm</th>
				<th><center>Giá</center></th>
				<th>Số lượng</th>
				<th><center>Tổng giá</center></th>				
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
					<td align="center" class="com_product22" ><?php echo $product_quantity; ?></td>
					<td align="right" class="com_product23" ><?php echo $product_total_price_text; ?></td>					
				</tr>
				<?php
			} 
			?>					
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">

				</td>			
				<td><center><b><?php echo $quantity ?></b></center></td>
				<td class="td-right"><b><?php echo fnPrice($total_price) ; ?></b></td>
			</tr>
		</tfoot>			
	</table>
	<?php 
	if(count(@$msg) > 0){
		$type_msg='';					
		if((int)@$checked == 1){				
			$type_msg='note-success';
		}else{
			$type_msg='note-danger';
		}
		?>
		<div class="note margin-top-15 <?php echo $type_msg; ?>" >
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
	<form name="frm-checkout" method="POST"  class="margin-top-5">
		{{ csrf_field() }}		
		<div><b>THÔNG TIN KHÁCH HÀNG</b></div>
		<table  border="0" width="100%" cellpadding="0" cellspacing="0"> 					              
			<tbody>                                                        
				<tr>
					<td class="td-right" width="20%">Email</td>
					<td><input type="text" name="email" value="<?php echo @$data["email"]; ?>" class="tichtac" /></td>                   
				</tr>                     
				<tr>
					<td class="td-right">Tên</td>
					<td><input type="text" name="fullname" value="<?php echo @$data["fullname"]; ?>" class="tichtac" /></td>            
				</tr>
				<tr>
					<td class="td-right">Địa chỉ</td>
					<td><input type="text" name="address" value="<?php echo @$data["address"]; ?>" class="tichtac" /></td>            
				</tr>                
				<tr>
					<td class="td-right">Phone</td>
					<td><input type="text" name="phone" value="<?php echo @$data["phone"]; ?>" class="tichtac" /></td>            
				</tr>
				<tr>
					<td class="td-right textarea-top">Ghi chú</td>
					<td class="td-left"><textarea name="note" cols="65" rows="5" class="tichtac"><?php echo @$data["note"]; ?></textarea></td>       
				</tr> 
				<tr>
					<td class="td-right textarea-top">Hình thức thanh toán</td>
					<td>
						<?php 						
						$data_payment_method=App\PaymentMethodModel::whereRaw('status = ?',[1])->select('id','fullname','alias')->orderBy('sort_order','asc')->get()->toArray();												
						?>						
						<select  name="payment_method_id" class="tichtac"  onchange="changePaymentMethod(this.value);">
							<option value="">----Vui lòng chọn hình thức thanh toán----</option>
							<?php 
							foreach($data_payment_method as $key => $value){
								if((int)@$value["id"] == (int)@$data['payment_method_id']){
									?><option selected="selected" value="<?php echo (int)@$value['id'] ?>"><?php echo @$value['fullname']; ?></option><?php
								}else{
									?><option value="<?php echo (int)@$value['id'] ?>"><?php echo @$value["fullname"]; ?></option><?php
								}
							}
							?>
						</select>
						<div class="box-info-payment-method">
							
						</div>						
					</td>            
				</tr>  
				<tr>
					<td></td>
					<td class="td-left checkout-btn"><a href="javascript:void(0);" onclick="document.forms['frm-checkout'].submit();">THANH TOÁN</a></td>				
				</tr>                                                                                 
			</tbody>    
		</table>		
	</form>
	<script type="text/javascript" language="javascript">
		function changePaymentMethod(id)    {
			$(".box-info-payment-method").empty();
			$(".box-info-payment-method").hide();
			var token=$('form[name="frm-checkout"]').find('input[name="_token"]').val();   
			var dataItem = {                 
				"id"                    : id,           
				"_token"                : token                            
			};			
			$.ajax({
				url         : '<?php echo route('frontend.index.getPaymentmethod'); ?>',
				type        : "POST",
				data        : dataItem,           
				success     : function(data, status, jsXHR){                            					
					if(data != null){
						$(".box-info-payment-method").show();
						$(".box-info-payment-method").append(data.content);
					}                           
				}
			});
		}
	</script>
	<?php
}
?>
