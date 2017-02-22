local function do_keyboard_private()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'دانش آموز', callback_data = '!school'},
		},
		{
			{text = 'آموزگار', callback_data = '!teach'},
		}
	}
    return keyboard
end
local function do_keyboard_privatea()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'دانش آموز', callback_data = '!school'},
		},
		{
			{text = 'آموزگار', callback_data = '!teach'},
		}
	}
    return keyboard
end
local function do_keyboard_privateb()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{
			{text = 'دانش آموز', callback_data = '!school'},
		},
		{
			{text = 'آموزگار', callback_data = '!teach'},
		}
	}
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

local function do_keyboard_schoola()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = '📚هفتم', callback_data = '!school7'}},
	{{text = '📚هشتم', url = '!school8'}},
        {{text = '📚نهم', url = '!school9'}},
        {{text = '🔙', callback_data = '!school'}}
    }
    return keyboard
end

local function do_keyboard_schoolb()
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
local hbb1 = 'start:'..msg.from.id
local hbb2 = 'users'
local hbbb3 = msg.from.id..':type'
local db10 = db:get(hbb1)
local db11 = db:get(hbb2)
local db12 = db:get(hbb3)
local stats = db11+1
    if blocks[1] == 'start' and msg.chat.type == 'private' then
    local hbb4 = 'start:'..msg.from.id
    local hbb5 = 'started'
    local hbb6 = 'users'
    db:set(hbb4,hbb5)
    db:set(hbb6,stats)
            local message = "👋سلام!\nدوره تحصیلی خود را انتخاب کنید:"
            local keyboard = do_keyboard_private()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
	else if blocks[1] == 'start' and blocks[2] and not db12 and msg.chat.type == 'private' then
            local message = "👋سلام!\nدوره تحصیلی خود را انتخاب کنید:"
            local keyboard = do_keyboard_privatea()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
	end
	return
	end
local action = function(msg, blocks, ln)
    if msg.cb then
        local query = blocks[1]
        local msg_id = msg.message_id
        local text
if query == 'home' then
            local text = "👋سلام!\nلطفا *نوع کاربری* خود را انتخاب کنید:"
            local keyboard = do_keyboard_privateb()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
		if query == 'school' then
            local text = "دوره تحصیلی* خود را انتخاب کنید*:"
            local keyboard = do_keyboard_school()
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'school1' then
        local text = "پایه تحصیلی* خود را انتخاب کنید*:"
        local keyboard = do_keyboard_schoola()
    api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
if query == 'school2' then
        local text = "پایه تحصیلی* خود را انتخاب کنید*:"
        local keyboard = do_keyboard_schoolb()
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
