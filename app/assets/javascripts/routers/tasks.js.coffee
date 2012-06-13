class Todorails.Routers.Tasks extends Backbone.Router

  routes:
    '': 'index'

  initialize: ->
    @collection = new Todorails.Collections.Tasks
    @collection.create(title: 'Remember the milk', description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni ' )
    @collection.create(title: 'Lorem ipsum dolor sit amet, consectetur', description: 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.')
    @collection.create(title: 'But I must explain to you how all this mistaken idea', description: 'nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur')

  index: ->
    view = new Todorails.Views.TasksIndex(collection: @collection)
    $('#tasks-list').html(view.render().el)
