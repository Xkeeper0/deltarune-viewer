if (self.siner > 2)
{
    draw_background_ext(IMAGE_DEPTH, 160, 120, (1 + self.xstretch), (1 + self.ystretch), 0, self.image_blend, (((0.2 + self.alpha) - self.o_insurance) + self.b_insurance))
    draw_background_ext(IMAGE_DEPTH, 160, 120, (-1 - self.xstretch), (1 + self.ystretch), 0, self.image_blend, (((0.2 + self.alpha) - self.o_insurance) + self.b_insurance))
    draw_background_ext(IMAGE_DEPTH, 160, 120, (-1 - self.xstretch), (-1 - self.ystretch), 0, self.image_blend, (((0.2 + self.alpha) - self.o_insurance) + self.b_insurance))
    draw_background_ext(IMAGE_DEPTH, 160, 120, (1 + self.xstretch), (-1 - self.ystretch), 0, self.image_blend, (((0.2 + self.alpha) - self.o_insurance) + self.b_insurance))
}
