class Todorails.Collections.Tasks extends Backbone.Collection

  model: Todorails.Models.Task

  localStorage: new Store("Tasks")

  # comparator: (task) ->
  #   console.log(task.get('id'))
  #   -1 * parseInt(task.get('id'))



