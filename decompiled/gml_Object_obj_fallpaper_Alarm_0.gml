if instance_exists(obj_insideclosetcutscene)
{
    self.i = obj_insideclosetcutscene.papeno
    obj_insideclosetcutscene.pape[self.i] = self.id
    with(obj_insideclosetcutscene)
    {
        self.papeno = (self.papeno + 1)
    }
}
