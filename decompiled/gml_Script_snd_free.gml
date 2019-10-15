if instance_exists(obj_astream)
{
    self._xstream = self.argument0
    obj_astream.bstream = self._xstream
    with(obj_astream)
    {
        if (self.bstream == self.mystream)
            instance_destroy()
    }
}
