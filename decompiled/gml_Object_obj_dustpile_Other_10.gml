if (self.bust == 0)
{
    global.interact = 1
    instance_create(0, 0, obj_shake)
    snd_play(snd_cough)
    self.alarm[3] = 6
    self.bust = 1
    for (self.i = 0; self.i < 12; self.i += 1)
        instance_create(((self.x + 20) + (self.i * 6)), ((self.y + 20) + random(25)), obj_dustball_pilebreak)
}
