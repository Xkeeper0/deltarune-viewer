if (self.image_xscale <= 1)
{
    self.image_yscale += 0.2
    self.image_xscale += 0.2
    self.image_alpha += 0.2
    if (self.image_xscale >= 1)
        self.active = 1
}
scr_destroyoutside()
