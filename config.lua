return {
  bot_api_key = '247505227:AAG1Iatya9cbYB2TjVouvI0D3P8FhDcrtt0',
  admin = 221425094,
  channel = 'JackiTeam_ch',

  plugins = {
    'Help.lua', 'DataBase.lua', 'Start.lua'
  },
  api_errors = {
    [101] = 'Not enough rights to kick participant',
    [102] = 'USER_ADMIN_INVALID',
    [103] = 'method is available for supergroup chats only',
    [104] = 'Bad Request: Only creator of the group can kick admins from the group',
    [105] = 'Bad Request: Need to be inviter of the user to kick it from the group',
    [106] = 'USER_NOT_PARTICIPANT',
    [107] = 'CHAT_ADMIN_REQUIRED',
    [400] = '😐',

    [110] = 'PEER_ID_INVALID',
    [111] = 'Bad Request: message is not modified',
    [112] = 'Bad Request: Can\'t parse message text: Can\'t find end of the entity starting at byte offset %d+',
    [113] = 'Bad Request: group chat is migrated to a supergroup chat',
    [114] = 'Bad Request: Message can\'t be forwarded',
    [115] = 'Message text is empty',
    [116] = 'message not found',

    [120] = 'Can\'t parse reply keyboard markup JSON object',
    [121] = 'Field \\\"inline_keyboard\\\" of the InlineKeyboardMarkup should be an Array of Arrays',
    [122] = 'Can\'t parse inline keyboard button: InlineKeyboardButton should be an Object',
    [123] = 'Bad Request: Object expected as reply markup',

    [130] = 'Type of file to send mismatch',

    [403] = 'Bot was blocked by the user',
    [429] = 'Too many requests: retry later',
  }
}
