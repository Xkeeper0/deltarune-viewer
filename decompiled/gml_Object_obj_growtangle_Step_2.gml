if (self.keep == 1)
{
    if instance_exists(obj_heart)
    {
        if ((self.path_speed != 0) || ((self.speed != 0) || (self.megakeep == 1)))
        {
            self.lborder = (self.x - (self.sprite_width / 2))
            self.rborder = (self.x + (self.sprite_width / 2))
            self.uborder = (self.y - (self.sprite_height / 2))
            self.dborder = (self.y + (self.sprite_height / 2))
            if (obj_heart.x < (self.lborder + 5))
                obj_heart.x = (self.lborder + 5)
            if (obj_heart.x > (self.rborder - 22))
                obj_heart.x = (self.rborder - 22)
            if (obj_heart.y < (self.uborder + 5))
                obj_heart.y = (self.uborder + 5)
            if (obj_heart.y > (self.dborder - 22))
                obj_heart.y = (self.dborder - 22)
        }
    }
}
