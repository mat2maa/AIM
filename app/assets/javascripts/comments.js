$(document).ready(function () {
    //Create a comment
    $(document)
        .on("ajax:beforeSend", ".comment-form", function (evt, xhr, settings) {
            console.log("ajax:beforeSend");
            $(this).find('textarea')
                .addClass('uneditable-input')
                .attr('disabled', 'disabled');
            $(".comments-errors > p").html("");
        })
        .on("ajax:success", ".comment-form", function (evt, data, status, xhr) {
            console.log("ajax:success");
            $(this).find('textarea')
                .val('');
            $(xhr.responseText).insertAfter($(this)).show('slow');
        })
        .on("ajax:complete", ".comment-form", function (evt, data, status, xhr) {
            console.log("ajax:complete");
            $(this).find('textarea')
                .removeClass('uneditable-input')
                .removeAttr('disabled', 'disabled')
        })
        .on("ajax:error", ".comment-form", function (evt, data, status, xhr) {
            console.log("ajax:error" + " " + evt + " " + data + " " + status + " " + xhr);
            $(".comments-errors > p").html("There has been an error submitting your message, please try again.");
            $(this).find('textarea')
                .removeClass('uneditable-input')
                .removeAttr('disabled', 'disabled')
        });

    //Delete a comment
    $(document)
        .on("ajax:beforeSend", ".comment", function () {
            $(this).fadeTo('fast', 0.5)
        })
        .on("ajax:success", ".comment", function () {
            $(this).hide('fast')
        })
        .on("ajax:error", ".comment", function () {
            $(this).fadeTo('fast', 1)
        });
});