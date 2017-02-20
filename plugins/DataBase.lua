local action = function(msg, blocks, ln)
    if blocks[1] == 'dbset' and blocks[2] and blocks[3] and is_admin(msg) and msg.chat.type == 'private' then
            local hbbb2 = blocks[2]
            local hbbb3 = blocks[3]
             db:set(hbbb2,hbbb3)
              api.sendMessage(msg.from.id, 'Success! :D', true)
            end
            if blocks[1] == 'dbget' and blocks[2] and is_admin(msg) and msg.chat.type == 'private' then
            local hbbb1 = blocks[2]
            local database = db:get(hbbb1)
                    local message = "Result : "..database
                      api.sendMessage(msg.from.id, mesaage, true)
                    end
        return
    end
return {
	action = action,
	triggers = {
	    '^/(dbset) (.*) (.*)$',
      '^/(dbget) (.*)$'

}}
