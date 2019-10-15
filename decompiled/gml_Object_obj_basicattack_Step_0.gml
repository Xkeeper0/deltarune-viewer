if (self.critical == 1)
{
    self.image_xscale = (self.image_xscale + 0.1)
    self.image_yscale = (self.image_yscale + 0.1)
}
if (self.image_index >= self.maxindex)
    instance_destroy()
