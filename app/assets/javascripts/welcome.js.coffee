# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

renderProgressBars = () ->
  $(".progress_bar").each (index, el) ->
    fill_bar = $(el).children(".progress_indicator")
    percent = $(el).attr("remaining_hours") / $(el).attr("total_hours") * 100
    $(fill_bar).width "#{percent}%"

$(document).ready ->
  renderProgressBars()

$(document).on "new_schedule_created", ->
  renderProgressBars()
