self.ran = 0
self.dex = 0
self.tsouth = 0
self.teast = 0
self.con = 0
self.type = 0
if (global.entrance == 2)
    global.facing = 0
if (global.plot < 2)
{
    global.interact = 1
    self.alarm[5] = 2
    with(obj_mainchara)
    {
        self.visible = 0
    }
    self.t = scr_marker(460, 360, spr_toriel_handhold_u)
    with(self.t)
    {
        self.vspeed = -2
        self.image_speed = 0.2
        self.depth = 10000
    }
    self.alarm[4] = 85
    self.con = 1
    self.type = 1
}
if (global.plot == 3)
{
    self.type = 2
    with(obj_mainchara)
    {
        self.visible = 0
        self.x = obj_markerB.x
        self.y = obj_markerB.y
    }
    self.k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisd)
    with(self.k)
    {
        scr_depth()
    }
    self.s = scr_marker(240, 192, spr_susier_plain)
    with(self.s)
    {
        scr_depth()
        self.depth = (self.depth - 5)
    }
    global.interact = 1
    with(obj_doorA)
    {
        instance_destroy()
    }
    self.doorsolid = instance_create(110, 200, obj_solidblock)
    self.con = 0.1
    self.alarm[4] = 50
}
if (global.plot >= 250)
{
    self.sunset = scr_marker(0, 0, spr_schoollobby_sunsetoverlay)
    with(self.sunset)
    {
        self.image_alpha = 0.4
        self.depth = 2000
    }
    if (~ snd_is_playing(global.currentsong[1]))
    {
        global.currentsong[0] = snd_init("mus_birdnoise.ogg"@3694)
        global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.6, 0.7)
    }
}
if (global.plot >= 251)
    self.type = 4
