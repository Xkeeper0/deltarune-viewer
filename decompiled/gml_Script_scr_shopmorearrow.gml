if (self.pagemax > 0)
    draw_sprite_ext(spr_morearrow, 0, 370, (280 - (sin((self.cur_jewel / 12)) * 3)), 1, -1, 0, 0x00FFFFFF, 1)
if ((5 + self.pagemax) < 12)
{
    if (self.menu == 11)
    {
        if (global.item[(5 + self.pagemax)] != 0)
            draw_sprite_ext(spr_morearrow, 0, 370, (440 + (sin((self.cur_jewel / 12)) * 3)), 1, 1, 0, 0x00FFFFFF, 1)
    }
    else
        draw_sprite_ext(spr_morearrow, 0, 370, (440 + (sin((self.cur_jewel / 12)) * 3)), 1, 1, 0, 0x00FFFFFF, 1)
}
