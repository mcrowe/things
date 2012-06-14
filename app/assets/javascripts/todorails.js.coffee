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

  $(document).keyup (event) ->
    if event.keyCode == 78
      Todorails.tasks.create()

  $('#tasks').sortable
    placeholder: 'task-placeholder'
    update: (event, ui) ->
      # console.log(event, ui)
      Todorails.tasks.updateOrder()
      # debugger
      # Todorails.tasks
