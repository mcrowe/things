class Things.Views.Task extends Backbone.View
  template: JST['tasks/task']
  attributes: ->
    'class': "task accordion-group #{'task-done' if @model.get('done')} editing"
    'data-task-cid': @model.cid

  events:
    'click .done': 'toggleDone'
    'dblclick': 'edit'
    'keyup .title-field': 'keyup'
    'click .delete': 'delete'

  initialize: ->
    @model.bind('change', @render)
    @isEditing = @model.blankTitle()

  render: =>
    $(@el).html(@template(task: @model, isEditing: @isEditing))
    this.$('.title-field').focus() if @isEditing

    this

  toggleDone: ->
    @model.toggleDone()
    $(@el).toggleClass('task-done')

  edit: ->
    @isEditing = true
    @render()

  updateTitle: ->
    @model.save(title: this.$('.title-field').val())

  close: ->
    @isEditing = false
    @render()

  keyup: (event) ->
    # Enter
    if event.keyCode == 13
      @updateTitle()
      @close()

    # Escape
    if event.keyCode == 27
      @close()

    # Don't bubble keyup event upwards.
    event.stopPropagation()

  delete: (event) ->
    event.preventDefault()
    @model.destroy()
    @remove()