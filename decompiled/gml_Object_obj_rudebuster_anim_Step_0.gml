self.image_index = (self.t / 2)
if (self.t >= 28)
{
    with(obj_herosusie)
    {
        self.visible = 1
    }
    instance_destroy()
}
if instance_exists(self.target)
{
    if (self.t == 10)
    {
        snd_play(snd_rudebuster_swing)
        self.blast = instance_create((self.x + 40), (self.y + 30), obj_rudebuster_bolt)
        self.blast.caster = self.caster
        self.blast.target = self.target
        self.blast.damage = self.damage
        self.blast.star = self.star
        if (self.red == 1)
            self.blast.red = 1
    }
}
self.t = (self.t + 1)
