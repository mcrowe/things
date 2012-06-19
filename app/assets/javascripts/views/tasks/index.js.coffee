class Things.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  initialize: ->
    @collection.bind('reset', @render)
    @collection.bind('add', @prependTask)

  render: =>
    $(@el).html(@template())
    @collection.each(@appendTask)
    this

  appendTask: (task) =>
    view = new Things.Views.Task(model: task)
    @$('#tasks').prepend(view.render().el)

  prependTask: (task) =>
    view = new Things.Views.Task(model: task)
    @$('#tasks').prepend(view.render().el)