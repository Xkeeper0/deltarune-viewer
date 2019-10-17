if (self.myinteract == 0)
    self.facing = self.dfacing
scr_npcdir()
if (instance_exists(obj_face) && (global.fc == 1))
    self.image_index = obj_face.face_index
else
    self.image_index = 0
