$(document).on('turbolinks:load', function() {
    $('.carriage').hide();
    var selected = $('#carriage_type').val();
    $('#' + selected).show();

    $('#carriage_type').change(function () {
        var type = $(this).val();
        $('.carriage').hide();
        $('#' + type).show();
    })
});
