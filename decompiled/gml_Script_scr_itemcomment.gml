self.talkx = scr_charbox_x(self.argument0)
self.itemcomment = instance_create((self.talkx + self.xx), (self.yy + 460), obj_menuwriter)
self.itemcomment.msg = self.argument1
self.itemcomment.who = self.argument0
if (global.flag[32] == 1)
{
    with(self.itemcomment)
    {
        instance_destroy()
    }
}
