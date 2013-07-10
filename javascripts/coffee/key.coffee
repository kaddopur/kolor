setKeyAction = ->
  $(document).keydown (e) ->
    $("#k#{e.keyCode}").addClass('active')

  $(document).keyup (e) ->
    $("#k#{e.keyCode}").removeClass('active')

setKeyColor = ->
  $('.key').each ->
    $(this).addClass("color-#{$(this).data('color')}")

$ ->
  setKeyAction()
  setKeyColor()
  
