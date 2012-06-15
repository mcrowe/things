class Todorails.Collections.Tasks extends Backbone.Collection
  model: Todorails.Models.Task
  localStorage: new Store("Tasks")

  updateOrder: =>
    taskElements = $('.task')
    taskCount = taskElements.size()

    taskElements.each (i, taskElement) =>
      cid = $(taskElement).data('task-cid')
      @getByCid(cid).save(order: i)

  comparator: (task) ->
    -1 * task.get('order')
