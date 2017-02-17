local function is_not_used()
  local signup = db:get('username:'..msg.from.id)
  local database = db:get(signup)
	if not database then
		return true
	end
	return false
end
 local function exam_link()
  local recycle = exam_link()
  local link = math.random(0,999999999)
  local database = db:get('exam:'..link)
     if not database then
      return link
    end
     return false, recycle
    end

     local function check_rest(rest, examl)
      text = io.popen("cd teachers && cd "..examl..' && cat '..rest..'.html'):read('*all')
         if text then
          return true
        end
         return false
        end

--local function run(msg, matches)
--  if matches[1] == "getplug" then
--    local file = matches[2]
--    if is_sudo(msg) then
--      local receiver = get_receiver(msg)
--      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
--    end
--  end
--end
--
-- return {
--   patterns = {
--   "^[!/#](getplug) (.*)$"
--   },
--  run = run
-- }
-- function run(msg, matches)
-- text = io.popen("cd plugins && rm -rf  " .. matches[1]):read('*all')
--   return text
-- end
-- return {
--  patterns = {
--    '^[!#/]remplug (.*)$'
--  },
--  run = run,
--  moderated = true
-- }
--
-- local function run(msg, matches)
--   if is_sudo(msg) then
--   local text = matches[1]
--  local b = 1
--  while b ~= 0 do
--    text = text:trim()
--    text,b = text:gsub('^!+','')
--  end
--  local name = matches[2]
--  local file = io.open("./plugins/"..name..".lua", "w")
--  file:write(text)
--  file:flush()
--  file:close()
--   return "ðŸ”ºPlugin Has Been AddedðŸ”»"
-- end
-- end
-- re turn {
--    description = "a Usefull plugin for sudo !",
--   usage = "A plugins to add Another plugins to the server",
--   patterns = {
--     "^[!/#]addplug +(.+) (.*)$"
--  },
--  run = run
-- }

local function do_keyboard_teacherfirst()
    local keyboard = {}
    keyboard.inline_keyboard = {
      {{text = 'الان بررسی میکنم', callback_data ='!help'}},
    	{{text = 'بعدا بررسی میکنم', callback_data = '!teacheroff'}}
  }
    return keyboard
end
local function do_keyboard_coming()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = ' 🔙 ', callback_data = '!teacheron'}}
  }
    return keyboard
end
local function do_keyboard_examadded()
    local keyboard = {}
    keyboard.inline_keyboard = {
		{{text = ' 🔙 ', callback_data = '!exams'}}
  }
    return keyboard
end
local function do_keyboard_teacheron()
    local keyboard = {}
    keyboard.inline_keyboard = {
      {{text = 'حساب کاربری', callback_data ='!accounton'}},
    	{{text = '📝امتحانات', callback_data = '!exams'}},
		{{text = '✏️دانش آموزان✏️', callback_data = '!students'}},
	   {{text = '❓راهنما', callback_data = '!help'}}
  }
    return keyboard
end
local function do_keyboard_teacheroff()
    local keyboard = {}
    keyboard.inline_keyboard = {
      {{text = 'حساب کاربری', callback_data ='!accountoff'}},
    	{{text = '📝امتحانات', callback_data = '!notice'}},
		{{text = '✏️دانش آموزان✏️', callback_data = '!notice'}},
	   {{text = '❓راهنما', callback_data = '!help'}}
  }
    return keyboard
end
local function do_keyboard_exampanel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'طرح امتحان', callback_data = '!newexam'}},
			{{text = 'ویرایش امتحان', callback_data = '!editexam'}},
			{{text = 'لیست امتحانات', callback_data = '!examlist'}},
			{{text = '🔙', callback_data = '!teacheron'}}
    }
    return keyboard
end
local function do_keyboard_notice()
    local keyboard = {}
    keyboard.inline_keyboard = {
        {{text = 'حساب کاربری', callback_data = '!accountoff'}},
			{{text = ' 🔙 ', callback_data = '!teacheroff'}}
    }
    return keyboard
end
local function do_keyboard_accountoff()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ثبت نام', callback_data = '!signup'}},
			{{text = 'قبلا ثبت نام کرده اید؟', callback_data = '!login'}},
			{{text = '🔙', callback_data = '!teacheroff'}}
    }
    return keyboard
end
local function do_keyboard_signup()
    local keyboard = {}
    keyboard.inline_keyboard = {
			{{text = 'راهنما', url = 'https://jacki-team.ir/AmoozzBot/Help.html'}, --editable
	    }
    }
    return keyboard
end
local function do_keyboard_login()
    local keyboard = {}
    keyboard.inline_keyboard = {
			{{text = 'راهنما', url = 'https://jacki-team.ir/AmoozzBot/Help.html'}, --editable
     }
    }
    return keyboard
end
local function do_keyboard_loginid()
    local keyboard = {}
    keyboard.inline_keyboard = {
			{{text = 'تایید', callback_data = '!loginconfirm'}}
    }
    return keyboard
end
local function do_keyboard_login2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'بعدا وارد می شوید', callback_data = '!accountoff'}},
			{{text = 'دوباره امتحان میکنید', callback_data = '!login'}}
    }
    return keyboard
end
local function do_keyboard_login3()
    local keyboard = {}
    keyboard.inline_keyboard = {
      {{text = 'حساب کاربری', callback_data ='!accounton'}},
    	{{text = '📝امتحانات', callback_data = '!exams'}},
		{{text = '✏️دانش آموزان✏️', callback_data = '!students'}},
	   {{text = '❓راهنما', callback_data = '!help'}}
  }
    return keyboard
end
local function do_keyboard_chargenow()
    local keyboard = {}
    keyboard.inline_keyboard = {
        {{text = 'مشاهده تعرفه ها', callback_data = '!charge'}},
    }
    return keyboard
end
local function do_keyboard_charge()
    local keyboard = {}
    keyboard.inline_keyboard = {
        {{text = '۵۰۰۰۰ ریال', url = 'https://www.payping.ir/d/cABg'}},  --editable
        {{text = '۱۰۰۰۰۰ ریال', url = 'https://www.payping.ir/d/jbfw'}},  --editable
        {{text = '۲۰۰۰۰۰ ریال', url = 'https://www.payping.ir/d/RM1z'}},  --editable
			{{text = '۵۰۰۰۰۰ ریال', url = 'https://www.payping.ir/d/VFdO'}},  --editable
         {{text = 'ارسال کد شارژ', callback_data = '!chargecode'}},
         {{text = '🔙', callback_data = '!accounton'}}
    }
    return keyboard
end
local function do_keyboard_chargecode()
    local keyboard = {}
    keyboard.inline_keyboard = {
        {{text = 'ربات شارژر', url = 'https://t.me/JT_Charger_bot?start'}}, --editable
			{{text = '🔙', callback_data = '!accounton'}}
    }
    return keyboard
end
local function do_keyboard_examch()
    local keyboard = {}
    keyboard.inline_keyboard = {
        {{text = 'تایید', callback_data = '!sureexam'}},
        {{text = 'لغو', callback_data = '!exams'}}
    }
    return keyboard
end
local action = function(msg, blocks, ln)
local username = 'username:'..msg.from.id
local db1 = db:get(username)
local password = 'password:'..msg.from.id
local db2 = db:get(password)
local dbcheck = db:get(db1)
local examlink = exam_link()
local dblogin = db:get('login:'..msg.from.id)
local dbexam1 = db:get('examname:new:'..msg.from.id)
local dbexam2 = db:get('exammaker:new:'..msg.from.id)
local dbexam3 = db:get('new:1:head:'..msg.from.id)
local dbexam4 = db:get('new:2:head:'..msg.from.id)
local dbexam5 = db:get('new:3:head:'..msg.from.id)
local dbexam6 = db:get('new:4:head:'..msg.from.id)
local dbexam7 = db:get('new:5:head:'..msg.from.id)
local dbexam8 = db:get('new:6:head:'..msg.from.id)
local dbexam9 = db:get('new:7:head:'..msg.from.id)
local dbexam10 = db:get('new:8:head:'..msg.from.id)
local dbexam11 = db:get('new:9:head:'..msg.from.id)
local dbexam12 = db:get('new:10:head:'..msg.from.id)
local dbetime = db:get('examtime:new:'..msg.from.id)
local ans1 = db:get('new:1:ans:'..msg.from.id)
local ans2 = db:get('new:2:ans:'..msg.from.id)
local ans3 = db:get('new:3:ans:'..msg.from.id)
local ans4 = db:get('new:4:ans:'..msg.from.id)
local ans5 = db:get('new:5:ans:'..msg.from.id)
local ans6 = db:get('new:6:ans:'..msg.from.id)
local ans7 = db:get('new:7:ans:'..msg.from.id)
local ans8 = db:get('new:8:ans:'..msg.from.id)
local ans9 = db:get('new:9:ans:'..msg.from.id)
local ans10 = db:get('new:10:ans:'..msg.from.id)
local cans =  db:get('new:cor')
local linkexam = "https://telegram.me/AmoozBot?start="..examlink
 local example = [[ورودی:
a = "گزینه اول"
b = "گزینه دوم"
c = "گزینه سوم"
d = "گزینه چهارم"
نمونه:
a = "چنگیز خان"
b = "نادر شاه"
...]]
 local example2 = [[ورودی:
a = "شماره گزینه صحیح تست 1"
b = "شماره گزینه صحیح تست 2"
c = "شماره گزینه صحیح تست 3"
d = "شماره گزینه صحیح تست 4"
e = ...
f = ...
g = ...
h = ...
i = ...
j = ...
نمونه:
a = "3"
یعنی پاسخ تست 1 میشود گزینه 3]]
          --   if blocks[1] and msg.chat.type == 'private' then
          --   local msg_id = msg.message_id
          --   local chat = msg.chat.id
              --   local keyboard = do_keyboard_teacherfirst()
              --   local text = [[*بسته شد*]]
              --   api.editMessageText(chat, msg_id, text, keyboard, true)
              --    end
  if blocks[1] == 'see' and blocks[2] and blocks[3] and msg.chat.type == 'private' then
  local rest = blocks[3]
  local examl = blocks[2]
  if check_rest(rest, examl) then
  local chat_id = msg.from.id
  local famili = db:get(blocks[3]..':lname')
  local naam = db:get(blocks[3]..':fname')
  local fullname = naam..' '..famili
  local message = "کارنامه "..fullname..' برای شما ارسال شد'
  api.sendMessage(chat_id, mesaage, true)
  sendDocument(chat_id,"./teachers/"..db1.."/"..blocks[2].."/"..blocks[3]..".html")
  end
  api.sendMessage(msg.from.id, 'شناسه کاربری و یا کد امتحان ارسال شده نادرست است', true)
  end
    if blocks[1] and db1 == "waiting for choose" and msg.chat.type == 'private' and not blocks[1]:find(":") then
        if is_not_used() then
            local message = "نام کاربری انتخاب شد! گذرواژه مورد نظر را ارسال نمایید"
            local keyboard = do_keyboard_private()
            db:set(username,blocks[1])
            db:set(password,'waiting for choose')
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
          local message = "این نام کاربری قبلا انتخاب شده است، لطفا نام کاربری دیگری را امتحان کنید"
          local keyboard = do_keyboard_login()
          api.sendKeyboard(msg.from.id, message, keyboard, true)
          end
  if blocks[1] and db2 == "waiting for choose" and msg.chat.type == 'private' then
            local message = "گذرواژه انتخاب شد و مراحل اولیه ثبت نام نیز انجام شد!\n به ازای برگزاری و طراحی هر امتحان میبایستی مبلغ ۱۰۰۰۰ ریال را پرداخت کنید که هم اکنون نیز میتوانید حساب کاربری خود را به مقدار دلخواه شارژ کنید." --editable
            local keyboard = do_keyboard_chargenow()
            db:set(db1,blocks[1])
            db:set(db1..':lastid',msg.from.id)
            db:set(db1..':charge','0')
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
  if blocks[1] and db1 == "waiting for send" and msg.chat.type == 'private' then
                  local message = "اکنون گذرواژه حساب خود را ارسال کنید"
                  local keyboard = do_keyboard_login()
                  db:set('username:'..msg.from.id,blocks[1])
                  db:set('password:'..msg.from.id,'waiting for send')
                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                  end
              if blocks[1] and db2 == "waiting for send" and msg.chat.type == 'private' then
              local message = "اطلاعات وارد شده:\nUsername : "..db1.."\nPassword : "..db2
              local keyboard = do_keyboard_loginid()
              db:set('password:'..msg.from.id,blocks[1])
              api.sendKeyboard(msg.from.id, message, keyboard, true)
              end
      if blocks[1] and dbexam1 == 'w8' and msg.chat.type == 'private' then
              local message = "عنوان امتحان انتخاب شد\nاکنون مدت زمان امتحان را به دقیقه و ارقام لاتین ارسال نمایید"
              local keyboard = do_keyboard_newexam()
              db:set('examtime:new:'..msg.from.id,'w8')
              db:set('examname:new:'..msg.from.id,blocks[1])
              api.sendKeyboard(msg.from.id, message, keyboard, true)
              end
      if blocks[1] and dbetime == 'w8' and msg.chat.type == 'private' then
              local message = "مدت زمان امتحان تنظیم شد\nاکنون نام نویسنده(نام شما) را ارسال کنید"
              local keyboard = do_keyboard_newexam()
              db:set('exammaker:new:'..msg.from.id,'w8')
              db:set('examtime:new:'..msg.from.id,blocks[1])
              api.sendKeyboard(msg.from.id, message, keyboard, true)
              end
      if blocks[1] and dbexam2 == 'w8' and msg.chat.type == 'private' then
              local message = "نام نویسنده انتخاب شد\nصورت سوال تست شماره *1* را ارسال کنید"
              local keyboard = do_keyboard_newexam()
              db:set('new:1:head:'..msg.from.id,'w8')
              db:set('exammaker:new:'..msg.from.id,block[1])
              api.sendKeyboard(msg.from.id, message, keyboard, true)
              end
  if blocks[1] and dbexam3 == 'w8' and msg.chat.type == 'private' then
          local message = "صورت سوال *1* تنظیم شد\nصورت سوال تست شماره *2* را ارسال کنید"
          local keyboard = do_keyboard_newexam()
          db:set('new:2:head:'..msg.from.id,'w8')
          db:set('new:1:head:'..msg.from.id,blocks[1])
          api.sendKeyboard(msg.from.id, message, keyboard, true)
          end
          if blocks[1] and dbexam4 == 'w8' and msg.chat.type == 'private' then
                  local message = "صورت سوال *2* تنظیم شد\nصورت سوال تست شماره *3* را ارسال کنید"
                  local keyboard = do_keyboard_newexam()
                  db:set('new:3:head:'..msg.from.id,'w8')
                  db:set('new:2:head:'..msg.from.id,blocks[1])
                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                  end
                  if blocks[1] and dbexam5 == 'w8' and msg.chat.type == 'private' then
                          local message = "صورت سوال *3* تنظیم شد\nصورت سوال تست شماره *4* را ارسال کنید"
                          local keyboard = do_keyboard_newexam()
                          db:set('new:4:head:'..msg.from.id,'w8')
                          db:set('new:3:head:'..msg.from.id,blocks[1])
                          api.sendKeyboard(msg.from.id, message, keyboard, true)
                          end
                          if blocks[1] and dbexam6 == 'w8' and msg.chat.type == 'private' then
                                  local message = "صورت سوال *4* تنظیم شد\nصورت سوال تست شماره *5* را ارسال کنید"
                                  local keyboard = do_keyboard_newexam()
                                  db:set('new:5:head:'..msg.from.id,'w8')
                                  db:set('new:4:head:'..msg.from.id,blocks[1])
                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                  end
                                  if blocks[1] and dbexam7 == 'w8' and msg.chat.type == 'private' then
                                          local message = "صورت سوال *5* تنظیم شد\nصورت سوال تست شماره *6* را ارسال کنید"
                                          local keyboard = do_keyboard_newexam()
                                          db:set('new:6:head:'..msg.from.id,'w8')
                                          db:set('new:5:head:'..msg.from.id,blocks[1])
                                          api.sendKeyboard(msg.from.id, message, keyboard, true)
                                          end
                                          if blocks[1] and dbexam8 == 'w8' and msg.chat.type == 'private' then
                                                  local message = "صورت سوال *6* تنظیم شد\nصورت سوال تست شماره *7* را ارسال کنید"
                                                  local keyboard = do_keyboard_newexam()
                                                  db:set('new:7:head:'..msg.from.id,'w8')
                                                  db:set('new:6:head:'..msg.from.id,blocks[1])
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                  end
                                                  if blocks[1] and dbexam9 == 'w8' and msg.chat.type == 'private' then
                                                          local message = "صورت سوال *7* تنظیم شد\nصورت سوال تست شماره *8* را ارسال کنید"
                                                          local keyboard = do_keyboard_newexam()
                                                          db:set('new:8:head:'..msg.from.id,'w8')
                                                          db:set('new:7:head:'..msg.from.id,blocks[1])
                                                          api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                          end
                                                          if blocks[1] and dbexam10 == 'w8' and msg.chat.type == 'private' then
                                                                  local message = "صورت سوال *8* تنظیم شد\nصورت سوال تست شماره *9* را ارسال کنید"
                                                                  local keyboard = do_keyboard_newexam()
                                                                  db:set('new:9:head:'..msg.from.id,'w8')
                                                                  db:set('new:8:head:'..msg.from.id,blocks[1])
                                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                  end
                                                                  if blocks[1] and dbexam11 == 'w8' and msg.chat.type == 'private' then
                                                                          local message = "صورت سوال *9* تنظیم شد\nصورت سوال تست شماره *10* را ارسال کنید"
                                                                          local keyboard = do_keyboard_newexam()
                                                                          db:set('new:10:head:'..msg.from.id,'w8')
                                                                          db:set('new:9:head:'..msg.from.id,blocks[1])
                                                                          api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                          end
                                                  if blocks[1] and dbexam12 == 'w8' and msg.chat.type == 'private' then
                                                          local message = "صورت سوال *10* تنظیم شد\nاکنون چهار پاسخ تست *1* را مانند نمونه:\n"..example.."\nارسال نمایید"
                                                          local keyboard = do_keyboard_newexam()
                                                          db:set('new:10:head:'..msg.from.id,block[1])
                                                          db:set('new:1:ans:'..msg.from.id,'w8')
                                                          api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                          end
                                          if blocks[1] and blocks[2] and ans1 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *1* تنظیم شد\nگزینه های تست شماره *2* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new1:ans:'..msg.from.id,full)
					          db:set('new2:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans2 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *2* تنظیم شد\nگزینه های تست شماره *3* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new2:ans:'..msg.from.id,full)
					          db:set('new3:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans3 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *3* تنظیم شد\nگزینه های تست شماره *4* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new3:ans:'..msg.from.id,full)
					          db:set('new4:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans4 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *4* تنظیم شد\nگزینه های تست شماره *5* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new4:ans:'..msg.from.id,full)
					          db:set('new5:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans5 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *5* تنظیم شد\nگزینه های تست شماره *6* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new5:ans:'..msg.from.id,full)
					          db:set('new6:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans6 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *6* تنظیم شد\nگزینه های تست شماره *7* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new6:ans:'..msg.from.id,full)
					          db:set('new7:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans7 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *7* تنظیم شد\nگزینه های تست شماره *8* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new7:ans:'..msg.from.id,full)
					          db:set('new8:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans8 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *8* تنظیم شد\nگزینه های تست شماره *9* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new8:ans:'..msg.from.id,full)
					          db:set('new9:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans9 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                       local message = "گزینه های تست شماره *9* تنظیم شد\nگزینه های تست شماره *10* را مانند فرم قبل ارسال نمایید"
                                                       local keyboard = do_keyboard_newexam()
                                                  db:set('new9:ans:'..msg.from.id,full)
					          db:set('new10:ans:'..msg.from.id,'w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                                          if blocks[1] and blocks[2] and ans10 == 'w8' and msg.chat.type == 'private' then
                     					  if blocks[1] == 'a = ' and blocks[2]:find("d = ") then
			                        local full = blocks[1]..''..blocks[2]
                                                local message = "گزینه های تست شماره *10* تنظیم شد\n"..example2.."\nاکنون پاسخ های درست تست ها را مانند نمونه بالا ارسال نمایید"
	                         		local keyboard = do_keyboard_newexam()
                                                  db:set('new10:ans:'..msg.from.id,full)
	 					  db:set('new:cor','w8')
                                                  api.sendKeyboard(msg.from.id, message, keyboard, true)
                                                                     end
                                        local message = "خطا!!\nدوباره گزینه ها را مانند نمونه ارسال نمایید"
   					local keyboard = do_keyboard_newexam()
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
                 if blocks[1] and blocks[2] and cans == 'w8' and msg.chat.type == 'private' then
          if blocks[1] == 'a = ' and blocks[2]:find("j = ")then
			local full = blocks[1]..''..blocks[2]
                    local message = "امتحان با موفقیت ثبت شد\nلینک : "..linkexam.."\nکد : "..examlink.."\nبا اشتراک گذاری لینک یا کد بالا، افراد میتوانند امتحان بدهند و کارنامه آن ها برای شما نیز ارسال میگردد"
                    local keyboard = do_keyboard_examadded()
			  db:set('new:cor',full)
                        api.sendKeyboard(msg.from.id, message, keyboard, true)
	                  local text = 'return { \n exam_time = \"'..dbetime..'\",\n exam_name = \"'..dbexam1..'\",\n exam_owner = \"'..db1..'\",\n exam_maker = \"'..dbexam2..'\",\n exam_id = \"'..examlink..'\",\n exam_link = \"'..linkexam..'\",\n q1 = \"'..dbexam3..'\",\n q2 = \"'..dbexam4..'\",\n q3 = \"'..dbexam5..'\",\n q4 = \"'..dbexam6..'\",\n q5 = \"'..dbexam7..'\",\n q6 = \"'..dbexam8..'\",\n q7 = \"'..dbexam9..'\",\n q8 = \"'..dbexam10..'\",\n q9 = \"'..dbexam11..'\",\n q10 = \"'..dbexam12..'\",\n a1 = { \n '..ans1..' \n },\n a2 = { \n '..ans2..' \n },\n a3 = { \n '..ans3..' \n },\n a4 = { \n '..ans4..' \n },\n a5 = { \n '..ans5..' \n },\n a6 = { \n '..ans6..' \n },\n a7 = { \n '..ans7..' \n },\n a8 = { \n '..ans8..' \n },\n a9 = { \n '..ans9..' \n },\n a10 = { \n '..ans10..' \n },\n cans = dofile(\"./exams/'..examlink..'c.lua\") \n }'
   local file = io.open("./exams/"..examlink..".lua", "w")
	   file:write(text)
	   file:flush()
	   file:close()
     local text2 = 'return { \n '..full..' \n }'
     local file2 = io.open("./exams/"..examlink.."c.lua", "w")
      file2:write(text2)
      file2:flush()
      file2:close()
	  db:set('exam:'..examlink,'true')
                   end
          local message = "خطا!!\nدوباره گزینه های درست را مانند نمونه ارسال نمایید"
   	local keyboard = do_keyboard_newexam()
      api.sendKeyboard(msg.from.id, message, keyboard, true)
         end
        return
        end
local action = function(msg, blocks, ln)
local msg_id = msg.message_id
local chat = msg.chat.id
local query = blocks[1]
local db1 = db:get('username:'..msg.from.id)
local db2 = db:get('password:'..msg.from.id)
local db3 = db:get(db1)
local text
    if msg.cb then
	if query == 'teach1' or 'teach2' then
			db:set(msg.from.id..":type","t")
		local keyboard = do_keyboard_teacherfirst()
		local text = [[جهت آشنایی بیشتر با ربات و کاربرد آن لطفا راهنما را بررسی فرمایید]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
if query == 'notice' then
		local keyboard = do_keyboard_notice()
		local text = [[شما دارای حساب کاربری نیستید!]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 	if query == 'teacheroff' then
		local keyboard = do_keyboard_teacheroff()
		local text = [[_عملیات مورد نظر را انتخاب نمایید_]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 	if query == 'accountoff' then
		local keyboard = do_keyboard_accountoff()
		local text = [[اگر دارای حساب کاربری نیستید و میخواهید ثبت نام کنید، گزینه اول را انتخاب کنید و اما اگر حساب کاربری قبلا ساخته اید و میخواهید وارد حساب خود شوید، گزینه دوم را انتخاب کنید:]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	if query == 'signup' then
		local keyboard = do_keyboard_signup()
		local text = [[*نام کاربری مورد نظر خود را ارسال کنید:*]]
db:set('username:'..msg.from.id,'waiting for choose')
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'login' then
		local keyboard = do_keyboard_login()
		local text = [[*نام کاربری خود را ارسال کنید:*]]
    db:set('username:'..msg.from.id,'waiting for send')
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'loginconfirm' then
if db2 == db3 then
		local keyboard = do_keyboard_login3()
		local text = [[*شما وارد شدید!*\nعملیات مورد نظر را انتخاب نمایید]]
    db:set(db1..':lastid',msg.from.id)
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
    local keyboard = do_keyboard_login2()
    local text = [[مشخصات وارد شده نادرست است!]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'charge' then
		local keyboard = do_keyboard_charge()
		local text = [[مبلغ مورد نظر را انتخاب کنید و پس از واریز، رسید و شناسه حساب کاربری (برای بدست آوردن شناسه حساب کاربری خود به کلید "حساب کاربری" مراجعه کنید) خود را در قسمت -ارسال کد شارژ- ارسال کنید و حداکثر پس از دو روز حسابتان شارژ خواهد شد]]
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'chargecode' then
		local keyboard = do_keyboard_chargecode()
		local text = [[رسید و شناسه کاربری خود را برای ربات زیر ارسال کنید و حداکثر تا 48 ساعت بعد، حساب شما شارژ خواهد شد]] --editable
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'exams' then
    local keyboard = do_keyboard_exampanel()
    local text = [[عملیات مورد  نظر را انتخاب کنید]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'newexam' then
		local keyboard = do_keyboard_examch()
		local text = [[برای طرح و برگزاری هر امتحان *10000* ریال از حساب کاربری شما کسر خواهد شد\nآیا ادامه میدهید؟]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'sureexam' then
		local keyboard = do_keyboard_newexam()
	        local chn = db:get(db1..':charge')
	        local buy = tonumber(chn) - 1000
		local text = [[عنوان امتحان را ارسال کنید]]
	 if chn then
		db:set(db1..':charge',buy2)
                db:set('examname:new:'..msg.from.id,'w8')
	  api.editMessageText(chat, msg_id, text, keyboard, true)
    end
    local text = [[شارژ حساب شما کافی نیست، لطفا حساب خود را شارژ نمایید]]
    local keyboard = do_keyboard_charge
	  api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'editexam' then
		local keyboard = do_keyboard_coming()
		local text = [[در نسخه های بعدی فعال میشود...]] --editable
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'students' then
		local keyboard = do_keyboard_coming()
		local text = [[در نسخه های بعدی فعال میشود...]] --editable
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'examlist' then
		local keyboard = do_keyboard_coming()
		local text = [[در نسخه های بعدی فعال میشود...]] --editable
		api.editMessageText(chat, msg_id, text, keyboard, true)
    end
	end
	end
return {
  action = action,
triggers = {
      '^(.*)$',
      '^(a = )(.*)$',
      '^/(start)$',
      '^/(see) (.*) (.*)$',
      '^###cb:!(teach1)',
      '^###cb:!(teach2)',
      '^###cb:!(help)',
      '^###cb:!(teacheroff)',
      '^###cb:!(teacheron)',
      '^###cb:!(exams)',
      '^###cb:!(notice)',
      '^###cb:!(accountoff)',
      '^###cb:!(accounton)',
      '^###cb:!(students)',
      '^###cb:!(newexam)',
      '^###cb:!(examlist)',
      '^###cb:!(editexam)',
      '^###cb:!(signup)',
      '^###cb:!(login)',
      '^###cb:!(loginconfirm)',
      '^###cb:!(charge)',
      '^###cb:!(chargecode)',
      '^###cb:!(sureexam)'
	}
}