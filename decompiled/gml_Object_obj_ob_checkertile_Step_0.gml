if (global.interact == 0)
    self.timer = (self.timer + 1)
if (self.timer >= 0)
    _temp_local_var_1 = (self.timer <= 10)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    self.image_alpha = (self.timer / 10)
if (self.timer == 10)
    self.active = 1
if (self.timer >= 20)
{
    self.image_alpha = (3 - (self.timer / 10))
    self.active = 0
    if (self.image_alpha <= 0)
    {
        if (self.room == room_field_checkers1)
            self.x = (self.x - 80)
        if (self.room == room_field_checkers4)
        {
            self.x = (self.x - 40)
            self.y = (self.y + 40)
            if (self.y >= 350)
            {
                self.y = 240
                self.x = (self.x + 120)
            }
        }
        if (self.room == room_field_checkers6)
        {
            self.x = (self.x - 40)
            self.y = (self.y + 40)
            if (self.y >= 310)
            {
                self.y = 240
                self.x = (self.x + 80)
            }
        }
        self.timer = -10
        if (self.room == room_field_checkers6)
            self.timer = -6
        if (self.room == room_field_checkers4)
            self.timer = -4
        self.image_alpha = 0
    }
}
if (self.x < 500)
    instance_destroy()
