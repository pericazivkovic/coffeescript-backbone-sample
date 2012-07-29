jQuery ->
    class ClockView extends Backbone.View
        template: $('#clock-view-template').template()

        initialize: =>
            @model.bind('change', @render)
            @model.view = @

        updateModel: =>
            hour = @model.get('hour')
            minute = @model.get('minute')
            second = @model.get('second')

            second = second + 1
            if second > 59
                second = 0
                minute = minute + 1

            if minute > 59
                minute = 0
                hour = hour + 1

            if hour > 23
                hour = 0

            @model.set(
                'hour': hour,
                'minute': minute,
                'second': second
            )

        render: =>
            $(@el).html($.tmpl(@template, @model.toJSON()))
            setTimeout(@updateModel, 1000)
            @

    namespace "BackboneTest.Views", (exports) ->
        exports.ClockView = ClockView

    class ClockModel extends Backbone.Model
        defaults:
            hour: 0
            minute: 0
            second: 0

    namespace "BackboneTest.Models", (exports) ->
        exports.ClockModel = ClockModel
