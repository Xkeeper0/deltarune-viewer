if audio_group_is_loaded(1)
{
    self.roomchoice = PLACE_CONTACT
    self.menu_go = 0
    if file_exists("filech1_0")
        self.menu_go = 1
    if file_exists("filech1_1")
        self.menu_go = 1
    if file_exists("filech1_2")
        self.menu_go = 1
    if file_exists("filech1_3")
        self.menu_go = 1
    if file_exists("dr.ini")
        self.menu_go = 1
    if file_exists("filech1_3")
        self.menu_go = 2
    if file_exists("filech1_4")
        self.menu_go = 2
    if file_exists("filech1_5")
        self.menu_go = 2
    if (self.menu_go == 1)
        self.roomchoice = PLACE_MENU
    if (self.menu_go == 2)
    {
        scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"))
        global.tempflag[10] = 1
        self.roomchoice = 132
        global.plot = 0
    }
    room_goto(self.roomchoice)
}
