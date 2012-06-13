class Todorails.Models.Task extends Backbone.Model

  defaults:
    title: ''
    description: ''
    done: false

  toggle: ->
    @set(done: !@get('done'))

  clear: ->
    @destroy()