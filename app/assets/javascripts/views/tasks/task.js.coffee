class Todorails.Views.Task extends Backbone.View
  template: JST['tasks/task']
  className: 'accordion-group'

  events:
    'click .done': 'toggleDone'
    'dblclick': 'edit'
    'keyup .title-field': 'keyup'

  initialize: ->
    @model.bind('change', @render)

    @isEditing = @model.get('title').length == 0

  render: =>
    $(@el).html(@template(task: @model, isEditing: @isEditing))

    if @isEditing
      this.$('.title-field').focus()

    this

  toggleDone: ->
    @model.toggleDone()

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