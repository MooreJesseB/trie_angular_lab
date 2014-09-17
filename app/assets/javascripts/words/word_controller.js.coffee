WordCtrls = angular.module("WordCtrls", [])

class WordCtrl

  constructor: (@scope, @Word) ->
    @greeting = "Hello World!"
    @Word.all()
    return this

  addWord: (newWord) ->
    @Word.create(newWord)
    .success (data) ->
      console.log(data)
  sayHello: () ->
    "Hello There Again!!"


WordCtrls.controller("WordCtrl", ["$scope", "Word", WordCtrl])