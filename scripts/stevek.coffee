module.exports = (robot) ->
  robot.router.post '/hubot/message/:room', (req, res) ->
    room = req.params.room
    message = req.body.message
    console.log 'room: ' + room + ', message: ' + message
    robot.send {room: room}, message
    res.send 'OK'

  # robot.router.post '/hubot/message/:room', (req, res) ->
  #   room = req.params.room
  #   message = req.body.message
  #   robot.emit 'message', {
  #     room: room,
  #     message: message
  #   }
  #   res.send 'OK'

  # robot.on 'message', (message) ->
  #   room = message.room
  #   message = message.message
  #   console.log 'room:', room, ', message:', message
  #   robot.send {room: room}, message
