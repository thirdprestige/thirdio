#= require_tree ./vendor
#= require_tree ./lib

$ ->
  $('nav').click -> $('html, body').animate scrollTop: 0, 500
  $('nav a').click (e)-> e.stopPropagation()
