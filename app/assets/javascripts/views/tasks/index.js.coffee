class Todorails.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  initialize: ->
    @collection.bind('change', @render)
    @collection.bind('reset', @render)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendTask)
    this

  appendTask: (task) =>
    view = new Todorails.Views.Task(model: task)
    @$('#tasks').append(view.render().el)