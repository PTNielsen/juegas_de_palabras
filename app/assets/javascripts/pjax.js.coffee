$ = jQuery

# Enable pjax for all links with class 'pjax'
$('.pjax').live 'click', (event) ->
  unless event.which > 1 || event.metaKey || event.ctrlKey
    if $.support.pjax
      event.preventDefault()
      $.pjax
        container: $(this).data('pjax-container') || '[data-pjax-container]'
        url: $(this).data('href') || $(this).attr('href')
        timeout: 2000
    else if $(this).data('href')
      window.location = $(this).data('href')
