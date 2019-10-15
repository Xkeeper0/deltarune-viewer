if (self.room == room_cc_4f)
{
    if (global.flag[245] == 0)
    {
        self.bluhtotal = 0
        with(obj_bluhpainting)
        {
            if (self.bluh == 1)
                obj_cc_event.bluhtotal = (obj_cc_event.bluhtotal + 1)
        }
        if (self.bluhtotal >= 3)
        {
            snd_play(snd_splat)
            self.chest = instance_create(480, 980, obj_treasure_room)
            global.flag[245] = 1
        }
    }
}
