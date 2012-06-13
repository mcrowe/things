class Todorails.Views.Task extends Backbone.View
  template: JST['tasks/task']
  className: 'accordion-group'

  render: ->
    $(@el).html(@template(task: @model))
    this