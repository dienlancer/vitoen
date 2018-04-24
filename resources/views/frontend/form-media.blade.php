
<?php 
$linkCancel             =   route('frontend.'.$controller.'.getList');
$linkSave               =   route('frontend.'.$controller.'.save');
$linkUploadFile         =   route('frontend.'.$controller.'.uploadFile');
?>
<div class="tieu-de margin-top-15">
    Media
</div>   
<form class="margin-top-5 padding-top-5 box-article frm-vip" method="post" action="{!! $linkSave !!}" role="form" enctype="multipart/form-data">
    {{ csrf_field() }}           
    <div class="row">
        <div class="col-md-12"> 
            <div class="actions">
                <a class="btn purple" href="javascript:void(0);" onclick="save();">Lưu</a>
            <a href="<?php echo $linkCancel; ?>" class="btn green">Cancel <i class="fa fa-ban"></i></a>
            </div>                       
                                                                         
        </div>
    </div>    
    <div class="form-group margin-top-15">
        <div class="col-md-12">
            <a href="javascript:void(0);" onclick="addRow();" class="btn btn-sm green"> Thêm mới
                <i class="fa fa-plus"></i>
            </a>
        </div>
                                                                     
    </div>                
    <div class="form-group margin-top-15">
        <div class="col-md-12">
            <table class="table table-bordered table-recursive setting-system">
                <thead>
                    <tr>
                        <th width="20%">File</th>                                    
                        <th width="1%"></th>                                
                    </tr>
                </thead>  
                <tbody></tbody>                                                                       
            </table>
        </div> 

    </div> 
    <div class="clr"></div>    
</form>
<script type="text/javascript" language="javascript">
    function uploadFileImport(ctrl_image){    
        var token = $('input[name="_token"]').val();               
        var file_upload=$(ctrl_image).get(0);
        var files = file_upload.files;
        var file  = files[0];    
        var frmdata = new FormData();        
        frmdata.append("image", file);
        frmdata.append("_token", token);
        $.ajax({ url: '<?php echo $linkUploadFile; ?>', method: 'post', data: frmdata, contentType: false, processData: false })
    }
    function save(){
        var token = $('input[name="_token"]').val();   
        var tbody=$("table.setting-system > tbody")[0];
        var rows=tbody.rows;
        for(var i=0;i<rows.length;i++){
            var ctrl_media=$(rows[i].cells[0]).find('input[type="file"][name="media_file"]');            
            uploadFileImport(ctrl_media);            
        }
        window.location.href = "<?php echo $linkCancel; ?>";
    }
    function addRow() {
        var tbody=$("table.setting-system > tbody")[0];
        var row=tbody.insertRow(tbody.length);
        var cell0 = row.insertCell(0);
        var cell1 = row.insertCell(1);
        cell0.innerHTML = '<input type="file" name="media_file">';        
        cell1.innerHTML = '<a href="javascript:void(0);"  onclick="removeRow(this);"><img src="<?php echo url("/public/adminsystem/images/delete-icon.png"); ?>" />'
    }
    function removeRow(control) {
        var tbody=$(control).closest("tbody")[0];
        var tr=$(control).closest("tr")[0];
        var index = $(tr).index(); 
        tbody.deleteRow(index);                      
    }        
</script>
   