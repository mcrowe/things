class Todorails.Views.TasksIndex extends Backbone.View

  template: JST['tasks/index']

  render: ->
    $(@el).html(@template(tasks: @collection))
    this