class Things.Routers.Tasks extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->

  index: ->
    view = new Things.Views.TasksIndex(collection: Things.tasks)
    $('#tasks-list').html(view.render().el)
