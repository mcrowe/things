window.Todorails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    @tasks = new Todorails.Collections.Tasks
    @tasks.fetch()

    new Todorails.Routers.Tasks
    Backbone.history.start()

$(document).ready ->
  Todorails.init()
