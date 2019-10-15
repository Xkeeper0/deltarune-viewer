local.name = (("lang_"@3408 + global.lang) + ".json"@3409)
local.orig_filename = ((self.working_directory + "lang/"@3411) + local.name)
local.new_filename = ((self.working_directory + "lang-new/"@3413) + local.name)
local.filename = local.orig_filename
local.type = "orig"@3415
show_debug_message(("loading lang: "@3416 + local.orig_filename))
local.orig_map = scr_84_load_map_json(local.orig_filename)
if file_exists(local.new_filename)
{
    local.new_map = scr_84_load_map_json(local.new_filename)
    local.new_date = real(ds_map_find_value(local.new_map, "date"@3421))
    local.orig_date = real(ds_map_find_value(local.orig_map, "date"@3421))
    show_debug_message(("orig_date: "@3424 + string(local.orig_date)))
    show_debug_message((" new_date: "@3425 + string(local.new_date)))
    if (local.new_date > local.orig_date)
    {
        show_debug_message("using new language file"@3426)
        ds_map_destroy(local.orig_map)
        local.orig_map = local.new_map
        local.filename = local.new_filename
        local.type = (("new("@3427 + string(local.new_date)) + ")"@3428)
    }
    else
        show_debug_message("using orig language file"@3429)
}
ds_map_destroy(global.lang_map)
global.lang_map = local.orig_map
show_debug_message(((("loaded: "@3430 + local.filename) + ", entries: "@3431) + string(ds_map_size(global.lang_map))))
return local.type
