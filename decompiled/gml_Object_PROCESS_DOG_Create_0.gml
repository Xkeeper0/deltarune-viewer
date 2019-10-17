self.visible = 1
self.image_xscale = 2
self.image_yscale = 2
self.x = (self.room_width / 2)
self.y = (self.room_height / 2)
self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG = snd_init("dogcheck.ogg")
mus_loop_ext(self.SONG_THAT_EMERGES_FROM_A_SLEEPING_DOG, 1, (0.9 + random(0.1)))
self.image_speed = 0.05
window_set_caption(scr_84_get_lang_string("PROCESS_DOG_slash_Create_0_gml_12_0"))
