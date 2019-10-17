var xx = self.argument0
var yy = self.argument1
var str = self.argument2
var __txtcolor__ = draw_get_color()
draw_set_colour(0x00000000)
draw_text((xx - 1), (yy - 1), str)
draw_text((xx + 1), (yy - 1), str)
draw_text((xx - 1), (yy + 1), str)
draw_text((xx + 1), (yy + 1), str)
draw_set_colour(__txtcolor__)
draw_text(xx, yy, str)
