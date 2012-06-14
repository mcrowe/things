class Todorails.Collections.Tasks extends Backbone.Collection
  model: Todorails.Models.Task
  localStorage: new Store("Tasks")

  updateOrder: =>
    self = this

    $('.task').each (i) ->
      id = $(this).data('task-id')
      self.get(id).save(order: i)

  comparator: (task) ->
    task.get('order')
