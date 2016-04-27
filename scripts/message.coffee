module.exports = (robot) ->
    robot.router.post '/message/:room', (req, res) ->
        if not req.body.message
            res.status(400).send({error: 'Missing message param'})
            return
        room = req.params.room
        message = req.body.message
        robot.emit 'message', {
            room: room,
            message: message
        }
        res.send 'OK'

    robot.on 'message', (message) ->
        if not message.room or not message.message
            console.error('Invalid message, missing room or message properties:', JSON.stringify(message))
            return
        room = message.room
        message = message.message
        console.log 'room:' + room + ', message: ' + message
        robot.send {room: room}, message
