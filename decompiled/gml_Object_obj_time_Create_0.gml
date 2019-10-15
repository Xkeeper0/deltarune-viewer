self.quit_timer = 0
self.keyboard_active = 1
self.gamepad_active = 1
self.gamepad_check_timer = 0
self.gamepad_id = 0
self.axis_value = 0.4
self.fullscreen_toggle = 0
self.window_center_toggle = 0
self.screenshot_number = 0
if (instance_number(obj_time) > 1)
    instance_destroy()
else
{
    self.display_height = display_get_height()
    self.display_width = display_get_width()
    self.window_size_multiplier = 1
    self._ww = 2
    while(true)
    {
        if (self._ww < 6)
        {
            if (self.display_width > (640 * self._ww))
                _temp_local_var_1 = (self.display_height > (480 * self._ww))
            else
                _temp_local_var_1 = 0
            if _temp_local_var_1
                self.window_size_multiplier = self._ww
            self._ww = (self._ww + 1)
            continue
        }
        break
    }
    if (self.window_size_multiplier > 1)
    {
        window_set_size((640 * self.window_size_multiplier), (480 * self.window_size_multiplier))
        self.window_center_toggle = 1
    }
    scr_controls_default()
    scr_ascii_input_names()
    self.i = 0
    while(true)
    {
        if (self.i < 10)
        {
            global.input_pressed[self.i] = 0
            global.input_held[self.i] = 0
            global.input_released[self.i] = 0
            self.i = (self.i + 1)
            continue
        }
        break
    }
}
