if (global.interact == 0)
{
    if instance_exists(obj_starwalker_overworld)
    {
        self.bellcon = 1
        self.myinteract = 0
        self.image_speed = 0.25
        with(obj_overworldbulletparent)
        {
            self.active = 0
            instance_destroy()
        }
        snd_play(snd_bell)
        if (obj_starwalker_overworld.beatcon == 0)
        {
            if (self.room == room_forest_starwalker)
                _temp_local_var_1 = (~ instance_exists(obj_npc_room))
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
            {
                self.originalstarwalker = instance_create(2200, 200, obj_npc_room)
                if (self.x >= (self.room_width / 2))
                {
                    with(self.originalstarwalker)
                    {
                        self.x = 400
                    }
                }
            }
            with(obj_starwalker_overworld)
            {
                self.visible = 0
                self.beatcon = 1
                self.beattimer = 0
                with(obj_mainchara)
                {
                    self.battlemode = 0
                }
                self.dead = instance_create((self.x - 92), (self.y - 74), obj_starwalker_battle)
                with(self.dead)
                {
                    self.walkcon = 1
                    self.walktimer = 0
                }
                with(self.shadow)
                {
                    instance_destroy()
                }
            }
        }
    }
}
