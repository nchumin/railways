$(document).on('turbolinks:load', function() {
    var selected
    $('.carriage').hide();
    selected = $('#carriage_type').val();
    $('#' + selected).show();

    $('#carriage_type').change(function () {
        var type
        type = $(this).val();
        $('.carriage').hide();
        $('#' + type).show();
    })
});
