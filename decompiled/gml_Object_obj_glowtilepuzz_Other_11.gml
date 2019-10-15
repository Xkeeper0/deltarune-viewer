if (self.room == room_field_puzzle1)
{
    self.i = 0
    while(true)
    {
        if (self.i < self.wonmax)
        {
            with(self.block[self.i])
            {
                instance_destroy()
            }
            self.block[self.i] = instance_create((1280 + (self.i * 40)), 280, obj_soliddark)
            self.block[self.i].image_yscale = 2
            with(self.spike1[self.i])
            {
                self.image_index = 0
            }
            with(self.spike2[self.i])
            {
                self.image_index = 0
            }
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
self.wonamt = 0
