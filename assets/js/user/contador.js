$(document).ready(function(){
    $('.char-count').keyup(function() {
        var maxLength = parseInt($(this).attr('maxlength')); 
        var length = $(this).val().length;
        var newLength = maxLength-length;
        var id = $(this).attr('id');
        $('span[id="'+id+'"]').text(newLength);
    });
});
