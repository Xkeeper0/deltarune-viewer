if audio_group_is_loaded(1)
{
    self.roomchoice = PLACE_CONTACT
    self.menu_go = 0
    if file_exists("filech1_0"@3503)
        self.menu_go = 1
    if file_exists("filech1_1"@3505)
        self.menu_go = 1
    if file_exists("filech1_2"@3507)
        self.menu_go = 1
    if file_exists("filech1_3"@9726)
        self.menu_go = 1
    if file_exists("dr.ini"@2744)
        self.menu_go = 1
    if file_exists("filech1_3"@9726)
        self.menu_go = 2
    if file_exists("filech1_4"@9727)
        self.menu_go = 2
    if file_exists("filech1_5"@9728)
        self.menu_go = 2
    if (self.menu_go == 1)
        self.roomchoice = PLACE_MENU
    if (self.menu_go == 2)
    {
        scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"@10054))
        global.tempflag[10] = 1
        self.roomchoice = 132
        global.plot = 0
    }
    room_goto(self.roomchoice)
}
