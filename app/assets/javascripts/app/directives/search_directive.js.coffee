angular.module("vanilla").directive "onSearch", [ "$location", ($location) ->
  (scope, element) ->
    element.on "keydown", (event) ->
      if event.which == 13 and element.val().length > 3

        query = element.val()

        scope.$apply () ->
          #redirect to search with pass parameters
          $location.url("/search?q=" + query)

        event.preventDefault()
]