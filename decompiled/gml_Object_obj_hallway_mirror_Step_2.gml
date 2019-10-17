with (self.shadow)
{
    self.x = obj_mainchara.x
    self.sprite_index = obj_mainchara.sprite_index
    self.image_index = obj_mainchara.image_index
    self.y = (192 - obj_mainchara.y)
    if (obj_mainchara.sprite_index == spr_krisd)
        self.sprite_index = spr_krisu
    if (obj_mainchara.sprite_index == spr_krisu)
        self.sprite_index = spr_krisd
    if (obj_mainchara.sprite_index == spr_krisl)
        self.sprite_index = spr_krisl
    if (obj_mainchara.sprite_index == spr_krisr)
        self.sprite_index = spr_krisr
}
