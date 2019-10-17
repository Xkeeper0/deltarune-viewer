audio_stop_all()
snd_play(snd_hurt1)
if (self.room != room_forest_fightsusie)
{
    global.screenshot = sprite_create_from_surface(self.application_surface, 0, 0, __view_get(2, 0), __view_get(3, 0), false, false, 0, 0)
    snd_free_all()
    room_goto(room_gameover)
}
else
{
    global.entrance = 0
    global.tempflag[9] = 1
    room_goto(room_forest_savepoint3)
}
