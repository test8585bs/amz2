local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '📌دانش آموز', callback_data = '!school'}}, {{text = '📌آموزگار', callback_data = '!teach'}}}
    return keyboard
end

local function do_keyboard_school()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '🎓دوره متوسطه اول', callback_data = '!school1'}}, {{text = '🎓دوره متوسطه دوم', callback_data = '!school2'}}}
    return keyboard
end

local function do_keyboard_teach()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '🎓دوره متوسطه اول', callback_data = '!teach1'}}, {{text = '🎓دوره متوسطه دوم', callback_data = '!teach2'}}}
    return keyboard
end

local function do_keyboard_school1()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '📚هفتم', callback_data = '!school7'}},
	{{text = '📚هشتم', url = '!school8'}},
        {{text = '📚نهم', url = '!school9'}},
        {{text = '🔙', callback_data = '!school'}}
    }
    return keyboard
end

local function do_keyboard_school2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '📚دهم', callback_data = '!school10'}},
	{{text = '📚یازدهم', url = '!school11'}},
        {{text = '📚دوازدهم', url = '!school12'}},
        {{text = '🔙', callback_data = '!school'}}
    }
    return keyboard
end
local action = function(msg, blocks, ln)
local db10 = db:get('start:'..msg.from.id)
local db11 = db:get('bot:general:users')
local db12 = db:get(msg.from.id..':type')
local stats = tonumber(db11) + 1
    if blocks[1] == 'start' and not db10 then
    db:set('start:'..msg.from.id,'true')
    db:set('bot:general:users',stats)
        if msg.chat.type == 'private' then
            local message = "👋سلام "..msg.from.print_name.."!\nدوره تحصیلی خود را انتخاب کنید:"
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
        return
    end
    if blocks[1] == 'start' and blocks[2] and not db12 then
        if msg.chat.type == 'private' then
            local message = "👋سلام "..msg.from.print_name.."!\nدوره تحصیلی خود را انتخاب کنید:"
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
        return
    end
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'home' then
            local text = "👋سلام "..msg.from.print_name.."!\nلطفا *نوع کاربری* خود را انتخاب کنید:"
            local keyboard = do_keyboard_private()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
		if query == 'school' then
            local text = "دوره تحصیلی* خود را انتخاب کنید*:"
            local keyboard = do_keyboard_school()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'school1' then
        local text = "پایه تحصیلی* خود را انتخاب کنید*:"
        local keyboard = do_keyboard_school1()
    api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'school2' then
        local text = "پایه تحصیلی* خود را انتخاب کنید*:"
        local keyboard = do_keyboard_school2()
    api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
	       if query == 'teach' then
            local text = "دوره تدریسی* خود را انتخاب کنید*:"
            local keyboard = do_keyboard_teach()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
    end
    end

end

return {
	action = action,
	triggers = {
	    '^/(start)$',
	    '^/(start) (.*)$',
	    '^###cb:!(home)',
	    '^###cb:!(school1)',
	    '^###cb:!(school2)',
	    '^###cb:!(teach)',
	    '^###cb:!(school)',

}}
