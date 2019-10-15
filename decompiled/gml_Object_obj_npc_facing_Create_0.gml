self.dtsprite = 97
self.rtsprite = 102
self.ltsprite = 104
self.utsprite = 100
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
        self.dtsprite = 124
        self.rtsprite = 131
        self.utsprite = 130
        self.ltsprite = 132
        if (self.x > 120)
        {
            self.utsprite = 134
            self.rtsprite = 138
            self.ltsprite = 137
            self.dtsprite = 134
        }
    }
    if (self.y > 172)
    {
        self.dtsprite = 139
        self.utsprite = 139
        self.rtsprite = 139
        self.ltsprite = 139
        if (self.x > 120)
        {
            self.dtsprite = 152
            self.rtsprite = 154
            self.ltsprite = 155
            self.utsprite = 152
        }
    }
    if (self.y > 212)
    {
        self.dtsprite = 140
        self.utsprite = 140
        self.rtsprite = 141
        self.ltsprite = 142
        if (self.x > 120)
        {
            self.utsprite = 148
            self.ltsprite = 150
            self.rtsprite = 151
            self.dtsprite = 148
        }
    }
    if (self.y < 100)
    {
        self.facing = 0
        self.dfacing = 0
        self.dtsprite = 119
        self.ltsprite = 121
        self.rtsprite = 122
        self.utsprite = 120
    }
}
if (self.room == room_field2)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = 211
    self.utsprite = 211
    self.rtsprite = 216
    self.ltsprite = 220
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
    global.flag[293] = (global.flag[293] + 1)
    self.dtsprite = 211
    self.utsprite = 211
    self.rtsprite = 216
    self.ltsprite = 220
    if (global.plot >= 120)
        instance_destroy()
}
if (self.room == room_forest_maze_deadend2)
{
    self.facing = 2
    self.dfacing = 2
    global.flag[294] = (global.flag[294] + 1)
    self.dtsprite = 187
    self.utsprite = 190
    self.rtsprite = 183
    self.ltsprite = 180
    if (global.plot >= 120)
        instance_destroy()
}
if (self.room == room_field_boxpuzzle)
{
    self.type = 0
    if (self.x < (self.room_width / 2))
    {
        self.sprite_index = spr_ralseid
        self.dtsprite = 204
        self.utsprite = 206
        self.rtsprite = 209
        self.ltsprite = 207
        self.y = (self.y + self.sprite_height)
    }
    else
    {
        self.type = 1
        self.sprite_index = spr_susied
        self.dtsprite = 187
        self.utsprite = 190
        self.rtsprite = 183
        self.ltsprite = 180
        self.y = (self.y + self.sprite_height)
    }
}
if (self.room == room_cc_kingbattle)
{
    if (global.plot < 240)
        instance_destroy()
    self.sprite_index = spr_ralseid
    self.dtsprite = 204
    self.utsprite = 206
    self.rtsprite = 209
    self.ltsprite = 207
    self.y = (self.y + self.sprite_height)
}
if (self.room == room_cc_throneroom)
{
    if (global.plot < 240)
        instance_destroy()
    self.sprite_index = spr_lancer_dt
    self.dtsprite = 211
    self.utsprite = 214
    self.rtsprite = 216
    self.ltsprite = 220
    self.y = (self.y + self.sprite_height)
    self.depthbonus = -250
}
if (self.room == room_forest_area1)
{
    self.sprite_index = spr_susier_dark
    self.rtsprite = 183
    self.dtsprite = 187
    self.utsprite = 190
    self.ltsprite = 180
    self.facing = 1
    self.dfacing = 1
    if (self.x >= 1160)
    {
        self.facing = 3
        self.dfacing = 3
        self.sprite_index = spr_lancer_lt
        self.dtsprite = 211
        self.utsprite = 211
        self.rtsprite = 216
        self.ltsprite = 220
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
        self.dtsprite = 211
        self.utsprite = 214
        self.rtsprite = 216
        self.ltsprite = 220
    }
    else
    {
        self.facing = 2
        self.dfacing = 2
        self.sprite_index = spr_susieut_dark
        self.dtsprite = 188
        self.utsprite = 192
        self.rtsprite = 184
        self.ltsprite = 181
    }
}
if (self.room == room_library)
{
    if (self.x < 120)
    {
        self.facing = 1
        self.dfacing = 1
        self.dtsprite = 136
        self.utsprite = 135
        self.rtsprite = 136
        self.ltsprite = 135
        self.depthcancel = 1
        self.depth = 4000
    }
    if (self.x > 150)
    {
        self.facing = 1
        self.dfacing = 1
        self.dtsprite = 140
        self.utsprite = 140
        self.rtsprite = 141
        self.ltsprite = 142
    }
    if (self.x > 220)
    {
        self.facing = 3
        self.dfacing = 3
        self.dtsprite = 144
        self.rtsprite = 145
        self.utsprite = 143
        self.ltsprite = 144
    }
}
if (self.room == room_flowershop_1f)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = 270
    self.utsprite = 275
    self.rtsprite = 273
    self.ltsprite = 272
}
if (self.room == room_flowershop_2f)
{
    self.facing = 2
    self.dfacing = 2
    self.dtsprite = 270
    self.utsprite = 275
    self.rtsprite = 273
    self.ltsprite = 272
}
if (self.room == room_alphysalley)
{
    self.facing = 3
    self.dfacing = 3
    self.dtsprite = 119
    self.utsprite = 120
    self.rtsprite = 122
    self.ltsprite = 121
}
if (self.room == room_town_south)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = 281
    self.utsprite = 284
    self.rtsprite = 283
    self.ltsprite = 282
}
if (self.room == room_town_mid)
{
    self.facing = 0
    self.dfacing = 0
    self.dtsprite = 289
    self.ltsprite = 290
    self.utsprite = 292
    self.rtsprite = 291
}
if (self.room == room_town_north)
{
    self.facing = 3
    self.dfacing = 3
    self.dtsprite = 124
    self.ltsprite = 129
    self.utsprite = 130
    self.rtsprite = 128
    if (global.flag[255] < 1)
        instance_destroy()
}
scr_npcdir()
self.y = (self.y - self.sprite_height)
if (self.depthcancel == 0)
    scr_depth()
self.depth = (self.depth + self.depthbonus)
