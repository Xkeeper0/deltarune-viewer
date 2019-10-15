self.myinteract = 0
self.talked = 0
self.image_speed = 0
self.itemflag = 104
self.itemtype = "armor"@167
self.t_itemid = 4
self.close = 0
self.extratext = 0
if (self.room == room_field_maze)
    self.extratext = 1
if (self.room == room_field_secret1)
{
    self.itemflag = 117
    self.itemtype = "key"@6371
    self.t_itemid = 7
    self.extratext = 0
}
if (self.room == room_forest_dancers1)
{
    self.itemflag = 107
    self.itemtype = "item"@103
    self.t_itemid = 2
    self.extratext = 1
    if (self.x >= (self.room_width / 2))
    {
        self.itemflag = 116
        self.itemtype = "key"@6371
        self.t_itemid = 6
        self.extratext = 0
    }
}
if (self.room == room_forest_area2A)
{
    self.itemflag = 108
    self.itemtype = "weapon"@166
    self.t_itemid = 9
    self.extratext = 1
}
if (self.room == room_forest_area3A)
{
    self.itemflag = 109
    self.itemtype = "armor"@167
    self.t_itemid = 2
    self.extratext = 1
}
if (self.room == room_forest_area4)
{
    if (self.y <= (self.room_height / 2))
    {
        self.itemflag = 110
        self.itemtype = "gold"@641
        self.t_itemid = 40
        self.extratext = 1
    }
    else
    {
        self.itemflag = 111
        self.itemtype = "item"@103
        self.t_itemid = 2
        self.extratext = 1
    }
}
if (self.room == room_cc_prison_prejoker)
{
    if (global.flag[112] == 1)
        instance_destroy()
    if (global.flag[242] == 0)
        instance_destroy()
    else
    {
        if (global.flag[242] == 1)
        {
            self.itemflag = 112
            self.itemtype = "weapon"@166
            self.t_itemid = 7
        }
        if (global.flag[242] == 2)
        {
            self.itemflag = 112
            self.itemtype = "armor"@167
            self.t_itemid = 7
        }
    }
}
if (self.room == room_cc_2f)
{
    self.itemflag = 113
    self.itemtype = "item"@103
    self.t_itemid = 11
}
if (self.room == room_cc_4f)
{
    self.itemflag = 114
    self.itemtype = "item"@103
    self.t_itemid = 2
    self.extratext = 1
}
if (self.room == room_forest_secret1)
{
    self.itemflag = 116
    self.itemtype = "key"@6371
    self.t_itemid = 6
    self.extratext = 0
}
if (global.darkzone == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
}
if (global.flag[self.itemflag] == 1)
    self.image_index = 1
scr_depth()
