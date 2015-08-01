jQuery.ready $('div.media.row').hover(->
  $(this).find('div.col-md-3').toggleClass 'hidden'
  return
)