if ((self.room == room_field_start) || (self.room == room_field_forest))
    global.flag[31] = 0
if (!snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = snd_init("bird.ogg")
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
