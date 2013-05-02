jQuery ->
  $("ul.nav a").on("click", (event) ->
    $("ul.nav li.active").removeClass("active")
    $(event.target).closest("li").addClass("active")
  )
