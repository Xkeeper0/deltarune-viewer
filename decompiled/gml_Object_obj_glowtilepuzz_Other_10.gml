if (self.active == 0)
{
    self.active = 1
    self.failtimer = 0
    self.image_index = 0
    self.sprite_index = spr_hourglass_switch_on
    event_user(1)
    event_user(2)
}
