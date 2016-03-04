# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    courses = $('#course_requirement_ids').html()
    school = $('#course_school_id :selected').text()
    options = $(courses).filter("optgroup[label='#{school}']").html()
    console.log(options)
    if options
        $('#course_requirement_ids').html(options)
    else
        $('#course_requirement_ids').empty()
    $("#course_requirement_ids").trigger("chosen:updated");
    $('#course_school_id').change ->
        school = $('#course_school_id :selected').text()
        options = $(courses).filter("optgroup[label='#{school}']").html()
        console.log(options)
        if options
            $('#course_requirement_ids').html(options)
        else
            $('#course_requirement_ids').empty()
        $("#course_requirement_ids").trigger("chosen:updated");