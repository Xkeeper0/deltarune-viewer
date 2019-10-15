if instance_exists(obj_dialoguer)
{
    with(obj_dialoguer)
    {
        if instance_exists(self.writer)
        {
            self.wwx = self.writer.x
            self.wwy = self.writer.y
        }
        with(obj_face)
        {
            instance_destroy()
        }
        with(self.writer)
        {
            instance_destroy()
        }
        global.msc = (global.msc + 1)
        scr_text(global.msc)
        event_user(0)
    }
}
with(obj_choicer_old)
{
    instance_destroy()
}
