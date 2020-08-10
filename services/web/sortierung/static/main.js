$( document ).ready(function() {
    $(".editable").click(function(){
        console.log($(this).data('type'))
        $("#edit_card").addClass("open")
        $('#create_folder').attr('action', '/folder?id='+this.id);
        $('#rename').attr('action', '/folder?id='+this.id+'&action=rename&type='+$(this).data('type'));
        $('#rename_val').val(this.innerHTML);
        $('#delete').attr('action', '/folder?id='+this.id+'&action=del&type='+$(this).data('type'));
        $('#upload_file').attr('action', '/uploader?id='+this.id);
        $('#qr_print').attr('action', '/qrcode?id='+this.id+'&type='+$(this).data("type"));

    })
    $("#close_card").click(function(){
        $("#edit_card").removeClass("open")
    })
});