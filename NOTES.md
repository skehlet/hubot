VBoxManage controlvm default natpf1 tcp-6379,tcp,,6379,,6379
VBoxManage showvminfo default
docker run -p 6379:6379 -d redis

HUBOT_SLACK_TOKEN=your-token-here \
EXPRESS_USER=hubot \
EXPRESS_PASSWORD=your-password-here \
bin/hubot --adapter slack

robot.send {room: message.envelope.user.name}, message

To mention a specific user, send one of the following formats
<@USER_ID>
<@USER_ID|user_name>
