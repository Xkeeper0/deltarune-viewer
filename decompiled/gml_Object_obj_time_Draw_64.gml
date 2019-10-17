if (self.quit_timer >= 1)
    draw_sprite_ext(scr_84_get_sprite("spr_quitmessage"), (self.quit_timer / 7), 4, 4, 2, 2, 0, 0x00FFFFFF, (self.quit_timer / 15))
if scr_debug()
    scr_84_debug(0)
