global.time += 1
if scr_debug()
{
    if scr_84_debug(1)
        return;
    if keyboard_check_pressed(vk_f10)
    {
        self.screen_name = (string(self.screenshot_number) + "_shot.png")
        screen_save(self.screen_name)
        self.screenshot_number += 1
    }
}
if keyboard_check(vk_escape)
{
    if (self.quit_timer < 0)
        self.quit_timer = 0
    self.quit_timer += 1
    if (self.quit_timer >= 30)
        game_end()
}
else
    self.quit_timer -= 2
if keyboard_check_pressed(vk_f4)
    self.fullscreen_toggle = 1
if (self.fullscreen_toggle == 1)
{
    self.fullscreen_toggle = 0
    if window_get_fullscreen()
    {
        window_set_fullscreen(0)
        ini_open("true_config.ini")
        ini_write_real("SCREEN", "FULLSCREEN", 0)
        ini_close()
    }
    else
    {
        window_set_fullscreen(1)
        ini_open("true_config.ini")
        ini_write_real("SCREEN", "FULLSCREEN", 1)
        ini_close()
    }
}
if (self.window_center_toggle == 2)
{
    window_center()
    self.window_center_toggle = 0
}
if (self.window_center_toggle == 1)
    self.window_center_toggle = 2
for (self.i = 0; self.i < 10; self.i += 1)
{
    global.input_released[self.i] = 0
    global.input_pressed[self.i] = 0
}
self.gamepad_check_timer += 1
if (self.gamepad_check_timer >= 90)
{
    if gamepad_is_connected(0)
    {
        self.gamepad_active = 1
        self.gamepad_id = 0
    }
    else
        self.gamepad_active = 0
    self.gamepad_check_timer = 0
}
if (self.gamepad_active == 1)
{
    for (self.i = 0; self.i < 4; self.i += 1)
    {
        if (keyboard_check(global.input_k[self.i]) || (gamepad_button_check(0, global.input_g[self.i]) || scr_gamepad_axis_check(0, self.i)))
        {
            if (global.input_held[self.i] == 0)
                global.input_pressed[self.i] = 1
            global.input_held[self.i] = 1
        }
        else
        {
            if (global.input_held[self.i] == 1)
                global.input_released[self.i] = 1
            global.input_held[self.i] = 0
        }
    }
    for (self.i = 4; self.i < 10; self.i += 1)
    {
        if (keyboard_check(global.input_k[self.i]) || gamepad_button_check(0, global.input_g[self.i]))
        {
            if (global.input_held[self.i] == 0)
                global.input_pressed[self.i] = 1
            global.input_held[self.i] = 1
        }
        else
        {
            if (global.input_held[self.i] == 1)
                global.input_released[self.i] = 1
            global.input_held[self.i] = 0
        }
    }
}
else
{
    for (self.i = 0; self.i < 10; self.i += 1)
    {
        if keyboard_check(global.input_k[self.i])
        {
            if (global.input_held[self.i] == 0)
                global.input_pressed[self.i] = 1
            global.input_held[self.i] = 1
        }
        else
        {
            if (global.input_held[self.i] == 1)
                global.input_released[self.i] = 1
            global.input_held[self.i] = 0
        }
    }
}
