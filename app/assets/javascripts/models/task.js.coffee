class Todorails.Models.Task extends Backbone.Model

  defaults:
    title: ''
    description: ''
    done: false
    order: 0

  toggleDone: ->
    console.log('toggle done')
    @save(done: !@get('done'))

  clear: ->
    @destroy()