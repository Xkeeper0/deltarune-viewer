if ((self.alertcon >= 1) && ((self.frozen == 0) && (self.ignoresolid == 0)))
{
    if (collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_solidblock, 0, 1) || collision_rectangle(self.bbox_left, self.bbox_top, self.bbox_right, self.bbox_bottom, obj_solidenemy, 0, 1))
    {
        self.x -= self.hspeed
        self.y -= self.vspeed
        self.hspeed = 0
        self.vspeed = 0
    }
}
