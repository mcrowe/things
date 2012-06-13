class Todorails.Models.Task extends Backbone.Model

  defaults:
    title: ''
    description: ''
    done: false

  toggleDone: ->
    @save(done: !@get('done'))

  clear: ->
    @destroy()