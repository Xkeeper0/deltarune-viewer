if (self.bust == 0)
{
    snd_free(global.currentsong[0])
    global.interact = 1
    instance_create(0, 0, obj_shake)
    snd_play(snd_cough)
    self.con = 10
    self.bust = 1
    for (self.i = 0; self.i < 12; self.i += 1)
        instance_create(((self.x + 20) + (self.i * 6)), ((self.y + 20) + random(25)), obj_dustball_pilebreak)
    self.s = scr_dark_marker((self.x + 10), self.y, spr_susie_shock)
    with (self.s)
        scr_depth()
    self.alarm[4] = 2
    with (self.s)
        self.hspeed = 10
    with (obj_mainchara)
        self.cutscene = 0
}
