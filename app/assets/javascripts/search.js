$(document).on('turbolinks:load', function() {
    $('.search-form').submit(function() {
        var start_station = $(this).find('#start_station');
        var end_station = $(this).find('#end_station');

        if (start_station.val() == end_station.val()) {
            alert('Выберите конечную станцию');
            return false;
        }
    });
});

