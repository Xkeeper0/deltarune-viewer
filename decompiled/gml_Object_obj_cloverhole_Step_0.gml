if instance_exists(obj_mainchara)
    self.distance = distance_to_object(obj_mainchara)
else
    self.distance = 999
if (self.holecon == 0)
{
    if (self.distance <= self.maxdist)
    {
        self.holecon = 1
        self.image_index = 0
        self.sprite_index = spr_cloverhole
    }
}
if (self.holecon == 1)
{
    if (self.distance <= (self.maxdist + 20))
    {
        self.image_index = (self.image_index + 0.5)
        if (self.image_index >= 10)
        {
            self.image_index = 0
            self.sprite_index = self.sprite_type[self.type]
            self.holecon = 2
        }
    }
    else
    {
        self.image_index = (self.image_index - 0.5)
        if (self.image_index <= 0)
        {
            self.image_index = 0
            self.holecon = 0
        }
    }
}
if (self.holecon == 2)
{
    self.image_index = (self.image_index + 0.334)
    if (self.distance > (self.maxdist + 10))
    {
        self.sprite_index = spr_cloverhole
        self.image_index = 10
        self.holecon = 1
    }
}
