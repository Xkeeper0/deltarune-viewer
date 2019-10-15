local.xx = self.argument0
local.yy = self.argument1
local.str = self.argument2
local.__txtcolor__ = draw_get_color()
draw_set_colour(0x000000)
draw_text((local.xx - 1), (local.yy - 1), local.str)
draw_text((local.xx + 1), (local.yy - 1), local.str)
draw_text((local.xx - 1), (local.yy + 1), local.str)
draw_text((local.xx + 1), (local.yy + 1), local.str)
draw_set_colour(local.__txtcolor__)
draw_text(local.xx, local.yy, local.str)
