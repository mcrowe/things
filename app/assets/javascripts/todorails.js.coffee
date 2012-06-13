window.Todorails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Todorails.Routers.Tasks
    Backbone.history.start()

$(document).ready ->
  Todorails.init()
