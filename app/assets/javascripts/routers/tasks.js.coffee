class Todorails.Routers.Tasks extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->

  index: ->
    view = new Todorails.Views.TasksIndex(collection: Todorails.tasks)
    $('#tasks-list').html(view.render().el)
