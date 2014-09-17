WordFactories = angular.module("WordFactories", [])


WordFactories.factory("Word", ["$http", ($http)->
  return {
    all: ()->
      console.log("Getting All!")
      $http.get("/words.json").success (data) ->
        console.log(data)
    ,
    create: (newWord) ->
      console.log(newWord)
      $http.post("/words.json", {word: newWord})
  }
])