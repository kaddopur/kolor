paint = 'purple'

setKeyAction = ->
  $(document).keydown (e) ->
    $("#k#{e.keyCode}").addClass('active')

  $(document).keyup (e) ->
    $("#k#{e.keyCode}").removeClass('active')

setPallete = ->
  $('.circle').each ->
    $(this).css('background', $(this).data('code'));
    $(this).click ->
      paint = $(this).data('color')

      $("#pallete .active").removeClass('active')
      $(this).addClass('active')

      $("#indicator").css('left', $(this).position().left)
      $("#indicator").css('color', $(this).data('code'))

clearColor = (ele) ->
  ele.removeClass('color-black')
  ele.removeClass('color-white')
  ele.removeClass('color-beige')
  ele.removeClass('color-gray')
  ele.removeClass('color-red')
  ele.removeClass('color-blue')
  ele.removeClass('color-green')
  ele.removeClass('color-yellow')
  ele.removeClass('color-orange')
  ele.removeClass('color-pink')
  ele.removeClass('color-purple')

bindKeyColor = ->
  $('.key').each ->
    $(this).click ->
      clearColor($(this))
      $(this).addClass("color-#{paint}")

$ ->
  setKeyAction()
  setPallete()
  bindKeyColor()

  $('#pallete .circle').first().click()
  
