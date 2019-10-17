if (self.state == 3)
{
    if (self.hurttimer > 0)
    {
        self.hurttimer = 0
        self.body.condition = 1
        self.body.siner = 0
        self.body.maxdist += (20 + (self.hurtamt / 5))
        if (self.body.maxdist < 30)
            self.body.maxdist = 30
        self.mhpratio = (global.monsterhp[self.myself] / global.monstermaxhp[self.myself])
        self.body.floatsinerspeed = (1 + (1 - self.mhpratio))
        if ((self.mhpratio <= 0.8) && (self.body.dancelv == 0))
            self.body.dancelv = 1
        if ((self.mhpratio <= 0.4) && (self.jturn < 17))
            self.body.dancelv = 3
        if ((self.mhpratio <= 0.2) && (self.jturn == 17))
            self.body.dancelv = 2
        if (self.mhpratio <= 0)
        {
            event_user(10)
            global.flag[241] = 6
        }
        if instance_exists(obj_jokerbg_triangle_real)
        {
            if (self.mhpratio > 0)
                obj_jokerbg_triangle_real.rotspeed = (1 + (1.5 - (self.mhpratio * 1.5)))
        }
        self.laughnoise = choose(0, 1, 2)
        if (self.laughnoise == 0)
            snd_play(snd_joker_laugh0)
        if (self.laughnoise == 1)
            snd_play(snd_joker_ha1)
        if (self.laughnoise == 2)
            snd_play(snd_joker_ha0)
    }
    self.hurttimer -= 1
    if (self.hurttimer < 0)
        self.state = 0
    else if (global.monster[self.myself] == 0)
    {
    }
}
if (self.state == 0)
{
    self.siner += 1
    self.thissprite = self.idlesprite
    if (self.flash == 1)
    {
        self.fsiner += 1
        self.body.fsiner = self.fsiner
        with (self.body)
        {
            d3d_set_fog(1, 16777215, 0, 1)
            if (self.dancelv == 0)
                draw_sprite_ext(spr_joker_main, 0, (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
            if (self.dancelv == 1)
                draw_sprite_ext(spr_joker_dance, (self.floatsiner / 3), (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
            if (self.dancelv == 2)
                draw_sprite_ext(spr_joker_tired, 0, (self.offx + self.flyx), (self.offy + self.fly), 2, 2, 0, self.image_blend, (((-cos((self.fsiner / 5))) * 0.4) + 0.6))
            d3d_set_fog(0, 0, 0, 0)
        }
    }
}
if (self.becomeflash == 0)
    self.flash = 0
self.becomeflash = 0
