self.block = instance_create(self.x, self.y, obj_soliddark)
self.block.image_xscale = self.image_xscale
self.block.image_yscale = self.image_yscale
self.destroymarker = 0
if (self.room == room_forest_area5)
{
    self.talkto = instance_create(self.x, self.y, obj_readable_room1)
    self.talkto.image_xscale = self.image_xscale
    self.talkto.image_yscale = self.image_yscale
    self.tree = instance_create((self.x - 40), (self.y - 120), obj_blocktree_bg)
    with (self.tree)
        scr_depth()
    if (global.flag[237] > 0)
    {
        with (self.tree)
            instance_destroy()
        with (self.block)
            instance_destroy()
    }
}
