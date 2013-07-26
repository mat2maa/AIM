$(document).ready(function() {
    //Create a comment
    $(".comment-form")
        .on("ajax:beforeSend", function(evt, xhr, settings) {
            $(this).find('textarea')
                   .addClass('uneditable-input')
                   .attr('disabled', 'disabled');
        })
        .on("ajax:success", function(evt, data, status, xhr) {
            $(this).find('textarea')
                   .val('');
            $(xhr.responseText).hide().insertAfter($(this)).show('slow');
        })
        .on("ajax:complete", function(evt, data, status, xhr) {
            $(this).find('textarea')
                .removeClass('uneditable-input')
                .removeAttr('disabled', 'disabled')
        });

    //Delete a comment
    $(document)
        .on("ajax:beforeSend", ".comment", function() {
            $(this).fadeTo('fast', 0.5)
        })
        .on("ajax:success", ".comment", function() {
            $(this).hide('fast')
        })
        .on("ajax:error", ".comment", function() {
            $(this).fadeTo('fast', 1)
        });
});