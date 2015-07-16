class Note
  constructor: ->
    @handleClicks()
    @resizeElements()

  handleClicks: ->
    $('#notes > li').click (ev) ->
      ev.preventDefault()
      location.href = $(this).data 'url'

  resizeElements: ->
    $(window).resize( ->
      $('#sidebar').height $(window).height() - 55
      $('.bootsy_text_area').height $(window).height() - 210
    ).trigger 'resize'

window.Note = Note

$ ->
  new Note()
