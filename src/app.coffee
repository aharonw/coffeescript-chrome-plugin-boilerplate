{images}    = require './images.coffee'

HeaderView = require '../src/templates/header.jade'


class Restyler

  constructor: ->
    @$body = $ document.body
    @addCss()
    @appendHeader()
    @addImages()


  addCss: ->
    @appendStyleSheet 'css/style.css'
    @$body.css 'display', 'block'


  appendStyleSheet: (path) ->
    style      = document.createElement 'link'
    style.rel  = 'stylesheet'
    style.type = 'text/css'
    style.href = chrome.extension.getURL path
    (document.head or document.documentElement).appendChild style


  addImages: -> 
    @addImage image for image in images


  addImage: (image) ->
    $(image.selector).html '<img src="' + chrome.extension.getURL(image.path) + '" />'


  appendHeader: ->
    header = document.createElement 'div'
    header.setAttribute 'id', 'new-header'
    @$body.prepend $ header
    $('#new-header').html HeaderView {}



app = new Restyler










