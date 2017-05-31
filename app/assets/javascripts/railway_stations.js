$(document).on('turbolinks:load', function() {
    $('a.edit-station').click(function (e) {
        e.preventDefault();

        var station_id = $(this).data('stationId');
        var form = $('#edit_railway_station_' + station_id);
        var title = $('#railway_station_title_' + station_id);

        if (!$(this).hasClass('cancel')) {
            $(this).html('Отмена');
            $(this).addClass('cancel');
        } else {
            $(this).html('Редактировать');
            $(this).removeClass('cancel');
        }

        form.toggle();
        title.toggle();

    })
});