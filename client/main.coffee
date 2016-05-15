{ Template } = require 'meteor/templating'
{ ReactiveVar } = require 'meteor/reactive-var'

require './main.jade'

Template2.mixin Template.hello,
  states:
    # counter starts at 0
    counter: 0
    isBound: false
    'switch-1': true
    'switch-2': false
    checkbox: ['one']
    radio: 'first'
    slider: 25
    'input-text': 'test'
    # 'select-single': 'WY'
    # 'select-multiple': ['AL', 'WY']
    # contenteditable: '123'
  onRendered: ->
    # $('.js-select-single').select2 theme: 'flat'
    # $('.js-select-multiple').select2 theme: 'flat'
  events:
    'click button': (e) ->
      # increment the counter when button is clicked
      @state.counter++
      # test
      @state['switch-1'] = false
      @state['switch-2'] = true
      @state.checkbox = ['two']
      @state.radio = 'second'
      @state.slider = 75
      return

Template.hello.onRendered ->
  @state.isBound = true
