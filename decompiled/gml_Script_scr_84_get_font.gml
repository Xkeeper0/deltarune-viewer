scr_84_init_localization()
if (~ variable_global_exists("chemg_last_get_font"@3367))
    global.chemg_last_get_font = ""@2240
if (self.argument0 != global.chemg_last_get_font)
{
    global.chemg_last_get_font = self.argument0
    show_debug_message(("get font: "@3368 + self.argument0))
}
return ds_map_find_value(global.font_map, self.argument0)
