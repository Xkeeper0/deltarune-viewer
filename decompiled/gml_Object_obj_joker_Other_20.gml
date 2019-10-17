for (self.i = 0; self.i < 4; self.i += 1)
{
    global.maxhp[self.i] = self.remmaxhp[self.i]
    if (global.hp[self.i] >= global.maxhp[self.i])
        global.hp[self.i] = global.maxhp[self.i]
}
global.invc = self.reminvc
with (obj_joker_body)
{
    self.image_xscale = 2
    self.image_yscale = 2
    self.sprite_index = spr_joker_teleport
    self.sparedsprite = self.sprite_index
    self.image_index = 1
    self.image_speed = 0
}
if (global.monsterhp[self.myself] > 0)
{
    with (obj_joker_body)
    {
        self.x += 20
        self.y += 18
        scr_spareanim()
        self.x -= 20
        self.y -= 18
    }
}
with (obj_battlecontroller)
    self.skipvictory = 1
snd_free_all()
self.body.dancelv = 4
self.body.condition = 0
with (obj_jokerbg_triangle_real)
    self.on = 0
scr_monsterdefeat()
global.invc = self.reminvc
instance_destroy()
