class Things.Collections.Tasks extends Backbone.Collection
  model: Things.Models.Task
  url: '/api/tasks'

  updateOrder: =>
    taskElements = $('.task')
    taskCount = taskElements.size()

    taskElements.each (i, taskElement) =>
      cid = $(taskElement).data('task-cid')
      @getByCid(cid).save(order: i)

  comparator: (task) ->
    task.get('order')
