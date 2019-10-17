self.timer += 1
if (self.timer == 1)
    snd_free_all()
if (self.timer == 30)
{
    with (self.bg)
        instance_destroy()
    self.visible = 1
    self.x = global.heartx
    self.y = global.hearty
}
if (self.timer == 31)
    sprite_delete(global.screenshot)
if (self.timer == 50)
{
    snd_play(snd_break1)
    self.sprite_index = spr_heartbreak
    self.x -= 2
}
if (self.timer == 90)
{
    snd_play(snd_break2)
    self.visible = 0
    self.sh[0] = instance_create((self.x - 2), self.y, obj_marker)
    self.sh[1] = instance_create(self.x, (self.y + 3), obj_marker)
    self.sh[2] = instance_create((self.x + 2), (self.y + 6), obj_marker)
    self.sh[3] = instance_create((self.x + 8), self.y, obj_marker)
    self.sh[4] = instance_create((self.x + 10), (self.y + 3), obj_marker)
    self.sh[5] = instance_create((self.x + 12), (self.y + 6), obj_marker)
    for (self.i = 0; self.i < 6; self.i += 1)
    {
        with (self.sh[self.i])
        {
            self.direction = random(360)
            self.speed = 7
            self.gravity_direction = 270
            self.gravity = 0.2
            self.sprite_index = spr_heartshards
            self.image_speed = 0.2
        }
    }
    if (global.tempflag[3] >= 1)
        self.timer += 15
}
if (self.timer == 140)
    instance_create(0, 0, obj_fadeout)
if ((self.timer >= 80) && (self.timer < 150))
{
    if button1_p()
        self.Z_COUNT += 1
    if (self.Z_COUNT >= 4)
        scr_tempload()
}
if (self.timer == 150)
    room_goto(PLACE_FAILURE)
