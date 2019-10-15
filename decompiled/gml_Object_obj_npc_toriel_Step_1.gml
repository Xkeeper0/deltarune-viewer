if (self.myinteract == 0)
    self.facing = self.dfacing
scr_npcdir()
if instance_exists(obj_face)
    _temp_local_var_1 = (global.fc == 1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.image_index = obj_face.face_index
else
    self.image_index = 0
