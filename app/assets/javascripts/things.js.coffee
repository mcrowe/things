window.Things =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    @tasks = new Things.Collections.Tasks
    @tasks.fetch()

    new Things.Routers.Tasks
    Backbone.history.start()

$(document).ready ->
  Things.init()

  $(document).keyup (event) ->
    if event.keyCode == 78
      Things.tasks.create()

  setTimeout ->
    $('#tasks').sortable
      placeholder: 'task-placeholder'
      update: ->
        Things.tasks.updateOrder()
  , 1000
