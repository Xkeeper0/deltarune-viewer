self.siner = (self.siner + 1.5)
if (self.t >= 400)
{
    self.rs = (self.rs + 0.5)
    draw_set_color(0xFFFFFF)
    self.i = 1
    while(true)
    {
        if (self.i < 12)
        {
            draw_set_alpha(((self.rs / 16) - (self.i / 12)))
            draw_rectangle(((320 - (self.i * self.i)) - (self.rs * self.i)), 0, ((320 + (self.i * self.i)) + (self.rs * self.i)), 500, 0)
            self.i = (self.i + 1)
            continue
        }
        break
    }
    draw_set_alpha(1)
}
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, 1, 1, 0, 0xFFFFFF, (self.siner / 8))
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, (self.siner / 4), (self.siner / 4), 0, 0xFFFFFF, (1.6 - (self.siner / 16)))
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, (self.siner / 8), (self.siner / 8), 0, 0xFFFFFF, (1.6 - (self.siner / 24)))
self.t = (self.t + 1)
if (self.t >= 20)
{
    if (self.soundcon == 0)
    {
        self.soundcon = 1
        audio_play_sound(snd_usefountain, 50, 0)
    }
}
if (self.t >= 70)
    _temp_local_var_1 = (self.t <= 240)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    with(obj_darkfountain)
    {
        self.adjust = 1
        self.eyebody = (self.eyebody * 0.98)
    }
    self.y = (self.y - 1)
}
if (self.t >= 240)
    _temp_local_var_2 = (self.t < 245)
else
    _temp_local_var_2 = 0
if _temp_local_var_2
{
    with(obj_darkfountain)
    {
        self.adjust = 2
    }
    self.t = 300
}
if (self.t >= 390)
    _temp_local_var_3 = (self.t < 395)
else
    _temp_local_var_3 = 0
if _temp_local_var_3
{
    self.t = 400
    self.siner = 3
    if (self.soundcon == 1)
    {
        self.soundcon = 2
        audio_play_sound(snd_revival, 50, 0)
    }
}
if (self.t >= 450)
{
    self.ds2 = (self.ds2 + 0.02)
    draw_set_alpha(self.ds2)
    draw_set_color(0xFFFFFF)
    draw_rectangle(-10, -10, 999, 999, 0)
    draw_set_alpha(1)
}
if (self.t >= 520)
{
    self.ds3 = (self.ds3 + 0.01)
    draw_set_alpha(self.ds3)
    draw_set_color(0x000000)
    draw_rectangle(-10, -10, 999, 999, 0)
    draw_set_alpha(1)
}
if (self.t >= 650)
{
    global.entrance = 0
    global.interact = 1
    scr_become_light()
    snd_free_all()
    instance_create(0, 0, obj_persistentfadein)
    room_goto(room_school_unusedroom)
}
