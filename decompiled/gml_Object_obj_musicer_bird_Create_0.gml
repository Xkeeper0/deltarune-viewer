if (self.room == room_field_start)
    _temp_local_var_1 = 1
else
    _temp_local_var_1 = (self.room == room_field_forest)
if _temp_local_var_1
    global.flag[31] = 0
if (~ snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("bird.ogg"@6516)
    global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1)
}
self.image_index = 1
self.image_speed = 0
self.visible = 1
if (self.room != room_field_start)
{
    self.visible = 0
    instance_destroy()
}
