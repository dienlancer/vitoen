@extends("adminsystem.master")
@section("content")
<?php 

$linkCancel             =   route('adminsystem.'.$controller.'.getList');
$linkSave               =   route('adminsystem.'.$controller.'.save');

$inputFullName          =   '<input type="text" class="form-control" name="fullname"      value="'.@$arrRowData['fullname'].'">';  
$inputAlias             =   '<input type="text" class="form-control" name="alias"      value="'.@$arrRowData['alias'].'">';  
$inputContent           =   '<textarea name="content" rows="5" cols="100" class="form-control" >'.@$arrRowData['content'].'</textarea>'; 
$status                 =   (count($arrRowData) > 0) ? @$arrRowData['status'] : 1 ;
$arrStatus              =   array(-1 => '- Select status -', 1 => 'Publish', 0 => 'Unpublish');  
$ddlStatus              =   cmsSelectbox("status","form-control",$arrStatus,$status,"");
$inputSortOrder         =   '<input type="text" class="form-control" name="sort_order"    value="'.@$arrRowData['sort_order'].'">';
$id                     =   (count($arrRowData) > 0) ? @$arrRowData['id'] : "" ;
$inputID                =   '<input type="hidden" name="id"  value="'.@$id.'" />'; 
?>
<div class="portlet light bordered">
    <div class="portlet-title">
        <div class="note"  style="display: none;"></div>
        <div class="caption">
            <i class="{{$icon}}"></i>
            <span class="caption-subject font-dark sbold uppercase">{{$title}}</span>
        </div>
        <div class="actions">
         <div class="table-toolbar">
            <div class="row">
                <div class="col-md-12">
                    <button onclick="save();" class="btn purple">Lưu <i class="fa fa-floppy-o"></i></button> 
                    <a href="<?php echo $linkCancel; ?>" class="btn green">Thoát <i class="fa fa-ban"></i></a>                    </div>                                                
                </div>
            </div>    
        </div>
    </div>
    <div class="portlet-body form">
        <form class="form-horizontal" role="form" name="frm" enctype="multipart/form-data">
            {{ csrf_field() }}                                  
                <?php echo  $inputID; ?>        
            <div class="form-body">
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Phương thức</b></label>
                        <div class="col-md-9">
                            <?php echo $inputFullName; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>   
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Alias</b></label>
                        <div class="col-md-9">
                            <?php echo $inputAlias; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>     
                </div>                                         
                <div class="row">
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Trạng thái</b></label>
                        <div class="col-md-9">                            
                            <?php echo $ddlStatus; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>  
                    <div class="form-group col-md-6">
                        <label class="col-md-3 control-label"><b>Sắp xếp</b></label>
                        <div class="col-md-9">
                            <?php echo $inputSortOrder; ?>
                            <span class="help-block"></span>
                        </div>
                    </div>      
                </div>      
                <div class="row">
                    <?php echo $inputContent; ?>
                    <span class="help-block"></span>                                  
                </div>                                                                                
            </div>                          
        </form>
    </div>
</div>
<script type="text/javascript" language="javascript">
    
    function save(){
        var id=$('input[name="id"]').val();        
        var fullname=$('input[name="fullname"]').val();
        var alias=$('input[name="alias"]').val();
        var content=$('textarea[name="content"]').val();
        var status=$('select[name="status"]').val();        
        var sort_order=$('input[name="sort_order"]').val();        
        var token = $('input[name="_token"]').val();   
        
        var dataItem={
            "id":id,
            "fullname":fullname,
            "alias":alias,
            "content":content,            
            "status":status,        
            "sort_order":sort_order,            
            "_token": token
        };
        $.ajax({
            url: '<?php echo $linkSave; ?>',
            type: 'POST',
            data: dataItem,
            async: false,
            success: function (data) {
                if(data.checked==1){
                    window.location.href = "<?php echo $linkCancel; ?>";
                }else{
                    showMsg('note',data);              
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
@endsection()            