self.blend = 0x00FFFFFF
if (self.type == 0)
    self.blend = 0x000000FF
if (self.type == 1)
    self.blend = 0x0040A0FF
if (self.type == 2)
    self.blend = 0x0000FFFF
if (self.type == 3)
    self.blend = 0x00800080
if (self.myinteract != 3)
{
    self.siner = 0
    draw_sprite_ext(spr_puzzlemaster_body, self.type, self.x, self.y, 2, 2, 0, 0x00FFFFFF, 1)
    draw_sprite_ext(spr_puzzlemaster_face0, self.type, (self.x + 24), (self.y + 16), 2, 2, 0, self.blend, 1)
    if (self.beanie[0] == 1)
        draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 24), (self.y - 2), 2, 2, 0, self.blend, 1)
    if (self.beanie[1] == 1)
        draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 2), (self.y - 8), 2, 2, 0, self.blend, 1)
    if (self.beanie[2] == 1)
        draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 44), (self.y - 8), 2, 2, 0, self.blend, 1)
}
if (self.myinteract == 3)
{
    self.siner += 1
    if (global.flag[20] == 0)
    {
        draw_sprite_ext(spr_puzzlemaster_body, self.type, self.x, (self.y - (sin((self.siner / 4)) * 3)), 2, (2 + (sin((self.siner / 4)) * 0.1)), 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_puzzlemaster_face0, self.type, ((self.x + 24) + (sin((self.siner / 8)) * 4)), ((self.y + 16) + (sin((self.siner / 4)) * 2)), 2, 2, 0, self.blend, 1)
        if (self.beanie[0] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, ((self.x + 24) + sin((self.siner / 8))), ((self.y - 2) - (sin((self.siner / 4)) * 4)), 2, 2, 0, self.blend, 1)
        if (self.beanie[1] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, ((self.x + 2) + sin((self.siner / 8))), ((self.y - 8) - (sin((self.siner / 4)) * 4)), 2, 2, 0, self.blend, 1)
        if (self.beanie[2] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, ((self.x + 44) + sin((self.siner / 8))), ((self.y - 8) - (sin((self.siner / 4)) * 4)), 2, 2, 0, self.blend, 1)
    }
    if (global.flag[20] == 1)
    {
        self.r = choose(-1, 0, 1)
        self.r2 = choose(-1, 0, 1)
        draw_sprite_ext(spr_puzzlemaster_body, self.type, self.x, self.y, 2, 2, 0, 0x00FFFFFF, 1)
        draw_sprite_ext(spr_puzzlemaster_face1, self.type, ((self.x + 24) + sin(self.siner)), (self.y + 16), 2, 2, 0, 0x00FFFFFF, 1)
        if (self.beanie[0] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 24), ((self.y - 12) + sin(self.siner)), 2, 2, 0, self.blend, 1)
        if (self.beanie[1] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 2), ((self.y - 18) + sin(self.siner)), 2, 2, 0, self.blend, 1)
        if (self.beanie[2] == 1)
            draw_sprite_ext(spr_puzzlemaster_beanie, self.type, (self.x + 44), ((self.y - 18) + sin(self.siner)), 2, 2, 0, self.blend, 1)
    }
}
