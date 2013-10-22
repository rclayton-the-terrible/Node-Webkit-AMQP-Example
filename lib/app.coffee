uuid = require("uuid")

Ex1Headers =
  principal: "me@me.com"
  event_type: "hello.world"

Ex1Body =
  foo: "bar"
  bar: 123
  foobar: [ "foo", "bar", 123 ]

app = angular.module 'AmqpApp', []

app.controller 'MainCtrl', ($scope) ->

  $scope.id_box = uuid.v4()

  $scope.useSample = ->
    $scope.header_box = JSON.stringify Ex1Headers, undefined, 4
    $scope.body_box = JSON.stringify Ex1Body, undefined, 4

  $scope.useSample()

  $scope.messages = []

  message_handler = (message) ->
    $scope.$apply ->
      $scope.messages.push message

  amqpConnection = new AmqpConnection(message_handler)

  $scope.usingHeartbeat = false

  $scope.heartbeatOff = ->
    amqpConnection.stopHeartbeat()
    $scope.usingHeartbeat = false

  $scope.heartbeatOn = ->
    amqpConnection.startHeartbeat()
    $scope.usingHeartbeat = true

  $scope.clearMessages = ->
    $scope.messages.length = 0

  $scope.publish = ->
    headers = {}

    try
      headers = JSON.parse $scope.header_box
    catch e1
      alert("Invalid Headers input.")
      return

    headers.id = $scope.id_box

    body = null

    try
      bjson = JSON.parse $scope.body_box
      body = bjson if bjson?
    catch e2
      body = { msg: $scope.body_box }

    try
      amqpConnection.publish(body, headers)
      $scope.id_box = uuid.v4()
    catch e3
      alert("Error publishing message: " + e3)
