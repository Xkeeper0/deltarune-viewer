draw_self()
if (self.heartwagon == 1)
{
    draw_sprite(spr_wheelbarrow_parts, 4, (self.wagon.x + 5), (self.wagon.y + 1))
    draw_sprite(spr_wheelbarrow_parts, 3, ((((self.wagon.x + 5) + self.heartx) + random((self.cageamt * 2))) - random((self.cageamt * 2))), ((((self.wagon.y + 1) + self.hearty) + random((self.cageamt * 2))) - random((self.cageamt * 2))))
    draw_sprite(spr_wheelbarrow_parts, 2, (((self.wagon.x + 5) + random(self.cageamt)) - random(self.cageamt)), (((self.wagon.y + 1) + random(self.cageamt)) - random(self.cageamt)))
    draw_sprite(spr_wheelbarrow_parts, 1, (self.wagon.x + 5), (self.wagon.y + 1))
}
