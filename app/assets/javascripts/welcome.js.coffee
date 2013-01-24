# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  clickWatcher()

clickWatcher = ->
  $('.nav-link').click (event) ->
    event.preventDefault()
    show =  $(this).attr('data-name')
    hideAllContent()
    showContent(show)
    $('.nav-link').removeClass("on")
    $(this).addClass("on")

hideAllContent = ->
  $('.section').removeClass("active")

showContent = (content) ->
  $('.section#' + content).addClass("active")