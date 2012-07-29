jQuery ->
    class AppView extends Backbone.View
        el: $('body')

        render: =>
            time = new Date()
            hour = time.getHours()
            minute = time.getMinutes()
            second = time.getSeconds()

            @clockModel = new BackboneTest.Models.ClockModel(hour: hour, minute: minute, second: second)
            @clockView = new BackboneTest.Views.ClockView(model:@clockModel)
            $(@el).append @clockView.render().el
            @

    view = new AppView()
    view.render()
