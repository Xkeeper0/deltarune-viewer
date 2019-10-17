if (self.room == room_field_puzzle1)
{
    for (self.i = 0; self.i < self.wonmax; self.i += 1)
    {
        with (self.block[self.i])
            instance_destroy()
        self.block[self.i] = instance_create((1280 + (self.i * 40)), 280, obj_soliddark)
        self.block[self.i].image_yscale = 2
        with (self.spike1[self.i])
            self.image_index = 0
        with (self.spike2[self.i])
            self.image_index = 0
    }
}
self.wonamt = 0
