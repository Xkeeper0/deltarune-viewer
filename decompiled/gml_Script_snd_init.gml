self.initsongvar = ("mus/" + self.argument0)
self._mystream = audio_create_stream(self.initsongvar)
self._astream = instance_create(0, 0, obj_astream)
self._astream.mystream = self._mystream
return self._mystream;
