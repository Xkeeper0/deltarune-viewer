self.myinteract = 0
self.image_speed = 0
self.setdepth = 1
self.read = 0
if (global.darkzone == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
}
if (self.room == room_cc_prison_cells)
{
    self.sprite_index = spr_ironshackle
    self.image_index = 0
    if (global.flag[105] == 1)
        self.image_index = 1
}
if (self.room == room_cc_prison2)
{
    self.sprite_index = spr_npc_originalstarwalker
    if (global.flag[254] == 0)
        instance_destroy()
}
if (self.room == room_cc_throneroom)
{
    if (self.x >= 220)
        _temp_local_var_1 = (self.x <= 400)
    else
        _temp_local_var_1 = 0
    if _temp_local_var_1
        self.sprite_index = spr_darkthrone
    else
        self.sprite_index = spr_darkmoney
}
if (self.room == room_flowershop_2f)
{
    self.sprite_index = spr_flowercontainer
    self.num = 0
    self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_45_0"@6399)
    if (self.x > 170)
    {
        self.num = 1
        self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_50_0"@6401)
        if (self.y > 110)
        {
            self.num = 5
            self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_51_0"@6402)
        }
        if (self.y > 130)
        {
            self.num = 6
            self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_52_0"@6403)
        }
    }
    if (self.x < 140)
    {
        self.num = 2
        self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_57_0"@6404)
        if (self.y > 110)
        {
            self.num = 3
            self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_58_0"@6405)
        }
        if (self.y > 130)
        {
            self.num = 4
            self.colortxt = scr_84_get_lang_string("obj_npc_sign_slash_Create_0_gml_59_0"@6406)
        }
    }
    self.image_index = self.num
}
if (self.room == room_town_north)
{
    self.sprite_index = spr_npc_asgoretruck
    self.setdepth = 0
    self.depth = 700000
}
if (self.room == room_beach)
    self.sprite_index = spr_npc_beachtable
if (self.room == room_town_krisyard)
    self.sprite_index = spr_torcar_u
if (self.setdepth == 1)
    scr_depth()
