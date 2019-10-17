if (self.argument0 != -1)
{
    if (button1_p() && (self.talktimer > self.argument0))
        self.talktimer = self.talkmax
    self.talktimer += 1
    if (self.talktimer >= self.talkmax)
    {
        with (obj_writer)
            instance_destroy()
        global.mnfight = 2
    }
}
if (self.argument0 == -1)
{
    if (instance_exists(obj_writer) == 0)
        global.mnfight = 2
}
