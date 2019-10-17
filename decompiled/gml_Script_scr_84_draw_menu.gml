var array = self.argument0
var xx = self.argument1
var yy = self.argument2
var vspacing = self.argument3
var selection_indices = self.argument4
var func_depth = self.argument5
var menu_depth = self.argument6
var length = ds_list_size(array)
for (var i = 0; i < length; i += 3)
{
    var ndx = (i / 3)
    var type = ds_list_find_value(array, i)
    var item = ds_list_find_value(array, (i + 1))
    var name = ds_list_find_value(array, (i + 2))
    var selected = 0
    var prefix = "  "
    if (ndx == selection_indices[func_depth])
        selected = 1
    if selected
    {
        prefix = "> "
        if (func_depth > global.chemg_max_depth)
        {
            global.chemg_max_depth = func_depth
            global.chemg_cursor_y = yy
        }
    }
    if (type == "[group]")
        name = (("[ " + name) + "... ]")
    scr_84_draw_text_outline(xx, yy, (prefix + name))
    yy += vspacing
    if ((func_depth < menu_depth) && (ndx == selection_indices[func_depth]))
        yy = scr_84_draw_menu(item, (xx + 20), yy, vspacing, selection_indices, (func_depth + 1), menu_depth)
}
return yy;
