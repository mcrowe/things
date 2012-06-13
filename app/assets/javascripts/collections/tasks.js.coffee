class Todorails.Collections.Tasks extends Backbone.Collection

  model: Todorails.Models.Task

  localStorage: new Store("Tasks")


