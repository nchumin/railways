$(document).on('turbolinks:load', function() {
    $('.carriage').hide();
    selected = $('#carriage_type').val();
    $('#' + selected).show();

    $('#carriage_type').change(function () {
        type = $(this).val();
        $('#carriage_type');
        $('.carriage').hide();
        $('#' + type).show();
    })
});
