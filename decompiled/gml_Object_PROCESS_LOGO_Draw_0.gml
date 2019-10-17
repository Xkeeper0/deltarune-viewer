if (self.PHASE == 0)
{
    self.siner += 1
    self.factor -= (0.003 + (self.siner / 900))
    if (self.factor < 0)
    {
        self.factor = 0
        self.PHASE = 1
    }
    for (self.i = 0; self.i < self.h; self.i += 1)
    {
        self.ia = ((self.siner / 25) - (abs((self.i - self.mid)) * 0.05))
        self.xoff = ((40 * sin(((self.siner / 5) + (self.i / 3)))) * self.factor)
        self.xoff2 = ((40 * sin((((self.siner / 5) + (self.i / 3)) + 0.6))) * self.factor)
        self.xoff3 = ((40 * sin((((self.siner / 5) + (self.i / 3)) + 1.2))) * self.factor)
        draw_sprite_part_ext(self.sprite_index, self.image_index, 0, self.i, self.w, 2, (self.x + self.xoff), (self.y + self.i), 1, 1, 0x00FFFFFF, ((1 - self.factor) / 2))
        draw_sprite_part_ext(self.sprite_index, self.image_index, 0, self.i, self.w, 2, (self.x + self.xoff2), (self.y + self.i), 1, 1, 0x00FFFFFF, ((1 - self.factor) / 2))
        draw_sprite_part_ext(self.sprite_index, self.image_index, 0, self.i, self.w, 2, (self.x + self.xoff3), (self.y + self.i), 1, 1, 0x00FFFFFF, ((1 - self.factor) / 2))
    }
}
if (self.PHASE == 1)
{
    draw_self()
    self.PHASETIMER += 1
    if (self.PHASETIMER >= 30)
    {
        self.siner = 0
        self.factor = 0
        self.PHASE = 2
        scr_windowcaption(scr_84_get_lang_string("PROCESS_LOGO_slash_Draw_0_gml_37_0"))
        global.tempflag[10] = 1
    }
}
if (self.PHASE == 2)
{
    if (self.PHASEPLUS == 0)
        self.siner += 0.5
    if (self.siner >= 20)
        self.PHASEPLUS = 1
    if (self.PHASEPLUS == 1)
    {
        self.siner += 0.5
        self.AA -= 0.02
        self.AB -= 0.08
    }
    draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, self.AB)
    self.mina = (self.siner / 30)
    if (self.mina >= 0.14)
        self.mina = 0.14
    self.factor2 += 0.05
    for (self.i = 0; self.i < 10; self.i += 1)
    {
        draw_sprite_ext(IMAGE_LOGO_CENTER, self.image_index, ((self.x + (self.w / 2)) - (sin(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), ((self.y + (self.h / 2)) - (cos(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, (self.mina * self.AA))
        draw_sprite_ext(IMAGE_LOGO_CENTER, self.image_index, ((self.x + (self.w / 2)) + (sin(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), ((self.y + (self.h / 2)) - (cos(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, (self.mina * self.AA))
        draw_sprite_ext(IMAGE_LOGO_CENTER, self.image_index, ((self.x + (self.w / 2)) - (sin(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), ((self.y + (self.h / 2)) + (cos(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, (self.mina * self.AA))
        draw_sprite_ext(IMAGE_LOGO_CENTER, self.image_index, ((self.x + (self.w / 2)) + (sin(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), ((self.y + (self.h / 2)) + (cos(((self.siner / 8) + (self.i / 2))) * (self.i * self.factor2))), self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, (self.mina * self.AA))
    }
    draw_sprite_ext(IMAGE_LOGO_CENTER_HEART, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, 0, 0x00FFFFFF, self.AA)
    if (self.AA <= -0.46)
        self.room_speed = 30
    if ((self.AA <= -0.5) && (self.skipped == 0))
    {
        if (self.ingame == 1)
            room_goto(room_ed)
        else
            room_goto(PLACE_MENU)
    }
}
if (self.ingame == 0)
{
    if (button1_p() && (self.skipped == 0))
    {
        self.fade = instance_create(0, 0, obj_fadeout)
        with (self.fade)
            self.fadespeed = 0.04
        snd_volume(self.NOISE, 0, 20)
        self.skipped = 1
    }
    if (self.skipped == 1)
    {
        self.skiptimer += 1
        if (self.skiptimer >= 28)
            self.room_speed = 30
        if (self.skiptimer >= 30)
            room_goto(PLACE_MENU)
    }
}
