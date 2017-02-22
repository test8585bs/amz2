-- start needs

local action = function(msg, blocks, ln)
local vb1 = msg.from.id..':new:code'
local examdb = db:get(vb1)
local vb2 = './exams/'..examdb..'.lua'
local exam = dofile(vb2)
local vb3 = './exams/'..examdb..'c.lua'
local examc = dofile(vb3)
local title = exam.exam_name
local writer = exam.exam_maker
local dtime = exam.exam_time
local owner = exam.exam_owner
local etime = db:get(msg.from.id..':new:time')
local etime2 = db:ttl(msg.from.id..':new:time')
local nam = db:get(msg.from.id..':fname')
local famil = db:get(msg.from.id..':lname')
local class = db:get(msg.from.id..':lvl')
local ownerid = db:get(owner..':lastid')

-- end needs
-- start internal functons

local function check_link(idd, link)
local vb4 = idd..':new:code'
local examdb = db:get(vb4)
local vb5 = idd..":"..examdb..":did"
local bank = db:get(vb5)
local vb6 = 'exam:'..examdb
 slink = db:get(vb6)
  if slink and not bank then
   return true
    end
     return false
end
   local function res_q1(usr2)
    local vb7 = usr2..':new:1'
        local test1 = db:get(vb7)
         if test1 then
          return 1
          end
          return 0
          end
     local function res_q2(usr2)
      local vb8 = usr2..':new:2'
          local test2 = db:get(vb8)
           if test2 then
            return 1
            end
            return 0
            end

       local function res_q3(usr2)
        local vb9 = usr2..':new:3'
            local test3 = db:get(vb9)
             if test3 then
              return 1
              end
              return 0
              end

         local function res_q4(usr2)
          local vb10 = usr2..':new:4'
              local test4 = db:get(vb10)
               if test4 then
                return 1
                end
                return 0
                end

           local function res_q5(usr2)
            local vb11 = usr2..':new:5'
                local test5 = db:get(vb11)
                 if test5 then
                  return 1
                  end
                  return 0
                  end

             local function res_q6(usr2)
              local vb12 = usr2..':new:6'
                  local test6 = db:get(vb12)
                   if test6 then
                    return 1
                    end
                    return 0
                    end

               local function res_q7(usr2)
                local vb13 = usr2..':new:7'
                    local test7 = db:get(vb13)
                     if test7 then
                      return 1
                      end
                      return 0
                      end

                 local function res_q8(usr2)
                  local vb14 = usr2..':new:8'
                      local test8 = db:get(vb14)
                       if test8 then
                        return 1
                        end
                        return 0
                        end

                     local function res_q9(usr2)
                      local vb15 = usr2..':new:9'
                          local test9 = db:get(vb15)
                           if test9 then
                            return 1
                            end
                            return 0
                            end

                       local function res_q10(usr2)
                        local vb16 = usr2..':new:10'
                            local test10 = db:get(vb16)
                             if test10 then
                              return 1
                              end
                              return 0
                              end
                               local function set_result(link, user)
                               local vb17 = user..':new:1:res'
                               local vb18 = user..':new:2:res'
                               local vb19 = user..'new:3:res'
                               local vb20 = user..'new:4:res'
                               local vb21 = user..':new:5:res'
                               local vb22 = user..':new:6:res'
                               local vb23 = user..':new:7:res'
                               local vb24 = user..':new:8:res'
                               local vb25 = user..':new:9:res'
                               local vb26 = user..':new:10:res'
                              local you1 = db:get(vb17)
                              local you2 = db:get(vb18)
                              local you3= db:get(vb19)
                              local you4 = db:get(vb20)
                              local you5 = db:get(vb21)
                              local you6 = db:get(vb22)
                              local you7 = db:get(vb23)
                              local you8 = db:get(vb24)
                              local you9 = db:get(vb25)
                              local you10 = db:get(vb26)
                              local c1 = examc.a
                              local c2 = examc.b
                              local c3 = examc.c
                              local c4 = examc.d
                              local c5 = examc.e
                              local c6 = examc.f
                              local c7 = examc.g
                              local c8 = examc.h
                              local c9 = examc.i
                              local c10 = examc.j
                              local usr = user
                              local corr = get_corr(usr)
                              local prob = 10 - tonumber(corr)
                              local darsad = tonumber(corr) * 10
                              local rest = '<html><head><title>کار نامه امتحان('..link..')</title></head><body><center><font size=6 face=tahoma color=#0000ff><b>کارنامه</b></font><br><br><center><font size=3 face=tahoma color=#000000><table width=330 border=5 cellSpacing=1 cellPadding=10><tr><td width=60 align=center valign=middle><b>گزینه درست</b></td><td width=100 align=center valign=middle><b>پاسخ شما</b></td><td width=60 align=center valign=middle><b>شماره تست</b></td></tr><tr><td align=center>'..c1..'</td><td align=center>گزینه '..you1..'</td><td align=center>تست 1</td></tr><tr><td align=center>'..c2..'</td><td align=center>گزینه '..you2..'</td><td align=center>تست 2</td></tr><tr><td align=center>'..c3..'</td><td align=center>گزینه '..you3..'</td><td align=center>تست 3</td></tr><tr><td align=center>'..c4..'</td><td align=center>گزینه '..you4..'</td><td align=center>تست 4</td></tr><tr><td align=center>'..c5..'</td><td align=center>گزینه '..you5..'</td><td align=center>تست 5</td></tr><tr><td align=center>'..c6..'</td><td align=center>گزینه '..you6..'</td><td align=center>تست 6</td></tr><tr><td align=center>'..c7..'</td><td align=center>گزینه '..you7..'</td><td align=center>تست 7</td></tr><tr><td align=center>'..c8..'</td><td align=center>گزینه '..you8..'</td><td align=center>تست 8</td></tr><tr><td align=center>'..c9..'</td><td align=center>گزینه '..you9..'</td><td align=center>تست 9</td></tr><tr><td align=center>'..c10..'</td><td align=center>گزینه '..you10..'</td><td align=center>تست 10</td></tr><center><font size=3 face=tahoma color=#000000><table width=200 border=1 cellSpacing=10 cellPadding=10><tr><td width=50 align=center valign=middle><b>پاسخ های درست</b></td><td width=50 align=center valign=middle><b>پاسخ های غلط</b></td><td width=60 align=center valign=middle><b>میانگین</b></td></tr><tr><td align=center>'..darsad..'</td><td align=center>'..prob..'</td><td align=center>'..corr..'</td></tr></table><br><br></font><font size=3 face=tahoma><b><a href=https://t.me/AmoozzBot target=_blank>آموزبات</a><br><a href=https://jacki-team.ir/ target=_blank>Jacki Team Co.</a></b></center></font><br></body></html>'
                               local file1 = io.open("./students/"..user.."/result/"..link..".html", "w")
                                file1:write(rest)
                                file1:flush()
                                file1:close()
                              local file2 = io.open("./teachers/"..owner.."/"..link.."/"..user..".html", "w")
                                  file2:write(rest)
                                  file2:flush()
                                  file2:close()
                                   end

local function get_corr(usr)
    local usr2 = usr
    local corr1 = res_q1(usr2)
    local corr2 = res_q2(usr2)
    local corr3 = res_q3(usr2)
    local corr4 = res_q4(usr2)
    local corr5 = res_q5(usr2)
    local corr6 = res_q6(usr2)
    local corr7 = res_q7(usr2)
    local corr8 = res_q8(usr2)
    local corr9 = res_q9(usr2)
    local corr10 = res_q10(usr2)
 local allcorr = tonumer(corr1) + tonumer(corr2) + tonumer(corr3) + tonumer(corr4) + tonumer(corr5) + tonumer(corr6) + tonumer(corr7) + tonumer(corr8) + tonumer(corr9) + tonumer(corr10)
    return tonumber(allcorr)
    end

-- end internal function
-- mains
local function do_keyboard_spanel()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel3()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel4()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel5()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel6()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel7()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel8()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_spanel9()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ورود به امتحان', callback_data = '!doexam'}},
			{{text = 'مشخصات شما', callback_data = '!card'}},
			{{text = 'راهنما', callback_data = '!help'}}
    }
    return keyboard
end
local function do_keyboard_end()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end2()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end3()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end4()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end5()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end6()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end7()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end8()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end9()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end10()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end11()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end12()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end13()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end14()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end15()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end16()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end17()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end18()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end19()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end20()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end21()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end22()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end23()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end24()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end25()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end26()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end27()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end28()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end29()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end30()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_end31()
   local keyboard = {}
   keyboard.inline_keyboard = {
     {{text = 'اتمام امتحان', callback_data = '!end'}}
   }
   return keyboard
end
local function do_keyboard_card()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ویرایش مشخصات', callback_data = '!editc'}},
			{{text = '🔙', callback_data = '!spanel'}}
    }
    return keyboard
end
local function do_keyboard_doexam()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ویرایش مشخصات', callback_data = '!editc'}},
			{{text = '🔙', callback_data = '!spanel'}}
    }
    return keyboard
end
local function do_keyboard_doexam2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ویرایش مشخصات', callback_data = '!editc'}},
			{{text = '🔙', callback_data = '!spanel'}}
    }
    return keyboard
end
local function do_keyboard_doexam3()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'ویرایش مشخصات', callback_data = '!editc'}},
			{{text = '🔙', callback_data = '!spanel'}}
    }
    return keyboard
end
local function do_keyboard_youexam()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'خیر', callback_data = '!spanel'}},
			{{text = 'بله', callback_data = '!yess'}}
    }
    return keyboard
end
local function do_keyboard_youexam2()
    local keyboard = {}
    keyboard.inline_keyboard = {
    	{{text = 'خیر', callback_data = '!spanel'}},
			{{text = 'بله', callback_data = '!yess'}}
    }
    return keyboard
end
-- exam keys
local function do_keyboard_q1()
         local keyboard = {}
         keyboard.inline_keyboard = {
         	{{text = exam.a1.a, callback_data = '!a1_1'}},
          	{{text = exam.a1.b, callback_data = '!a1_2'}},
            	{{text = exam.a1.c, callback_data = '!a1_3'}},
     		      	{{text = exam.a1.d, callback_data = '!a1_4'}}
         }
         return keyboard
     end
     local function do_keyboard_q2()
              local keyboard = {}
              keyboard.inline_keyboard = {
              	{{text = exam.a2.a, callback_data = '!a2_1'}},
                	{{text = exam.a2.b, callback_data = '!a2_2'}},
                  	{{text = exam.a2.c, callback_data = '!a2_3'}},
          		      	{{text = exam.a2.d, callback_data = '!a2_4'}}
              }
              return keyboard
          end
          local function do_keyboard_q3()
                   local keyboard = {}
                   keyboard.inline_keyboard = {
                   	{{text = exam.a3.a, callback_data = '!a3_1'}},
                    	{{text = exam.a3.b, callback_data = '!a3_2'}},
                      	{{text = exam.a3.c, callback_data = '!a3_3'}},
               		      	{{text = exam.a3.d, callback_data = '!a3_4'}}
                   }
                   return keyboard
               end
               local function do_keyboard_q4()
                        local keyboard = {}
                        keyboard.inline_keyboard = {
                        	{{text = exam.a4.a, callback_data = '!a4_1'}},
                         	{{text = exam.a4.b, callback_data = '!a4_2'}},
                           	{{text = exam.a4.c, callback_data = '!a4_3'}},
                    		      	{{text = exam.a4.d, callback_data = '!a4_4'}}
                        }
                        return keyboard
                    end
                    local function do_keyboard_q5()
                             local keyboard = {}
                             keyboard.inline_keyboard = {
                             	{{text = exam.a5.a, callback_data = '!a5_1'}},
                              	{{text = exam.a5.b, callback_data = '!a5_2'}},
                                	{{text = exam.a5.c, callback_data = '!a5_3'}},
                         		      	{{text = exam.a5.d, callback_data = '!a5_4'}}
                             }
                             return keyboard
                         end
                         local function do_keyboard_q6()
                                  local keyboard = {}
                                  keyboard.inline_keyboard = {
                                  	{{text = exam.a6.a, callback_data = '!a6_1'}},
                                   	{{text = exam.a6.b, callback_data = '!a6_2'}},
                                     	{{text = exam.a6.c, callback_data = '!a6_3'}},
                              		      	{{text = exam.a6.d, callback_data = '!a6_4'}}
                                  }
                                  return keyboard
                              end
                              local function do_keyboard_q7()
                                       local keyboard = {}
                                       keyboard.inline_keyboard = {
                                       	{{text = exam.a7.a, callback_data = '!a7_1'}},
                                        	{{text = exam.a7.b, callback_data = '!a7_2'}},
                                          	{{text = exam.a7.c, callback_data = '!a7_3'}},
                                   		      	{{text = exam.a7.d, callback_data = '!a7_4'}}
                                       }
                                       return keyboard
                                   end
                                   local function do_keyboard_q8()
                                            local keyboard = {}
                                            keyboard.inline_keyboard = {
                                            	{{text = exam.a8.a, callback_data = '!a8_1'}},
                                             	{{text = exam.a8.b, callback_data = '!a8_2'}},
                                               	{{text = exam.a8.c, callback_data = '!a8_3'}},
                                        		      	{{text = exam.a8.d, callback_data = '!a8_4'}}
                                            }
                                            return keyboard
                                        end
                                        local function do_keyboard_q9()
                                                 local keyboard = {}
                                                 keyboard.inline_keyboard = {
                                                 	{{text = exam.a9.a, callback_data = '!a9_1'}},
                                                  	{{text = exam.a9.b, callback_data = '!a9_2'}},
                                                    	{{text = exam.a9.c, callback_data = '!a9_3'}},
                                             		      	{{text = exam.a9.d, callback_data = '!a9_4'}}
                                                 }
                                                 return keyboard
                                             end
                                             local function do_keyboard_q10()
                                                      local keyboard = {}
                                                      keyboard.inline_keyboard = {
                                                      	{{text = exam.a10.a, callback_data = '!a10_1'}},
                                                       	{{text = exam.a10.b, callback_data = '!a10_2'}},
                                                         	{{text = exam.a10.c, callback_data = '!a10_3'}},
                                                  		      	{{text = exam.a10.d, callback_data = '!a10_4'}}
                                                      }
                                                      return keyboard
                                                  end
          local function do_keyboard_carname()
                local keyboard = {}
                keyboard.inline_keyboard = {
                	{{text = 'دریافت کارنامه', callback_data = '!getresult'}},
                  {{text = '🔙', callback_data = '!spanel2'}}
                }
                return keyboard
            end
  local function do_keyboard_gres()
  local keyboard = {}
  keyboard.inline_keyboard = {
  {{text = '🔙', callback_data = '!spanel'}}
  }
  return keyboard
  end
local action = function(msg, blocks, ln)
local vb27 = msg.from.id..':fname'
local vb28 = msg.from.id..':lname'
local vb29 = msg.from.id..':new:code'
local vb30 = 'start:'..msg.from.id
local vb31 = 'bot:general:users'
local vb32 = msg.from.id..':type'
local db1 = db:get(vb27)
local db2 = db:get(vb28)
local db3 = db:get(vb29)
local db10 = db:get(vb30)
local db11 = db:get(vb31)
local db12 = db:get(vb32)
local stats = tonumber(db11) + 1
    if blocks[1] and db1 == "w8" and msg.chat.type == 'private' then
            local message = "نام شما تنظیم شد، اکنون نام خانوادگی خود را ارسال نمایید"
            local vb33 = msg.from.id..'fname'
            local vb34 = blocks[1]
            local vb35 = msg.from.id..':lname'
            local vb36 = 'w8'
	    db:set(vb33,vb34)
	    db:set(vb35,vb36)
           api.sendMessage(msg.from.id, message, true)
            end
        return
    end
    if blocks[1] and db2 == "w8" and msg.chat.type == 'private' then
            local message = "*نام خانوادگی تنظیم شد*"
            local keyboard = do_keyboard_spanel()
            local vb37 = msg.from.id..':lname'
            local vb38 = blocks[1]
	    db:set(vb37,vb38)
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
    if blocks[1] and db3 == "w8" and msg.chat.type == 'private' then
     local link = blocks[1]
     local idd = msg.from.id
        if check_link(idd, link) then
            local message = "عنوان امتحان : "..title.."\n نویسنده : "..writer.."\n زمان به واحد دقیقه : "..dtime.."\n آیا میخواهید امتحان را آغاز کنید؟"
            local keyboard = do_keyboard_youexam()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
            end
        local message = "کد وارد شده اشتباه است و در سیستم موجود نیست و یا شما قبلا در این امتحان شرکت کرده اید\nلطفا کد را دوباره ارسال نمایید"
       api.sendMessage(msg.from.id, message, true)
          end
    if blocks[1] == "start" and blocks[2] and msg.chat.type == 'private' then
     local link = blocks[2]
     local idd = msg.from.id
	  if db12 == "s" then
     if not famil == "مشخص نشده" and not nam == "مشخص نشده" then
        if check_link(idd, link) then
            local message = "عنوان امتحان : "..title.."\n نویسنده : "..writer.."\n زمان به واحد دقیقه : "..dtime.."\n آیا میخواهید امتحان را آغاز کنید؟"
            local keyboard = do_keyboard_youexam2()
            api.sendKeyboard(msg.from.id, message, keyboard, true)
			end
        local message = "کد وارد شده اشتباه است و در سیستم موجود نیست و یا شما قبلا در این امتحان شرکت کرده اید\nلطفا کد را دوباره ارسال نمایید"
       api.sendMessage(msg.from.id, message, true)
          end
          local message = "قبل از ورود به امتحان، باید مشخصات خود را تکمیل کنید"
          local keyboard = do_keyboard_doexam()
              api.sendKeyboard(msg.from.id, message, keyboard, true)
              end
        local message = "فقط دانش آموزان قادر به امتحان دادن میباشند!"
       api.sendMessage(msg.from.id, message, true)
          end
local action = function(msg, blocks, ln)
    if msg.cb then
        local query = blocks[1]
        local query2 = blocks[2]
        local msg_id = msg.message_id
        local text
	       if query == 'school' then
       if query2 == '7' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
            local keyboard = do_keyboard_spanel2()
            local vb39 = msg.from.id..":type"
            local vb40 = "s"
            local vb41 = msg.from.id..':lvl'
            local vb42 = 'هفتم'
            local vb43 = msg.from.id..':fname'
            local vb44 = 'تنظیم نشده'
            local vb45 = msg.from.id..':lname'
            local vb46 = 'تنظیم نشده'
			db:set(vb39,vb40)
            db:set(vb41,vb42)
            db:set(vb43,vb44)
            db:set(vb45,vb46)
        api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
    end
 if query2 == '8' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
  local keyboard = do_keyboard_spanel3()
  local vb47 = msg.from.id..":type"
  local vb48 = "s"
  local vb49 = msg.from.id..':lvl'
  local vb50 = 'هشتم'
  local vb51 = msg.from.id..':fname'
  local vb52 = 'تنظیم نشده'
  local vb53 = msg.from.id..':lname'
  local vb54 = 'تنظیم نشده'
db:set(vb47,vb48)
  db:set(vb49,vb50)
  db:set(vb51,vb52)
  db:set(vb53,vb54)
api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
 if query2 == '9' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
  local keyboard = do_keyboard_spanel4()
  local vb55 = msg.from.id..":type"
  local vb56 = "s"
  local vb57 = msg.from.id..':lvl'
  local vb58 = 'نهم'
  local vb59 = msg.from.id..':fname'
  local vb60 = 'تنظیم نشده'
  local vb61 = msg.from.id..':lname'
  local vb62 = 'تنظیم نشده'
db:set(vb55,vb56)
  db:set(vb57,vb58)
  db:set(vb59,vb60)
  db:set(vb61,vb62)
api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
 if query2 == '10' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
  local keyboard = do_keyboard_spanel5()
  local vb63 = msg.from.id..":type"
  local vb64 = "s"
  local vb65 = msg.from.id..':lvl'
  local vb66 = 'دهم'
  local vb67 = msg.from.id..':fname'
  local vb68 = 'تنظیم نشده'
  local vb69 = msg.from.id..':lname'
  local vb70 = 'تنظیم نشده'
db:set(vb63,vb64)
  db:set(vb65,vb66)
  db:set(vb67,vb68)
  db:set(vb69,vb70)
api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
 if query2 == '11' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
  local keyboard = do_keyboard_spanel6()
  local vb71 = msg.from.id..":type"
  local vb72 = "s"
  local vb73 = msg.from.id..':lvl'
  local vb74 = 'یازدهم'
  local vb75 = msg.from.id..':fname'
  local vb76 = 'تنظیم نشده'
  local vb77 = msg.from.id..':lname'
  local vb78 = 'تنظیم نشده'
db:set(vb71,vb72)
  db:set(vb73,vb74)
  db:set(vb75,vb76)
  db:set(vb77,vb78)
api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
 if query2 == '12' then
            local text = "*عملیات مورد نظر را انتخاب نمایید:*"
  local keyboard = do_keyboard_spanel7()
  local vb79 = msg.from.id..":type"
  local vb80 = "s"
  local vb81 = msg.from.id..':lvl'
  local vb82 = 'دوارزدهم'
  local vb83 = msg.from.id..':fname'
  local vb84 = 'تنظیم نشده'
  local vb85 = msg.from.id..':lname'
  local vb86 = 'تنظیم نشده'
db:set(vb79,vb80)
  db:set(vb81,vb82)
  db:set(vb83,vb84)
  db:set(vb85,vb86)
api.editMessageText(msg.chat.id, msg_id, text, keyboard, true)
end
  end
  if query == 'card' then
    local keyboard = do_keyboard_card()
    local nam = db:get(msg.from.id..':fname')
    local famil = db:get(msg.from.id..':lname')
    local class = db:get(msg.from.id..':lvl')
    local shen = msg.from.id
    local text = "*مشخصات شما*\nنام : "..nam.."\nنام خانوادگی : "..famil.."\nپایه تحصیلی : "..class.."\nشناسه دانش آموزی : "..shen
    api.editMessageText(chat, msg_id, text, keyboard, true)
  end
  if query == 'spanel' then
    local keyboard = do_keyboard_spanel8()
    local text = "*عملیات مورد نظر را انتخاب نمایید:*"
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'spanel2' then
    local keyboard = do_keyboard_spanel9()
    local text = "*عملیات مورد نظر را انتخاب نمایید:*"
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
  if query == 'getresult' then
      local keyboard = do_keyboard_gres()
      local text = "*عملیات مورد نظر را انتخاب نمایید:*"
       local chat_id = msg.from.id
       local ring = "کارنامه ای جدید دریافت شد! \n اطلاعات دانش آموز: \n نام : "..nam.."\n نام خانوادگی : "..famil.."\n شناسه کاربری: "..msg.from.id.."\n با دستور زیر میوانید کارنامه های دریافت شده را مشاهده نمایید:\n /see [کد امتحان] [شناسه کاربری]"
       sendDocument(chat_id,"./students/"..msg.from.id.."/result/"..examdb..".html")
      api.sendMessage(ownerid, ring, true)
      api.editMessageText(chat, msg_id, text, keyboard, true)
      end
  if query == 'editc' then
    local text = "نام خود را ارسال کنید"
    local vb87 = msg.from.id..':fname'
    local vb88 = 'w8'
    db:set(vb87,vb88)
 api.sendMessage(msg.from.id, text, true)
    end
   if query == 'doexam' then
   if not famil == "مشخص نشده" and not nam == "مشخص نشده" then
    local keyboard = do_keyboard_doexam2()
    local vb89 = msg.from.id..':new:code'
    local vb90 = 'w8'
    local text = [[کد امتحان مورد نظر را ارسال نمایید]]
    db:set(vb89,vb90)
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
     local keyboard = do_keyboard_doexam3()
     local text = [[قبل از ورود به امتحان، باید مشخصات خود را تکمیل کنید]]
     api.editMessageText(chat, msg_id, text, keyboard, true)
     end
   if query == 'yess' then
   local keyboard1 = do_keyboard_q1()
    local text1 = "1- "..exam.q1
     local keyboard2 = do_keyboard_q2()
     local text2 = "2- "..exam.q2
      local keyboard3 = do_keyboard_q3()
      local text3 = "3- "..exam.q3
       local keyboard4 = do_keyboard_q4()
       local text4 = "4- "..exam.q4
        local keyboard5 = do_keyboard_q5()
        local text5 = "5- "..exam.q5
         local keyboard6 = do_keyboard_q6()
         local text6 = "6- "..exam.q6
          local keyboard7 = do_keyboard_q7()
          local text7 = "7- "..exam.q7
           local keyboard8 = do_keyboard_q8()
           local text8 = "8- "..exam.q8
            local keyboard9 = do_keyboard_q9()
            local text9 = "9- "..exam.q9
             local keyboard10 = do_keyboard_q10()
             local text10 = "10- "..exam.q10
              local keyboard11 = do_keyboard_end()
              local text11 = "آیا میخواهید امتحان را تمام کنبد؟\nدر صورت کلیک بروی -بله- جواب های شما ثبت خواهند شد و کارنامه برای شما و نویسنده امتحان صادر میگردد"
      local vb91 = msg.from.id..'new:time'
      local vb92 = msg.from.id..':'..examdb..':did'
      local vb93 = 'true'
      db:setex(vb91, tonumber(dtime), true)
      db:set(vb92,vb93)
             api.sendKeyboard(chat, text1, keyboard1, true)
             api.sendKeyboard(chat, text2, keyboard2, true)
             api.sendKeyboard(chat, text3, keyboard3, true)
             api.sendKeyboard(chat, text4, keyboard4, true)
             api.sendKeyboard(chat, text5, keyboard5, true)
             api.sendKeyboard(chat, text6, keyboard6, true)
             api.sendKeyboard(chat, text7, keyboard7, true)
             api.sendKeyboard(chat, text8, keyboard8, true)
             api.sendKeyboard(chat, text9, keyboard9, true)
             api.sendKeyboard(chat, text10, keyboard10, true)
            api.sendKeyboard(chat, text11, keyboard11, true)
    end
   if query == 'a1_' then
    local co = examc.a
    local vb94 = msg.from.id..':new:1:res'
   db:set(vb94,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end2()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:1','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
				end
    else if etime then
    local keyboard = do_keyboard_end3()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
   local keyboard = do_keyboard_end4()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a2_' then
    local co = examc.b
    local vb95 = msg.from.id..':new:1:res'
   db:set(vb95,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end5()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:2','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
		else if etime then
    local keyboard = do_keyboard_end6()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end7()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a3_' then
    local co = examc.c
    local vb96 = msg.from.id..':new:1:res'
   db:set(vb96,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end8()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:3','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end9()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end10()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a4_' then
    local co = examc.d
    local vb97 = msg.from.id..':new:1:res'
   db:set(vb97,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end11()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:4','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end12()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end13()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a5_' then
    local co = examc.e
    local vb98 = msg.from.id..':new:1:res'
   db:set(vb98,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end14()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:5','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end15()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end16()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a6_' then
    local co = examc.f
    local vb99 = msg.from.id..':new:1:res'
   db:set(vb99,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end17()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:6','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end18()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end19()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a7_' then
    local co = examc.g
    local vb100 = msg.from.id..':new:1:res'
   db:set(vb100,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end20()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:7','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end21()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end22()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a8_' then
    local co = examc.h
    local vb101 = msg.from.id..':new:1:res'
   db:set(vb101,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end23()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:8','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end24()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end25()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a9_' then
    local co = examc.i
    local vb102 = msg.from.id..':new:1:res'
   db:set(vb102,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end26()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:9','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end27()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end28()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'a10_' then
    local co = examc.j
    local vb103 = msg.from.id..':new:1:res'
   db:set(vb103,query2)
    if query2 == co and etime then
    local keyboard = do_keyboard_end29()
    local text = [[پاسخ ثبت شد]]
    db:set(msg.from.id..':new:10','true')
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
			else if etime then
    local keyboard = do_keyboard_end30()
    local text = [[پاسخ ثبت شد]]
    api.editMessageText(chat, msg_id, text, keyboard, true)
    end
 local keyboard = do_keyboard_end31()
   local text = [[وقت شما به پایان رسیده است! و هیچ پاسخ جدیدی ثبت نمیگردد]]
  api.editMessageText(chat, msg_id, text, keyboard, true)
end
   if query == 'end' then
    local user = msg.from.id
    local link = examdb
    local keyboard = do_keyboard_carname()
    local text = "پاسخ ها ثبت شدند و کارنامه برای شما و نویسنده امتحان صادر شد"
    api.editMessageText(chat, msg_id, text, keyboard, true)
    set_result(link, user)
    end
  end
end
return {
	action = action,
	triggers = {
	    '^/(start)$',
    	'^/(start) (.*)$',
    	'^(.*)$',
      '^###cb:!(school)(.*)',
      '^###cb:!(a1_)(.*)',
      '^###cb:!(a2_)(.*)',
      '^###cb:!(a3_)(.*)',
      '^###cb:!(a4_)(.*)',
      '^###cb:!(a5_)(.*)',
      '^###cb:!(a6_)(.*)',
      '^###cb:!(a7_)(.*)',
      '^###cb:!(a8_)(.*)',
      '^###cb:!(a9_)(.*)',
      '^###cb:!(editc)',
      '^###cb:!(card)',
      '^###cb:!(spanel)',
      '^###cb:!(getresult)',
      '^###cb:!(yess)',
      '^###cb:!(end)',
      '^###cb:!(spanel2)',
      '^###cb:!(doexam)'
  }
}
	end
