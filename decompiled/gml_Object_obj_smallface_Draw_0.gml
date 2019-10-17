if (self.facealpha < 1)
    self.facealpha += 0.2
draw_sprite_ext(self.sprite_index, self.image_index, self.x, self.y, self.image_xscale, self.image_yscale, self.image_angle, self.image_blend, self.facealpha)
draw_set_alpha(self.facealpha)
if ((self.type == 0) || (self.type == 3))
{
    scr_84_set_draw_font("main")
    draw_set_color(self.mycolor)
    draw_text((self.x + 70), (self.y + 10), string_hash_to_newline(self.mystring))
}
if ((self.type == 1) && ((self.active == 1) && (self.getrid == 0)))
{
    scr_84_set_draw_font("main")
    draw_set_color(self.mycolor)
    draw_text((self.x + 70), (self.y + 15), string_hash_to_newline(self.mystring))
    self.finished = 1
}
if ((self.type == 2) || (self.type == 4))
{
    if (self.active == 1)
    {
        scr_84_set_draw_font("main")
        draw_set_color(self.mycolor)
        if (self.finished == 0)
        {
            self.partstring += string_char_at(self.mystring, self.part)
            self.part += 1
            if (self.part >= (string_length(self.mystring) + 1))
                self.finished = 1
        }
        draw_text(((self.x + 70) + random(1)), ((self.y + 15) + random(1)), string_hash_to_newline(self.partstring))
    }
}
if instance_exists(self.writergod)
{
    if ((self.finished == 1) && (self.getrid == 0))
    {
        with (self.writergod)
        {
            if (self.halt == 0)
                self.halt = 1
        }
        self.finished = 2
    }
}
else
    instance_destroy()
if (self.getrid == 1)
{
    self.direction = (-self.nowdir)
    self.speed += 2
    if ((self.type == 3) || (self.type == 4))
        instance_destroy()
}
draw_set_alpha(1)
