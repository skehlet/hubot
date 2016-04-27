# Description:
#   Echos messages back to the user.
#
# Dependencies:
#
# Configuration:
#
# Commands:
#   hubot echo - echoes back your message
#
# Notes:
#
# Author:
#   Steve Kehlet <skehlet@nextgen.com>

module.exports = (robot) ->
    robot.respond /echo (.*)/, (res) ->
        message = res.match[1]
        res.reply "You said: #{message}"
