global.flag[31] = 1
self.shakecon = 0
self.charadjustcon = 0
self.rectcon = 0
self.rectspeed = 0
self.rect_alpha = 0
self.recty = 0
self.dir = 1
self.newcno = 0
self.cno = global.flag[239]
self.cmax = 5
self.bg_c[0] = 16777215
self.bg_c[1] = merge_color(0x00800000, 0x00FFFFFF, 0.5)
self.bg_c[2] = merge_color(0x0000FF00, 0x00FFFFFF, 0.5)
self.bg_c[3] = merge_color(0x00FF00FF, 0x00FFFFFF, 0.5)
self.bg_c[4] = merge_color(0x0040A0FF, 0x00FFFFFF, 0.5)
self.bg_c[5] = merge_color(0x00FFFF00, 0x00FFFFFF, 0.5)
self.bg_c[0] = merge_color(0x00404040, 0x00FFFFFF, 0.25)
self.bg_c[1] = merge_color(0x00404040, 0x00FFFFFF, 0.67)
self.bg_c[2] = merge_color(0x00404040, 0x00FFFFFF, 1)
self.bg_c[3] = merge_color(0x00808080, 0x00800000, 0.5)
self.prev_bg_c = self.bg_c[self.cno]
self.cur_bg_c = self.bg_c[self.cno]
self.ideal_bg_c = self.bg_c[self.cno]
self.merge_amt = 0
self.mergespeed = 0.1
self.mergecon = 0
self.mergetimer = 0
self.movecon = 0
self.movetimer = 0
self.rectspacing = 600
self.doorcon = 0
self.doorx = 40
self.floorno = 0
self.con = 0
if (global.plot < 165)
{
    self.con = 1
    global.interact = 1
    with (obj_caterpillarchara)
        instance_destroy()
}
self.jup = 0
self.a_timer = 0
