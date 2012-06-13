class Todorails.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  initialize: ->
    @collection.bind('reset', @render)
    @collection.bind('add', @appendTask)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendTask)
    this

  appendTask: (task) =>
    view = new Todorails.Views.Task(model: task)
    @$('#tasks').append(view.render().el)