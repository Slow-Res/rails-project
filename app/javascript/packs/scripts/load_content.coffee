
console.log "LOADING load_content.coffee"

window.updateMainContainer = (url) ->
  $.ajax
    url: url
    method: 'GET'
    success: (data) ->
      $('#main-container').html(data)
    error: (error) ->
      console.error('Error:', error)