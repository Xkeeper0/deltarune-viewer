if (self.t == 0)
    _temp_local_var_1 = (self.kingcon == 0)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.sprite_index = spr_chainking_toss
    self.image_index = 0
    self.image_speed = 0.5
    self.kingcon = 1
    self.soundplayed = 0
    if (self.type == 2)
        _temp_local_var_2 = (self.subtype == 1)
    else
        _temp_local_var_2 = 0
    if _temp_local_var_2
        snd_play(snd_dadlaugh)
    else
        snd_play(snd_dadblast)
}
if (self.kingcon == 1)
{
    if (self.image_index >= 3)
    {
        if (self.image_index >= 2)
            _temp_local_var_3 = (self.soundplayed == 0)
        else
            _temp_local_var_3 = 0
        if _temp_local_var_3
        {
            snd_play(snd_criticalswing)
            self.soundplayed = 1
        }
        self.sprite_index = spr_chainking_toss_idle
        self.image_index = 0
        self.image_speed = 0.334
        self.kingcon = 2
        if (self.type == 0)
            self.chain = instance_create((self.x - 44), (self.y + 104), obj_chain_of_hell)
        if (self.type == 1)
            self.chain = instance_create((self.x - 24), (self.y + 104), obj_wavechain)
        if (self.type == 2)
            self.chain = instance_create((self.x - 24), (self.y + 104), obj_finalchain)
        scr_bullet_inherit(self.chain)
        self.chain.type = self.subtype
    }
}
if (self.type == 0)
{
    if (self.kingcon == 2)
    {
        if instance_exists(self.chain)
        {
            if (self.chain.chaincon == 3)
                self.image_speed = 0
            if (self.chain.chaincon >= 10)
            {
                self.sprite_index = spr_chainking_pullback
                self.image_speed = 0.25
                self.image_index = 0
                self.kingcon = 3
            }
        }
    }
    if (self.kingcon == 3)
    {
        if instance_exists(self.chain)
        {
            if (self.chain.chaincon >= 11)
            {
                self.sprite_index = spr_chainking_receive
                self.image_speed = 0.25
                self.image_index = 0
                self.kingcon = 4
            }
        }
    }
}
self.t = (self.t + 1)
