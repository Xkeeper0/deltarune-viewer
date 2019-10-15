self.image_speed = 0
self.con = 0
self.part = 0
self.xx = 0
self.yy = 0
global.msg[0] = " "@24
global.msg[1] = "%"@3588
global.xoff = 240
self.spadecon = 0
self.kingburn = 0
self.ky = 0
self.type = 1
if (global.flag[40] > 0)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (global.flag[43] >= 2)
if _temp_local_var_1
    self.type = 0
self.k = 328938298392
self.s = 238928392839
self.r = 58344839483493
self.l = 2489284928392
self.king = 2382938928392
self.fountain_index = 0
if (global.plot >= 240)
{
    if (~ snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("friendship.ogg"@6620)
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.95)
    }
    self.con = 700
}
else
{
    global.interact = 1
    __view_set(e__VW.XView, 0, 0)
    with(obj_npc_facing)
    {
        instance_destroy()
    }
    with(obj_npc_room)
    {
        instance_destroy()
    }
}
