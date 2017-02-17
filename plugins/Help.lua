local action = function(msg, blocks, ln)
    if blocks[1] == 'help' and msg.chat.type == 'private' then
            local message = "در نسخه های بعدی فعال میشود..."
              api.sendMessage(msg.from.id, mesaage, true)
            end
        return
    end
local action = function(msg, blocks, ln)
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'help' then
            local text = "در نسخه های بعدی فعال میشود..."
        api.sendMessage(msg.from.id, text, true)
end
end
return {
	action = action,
	triggers = {
	    '^/(help)$',
	    '^###cb:!(help)'

}}
end