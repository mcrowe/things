class Todorails.Models.Task extends Backbone.Model

  defaults:
    title: ''
    description: ''
    done: false
    order: 0

  toggleDone: ->
    @save(done: !@get('done'))

  clear: ->
    @destroy()