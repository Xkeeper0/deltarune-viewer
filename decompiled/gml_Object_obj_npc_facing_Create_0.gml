self.dtsprite = spr_toriel_dt
self.rtsprite = spr_toriel_rt
self.ltsprite = spr_toriel_lt
self.utsprite = spr_toriel_ut
self.myinteract = 0
self.facing = 0
self.dfacing = 0
self.image_speed = 0
self.talked = 0
self.ourcase = 0
if (global.darkzone == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
}
self.normalanim = 1
self.remanimspeed = 0
self.depthbonus = 0
self.depthcancel = 0
if (self.room == room_alphysclass)
{
    self.facing = 2
    self.dfacing = 2
    self.ourcase = 1
    if (self.y < 172)
    {
        self.dtsprite = spr_noelle_dt
        self.rtsprite = spr_noelle_ut_r
        self.utsprite = spr_noelle_ut
        self.ltsprite = spr_noelle_ut_l
        if (self.x > 120)
        {
            self.utsprite = spr_berdly_ut
            self.rtsprite = spr_berdly_ut_r
            self.ltsprite = spr_berdly_ut_l
            self.dtsprite = spr_berdly_ut
        }
    }
    if (self.y > 172)
    {
        self.dtsprite = spr_catti_ut
        self.utsprite = spr_catti_ut
        self.rtsprite = spr_catti_ut
        self.ltsprite = spr_catti_ut
        if (self.x > 120)
        {
            self.dtsprite = spr_mkid_ut
            self.rtsprite = spr_mkid_ut_r
            self.ltsprite = spr_mkid_ut_l
            self.utsprite = spr_mkid_ut
        }
    }
    if (self.y > 212)
    {
        self.dtsprite = spr_jockington_ut
        self.utsprite = spr_jockington_ut
        self.rtsprite = spr_jockington_rt
        self.ltsprite = spr_jockington_lt
        if (self.x > 120)
        {
            self.utsprite = spr_snowy_ut
            self.ltsprite = spr_snowy_ut_l
            self.rtsprite = spr_snowy_ut_r
            self.dtsprite = spr_snowy_ut
        }
    }
    if (self.y < 100)
    {
        self.facing = 0
        self.dfacing = 0
        self.dtsprite = spr_alphysd
        self.ltsprite = spr_alphysl
        self.rtsprite = spr_alphysr
        self.utsprite = spr_alphysu
    }
}
if (self.room == room_field2)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = spr_lancer_dt
    self.utsprite = spr_lancer_dt
    self.rtsprite = spr_lancer_rt
    self.ltsprite = spr_lancer_lt
    if (self.room == room_field2)
    {
        if (global.plot >= 35)
            instance_destroy()
    }
}
if (self.room == room_forest_maze_deadend)
{
    self.facing = 0
    self.dfacing = 0
    if (global.plot < 95)
        global.plot = 95
    global.flag[293] += 1
    self.dtsprite = spr_lancer_dt
    self.utsprite = spr_lancer_dt
    self.rtsprite = spr_lancer_rt
    self.ltsprite = spr_lancer_lt
    if (global.plot >= 120)
        instance_destroy()
}
if (self.room == room_forest_maze_deadend2)
{
    self.facing = 2
    self.dfacing = 2
    global.flag[294] += 1
    self.dtsprite = spr_susied_dark
    self.utsprite = spr_susieu_dark
    self.rtsprite = spr_susier_dark
    self.ltsprite = spr_susiel_dark
    if (global.plot >= 120)
        instance_destroy()
}
if (self.room == room_field_boxpuzzle)
{
    self.type = 0
    if (self.x < (self.room_width / 2))
    {
        self.sprite_index = spr_ralseid
        self.dtsprite = spr_ralseid
        self.utsprite = spr_ralseiu
        self.rtsprite = spr_ralseir
        self.ltsprite = spr_ralseil
        self.y += self.sprite_height
    }
    else
    {
        self.type = 1
        self.sprite_index = spr_susied
        self.dtsprite = spr_susied_dark
        self.utsprite = spr_susieu_dark
        self.rtsprite = spr_susier_dark
        self.ltsprite = spr_susiel_dark
        self.y += self.sprite_height
    }
}
if (self.room == room_cc_kingbattle)
{
    if (global.plot < 240)
        instance_destroy()
    self.sprite_index = spr_ralseid
    self.dtsprite = spr_ralseid
    self.utsprite = spr_ralseiu
    self.rtsprite = spr_ralseir
    self.ltsprite = spr_ralseil
    self.y += self.sprite_height
}
if (self.room == room_cc_throneroom)
{
    if (global.plot < 240)
        instance_destroy()
    self.sprite_index = spr_lancer_dt
    self.dtsprite = spr_lancer_dt
    self.utsprite = spr_lancer_ut
    self.rtsprite = spr_lancer_rt
    self.ltsprite = spr_lancer_lt
    self.y += self.sprite_height
    self.depthbonus = -250
}
if (self.room == room_forest_area1)
{
    self.sprite_index = spr_susier_dark
    self.rtsprite = spr_susier_dark
    self.dtsprite = spr_susied_dark
    self.utsprite = spr_susieu_dark
    self.ltsprite = spr_susiel_dark
    self.facing = 1
    self.dfacing = 1
    if (self.x >= 1160)
    {
        self.facing = 3
        self.dfacing = 3
        self.sprite_index = spr_lancer_lt
        self.dtsprite = spr_lancer_dt
        self.utsprite = spr_lancer_dt
        self.rtsprite = spr_lancer_rt
        self.ltsprite = spr_lancer_lt
    }
    if (global.plot > 70)
        instance_destroy()
}
if (self.room == room_forest_area3)
{
    if (self.x >= 600)
    {
        self.facing = 2
        self.dfacing = 2
        self.sprite_index = spr_lancer_ut
        self.dtsprite = spr_lancer_dt
        self.utsprite = spr_lancer_ut
        self.rtsprite = spr_lancer_rt
        self.ltsprite = spr_lancer_lt
    }
    else
    {
        self.facing = 2
        self.dfacing = 2
        self.sprite_index = spr_susieut_dark
        self.dtsprite = spr_susiedt_dark
        self.utsprite = spr_susieut_dark
        self.rtsprite = spr_susiert_dark
        self.ltsprite = spr_susielt_dark
    }
}
if (self.room == room_library)
{
    if (self.x < 120)
    {
        self.facing = 1
        self.dfacing = 1
        self.dtsprite = spr_berdly_library_r
        self.utsprite = spr_berdly_library_u
        self.rtsprite = spr_berdly_library_r
        self.ltsprite = spr_berdly_library_u
        self.depthcancel = 1
        self.depth = 4000
    }
    if (self.x > 150)
    {
        self.facing = 1
        self.dfacing = 1
        self.dtsprite = spr_jockington_ut
        self.utsprite = spr_jockington_ut
        self.rtsprite = spr_jockington_rt
        self.ltsprite = spr_jockington_lt
    }
    if (self.x > 220)
    {
        self.facing = 3
        self.dfacing = 3
        self.dtsprite = spr_tem_sit_l
        self.rtsprite = spr_tem_sit_r
        self.utsprite = spr_tem_sit
        self.ltsprite = spr_tem_sit_l
    }
}
if (self.room == room_flowershop_1f)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = spr_asgored
    self.utsprite = spr_asgoreu
    self.rtsprite = spr_asgorer
    self.ltsprite = spr_asgorel
}
if (self.room == room_flowershop_2f)
{
    self.facing = 2
    self.dfacing = 2
    self.dtsprite = spr_asgored
    self.utsprite = spr_asgoreu
    self.rtsprite = spr_asgorer
    self.ltsprite = spr_asgorel
}
if (self.room == room_alphysalley)
{
    self.facing = 3
    self.dfacing = 3
    self.dtsprite = spr_alphysd
    self.utsprite = spr_alphysu
    self.rtsprite = spr_alphysr
    self.ltsprite = spr_alphysl
}
if (self.room == room_town_south)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = spr_undyne_dt
    self.utsprite = spr_undyne_ut
    self.rtsprite = spr_undyne_rt
    self.ltsprite = spr_undyne_lt
}
if (self.room == room_town_mid)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = spr_sans_d
    self.ltsprite = spr_sans_l
    self.utsprite = spr_sans_u
    self.rtsprite = spr_sans_r
}
if (self.room == room_town_north)
{
    self.facing = 3
    self.dfacing = 3
    self.dtsprite = spr_noelle_dt
    self.ltsprite = spr_noelle_lt
    self.utsprite = spr_noelle_ut
    self.rtsprite = spr_noelle_rt
    if (global.flag[255] < 1)
        instance_destroy()
}
scr_npcdir()
self.y -= self.sprite_height
if (self.depthcancel == 0)
    scr_depth()
self.depth += self.depthbonus
