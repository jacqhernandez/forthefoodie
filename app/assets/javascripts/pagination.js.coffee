$(document).on 'page:change', ->
  if $('#dishes-paginate').size() > 0
    $('#dishes-paginate .pagination').hide()
    loading_dishes = false

    $('#more-dishes').show().click ->
      unless loading_dishes
        loading_dishes = true
        more_dishes_url = $('#dishes-paginate .pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_dishes_url, ->
          $this.text('MORE DISHES').removeClass('disabled') if $this
          loading_dishes = false
      return

  if $('#foodventures-paginate').size() > 0
    $('#foodventures-paginate .pagination').hide()
    loading_foodventures = false

    $('#more-foodventures').show().click ->
      unless loading_foodventures
        loading_foodventures = true
        more_foodventures_url = $('#foodventures-paginate .pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_foodventures_url, ->
          $this.text('MORE FOODVENTURES').removeClass('disabled') if $this
          loading_foodventures = false
      return

  if $('#pages-paginate').size() > 0
    $('#pages-paginate .pagination').hide()
    loading_pages = false

    $('#more-pages').show().click ->
      unless loading_pages
        loading_pages = true
        more_pages_url = $('#pages-paginate .pagination .next_page a').attr('href')
        $this = $(this)
        $this.html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />').addClass('disabled')
        $.getScript more_pages_url, ->
          $this.text('MORE PAGES').removeClass('disabled') if $this
          loading_pages = false
      return

