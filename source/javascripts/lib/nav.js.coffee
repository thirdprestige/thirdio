$ ->
  $('nav').click -> $('html, body').animate scrollTop: 0, 500
  $('nav a').click (e)-> e.stopPropagation()

  try
    if $(document).scrollTop() > 0
      $('.initial').removeClass 'initial'

    else
      html2canvas $('body'), onrendered: (canvas)->
        $('.initial').removeClass 'initial'

        $('#header-blur').show().append canvas

        $('canvas').attr 'id', 'canvas'

        stackBlurCanvasRGB 'canvas', 0, 0, $('canvas').width(), $('canvas').height(), 5
  catch e
    console?.log e

$(window).scroll (e)->
  $('canvas').css
    "-webkit-transform":  "translatey(-" + ($(document).scrollTop()) + "px)"
