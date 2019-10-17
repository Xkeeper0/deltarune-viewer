snd_free_all()
with (obj_battlecontroller)
    self.skipvictory = 1
with (obj_kingcutscene)
{
    with (self.king)
        self.visible = 1
}
if (global.flag[247] == 0)
{
    with (obj_kingcutscene)
    {
        with (self.king)
            self.sprite_index = spr_chainking_hurt
    }
}
instance_destroy()
