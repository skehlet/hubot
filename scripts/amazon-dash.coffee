module.exports = (robot) ->
    robot.router.post '/amazon-dash/:mac', (req, res) ->
        robot.emit 'amazon-dash', {
            mac: req.params.mac,
            data: req.body
        }
        res.send 'OK'

    robot.on 'amazon-dash', (event) ->
        if not event.mac
            console.error('Invalid amazon-dash event: missing mac property')
            return
        if event.data?.room?
            event.data.message ?= ':amazon: Dash[' + event.data.mac + '] pressed'
            robot.emit 'message', {
                room: event.data.room,
                message: event.data.message 
            }
