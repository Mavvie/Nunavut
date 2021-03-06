module = angular.module('micrositeTemplateApp.filters', [])

module.filter 'humanize', ()->
  (input) ->
    if _.isString(input)
      return input.replace(/_/g, ' ').replace /(\w+)/g, (match) ->
        match.charAt(0).toUpperCase() + match.slice(1)
    if _.isArray(input)
      return input.join ','