if (!variable_global_exists("lang_loaded"))
    global.lang_loaded = ""
if (!variable_global_exists("lang"))
    global.lang = "en"
if (global.lang_loaded != global.lang)
{
    global.lang_loaded = global.lang
    if variable_global_exists("lang_map")
    {
        ds_map_destroy(global.lang_map)
        ds_map_destroy(global.font_map)
        ds_map_destroy(global.chemg_sprite_map)
        ds_map_destroy(global.chemg_sound_map)
    }
    global.lang_map = ds_map_create()
    global.font_map = ds_map_create()
    global.chemg_sprite_map = ds_map_create()
    global.chemg_sound_map = ds_map_create()
    scr_84_lang_load()
    global.chemg_last_get_font = ""
    if (global.lang == "ja")
    {
        var fm = global.font_map
        ds_map_add(fm, "main", 7)
        ds_map_add(fm, "mainbig", 10)
        ds_map_add(fm, "tinynoelle", 9)
        ds_map_add(fm, "dotumche", 8)
        ds_map_add(fm, "comicsans", 5)
        ds_map_add(fm, "small", 6)
        var sm = global.chemg_sprite_map
        ds_map_add(sm, "spr_bnamekris", 680)
        ds_map_add(sm, "spr_bnameralsei", 681)
        ds_map_add(sm, "spr_bnamesusie", 682)
        ds_map_add(sm, "spr_btact", 683)
        ds_map_add(sm, "spr_btdefend", 684)
        ds_map_add(sm, "spr_btfight", 685)
        ds_map_add(sm, "spr_btitem", 686)
        ds_map_add(sm, "spr_btspare", 688)
        ds_map_add(sm, "spr_bttech", 687)
        ds_map_add(sm, "spr_darkmenudesc", 821)
        ds_map_add(sm, "spr_dmenu_captions", 799)
        ds_map_add(sm, "spr_quitmessage", 1014)
        ds_map_add(sm, "spr_thrashbody_b", 729)
        ds_map_add(sm, "spr_thrashfoot_b", 727)
        ds_map_add(sm, "spr_thrashlogo", 733)
        ds_map_add(sm, "spr_thrashstats", 743)
        ds_map_add(sm, "spr_fieldmuslogo", 863)
        var sndm = global.chemg_sound_map
        ds_map_add(sndm, "snd_joker_anything", 130)
        ds_map_add(sndm, "snd_joker_chaos", 131)
        ds_map_add(sndm, "snd_joker_metamorphosis", 132)
        ds_map_add(sndm, "snd_joker_neochaos", 133)
    }
    else
    {
        fm = global.font_map
        ds_map_add(fm, "main", 3)
        ds_map_add(fm, "mainbig", 2)
        ds_map_add(fm, "tinynoelle", 0)
        ds_map_add(fm, "dotumche", 1)
        ds_map_add(fm, "comicsans", 11)
        ds_map_add(fm, "small", 4)
        sm = global.chemg_sprite_map
        ds_map_add(sm, "spr_bnamekris", 659)
        ds_map_add(sm, "spr_bnameralsei", 660)
        ds_map_add(sm, "spr_bnamesusie", 661)
        ds_map_add(sm, "spr_btact", 662)
        ds_map_add(sm, "spr_btdefend", 664)
        ds_map_add(sm, "spr_btfight", 665)
        ds_map_add(sm, "spr_btitem", 669)
        ds_map_add(sm, "spr_btspare", 666)
        ds_map_add(sm, "spr_bttech", 671)
        ds_map_add(sm, "spr_darkmenudesc", 810)
        ds_map_add(sm, "spr_dmenu_captions", 796)
        ds_map_add(sm, "spr_quitmessage", 916)
        ds_map_add(sm, "spr_thrashbody_b", 728)
        ds_map_add(sm, "spr_thrashfoot_b", 726)
        ds_map_add(sm, "spr_thrashlogo", 732)
        ds_map_add(sm, "spr_thrashstats", 735)
        ds_map_add(sm, "spr_fieldmuslogo", 862)
        sndm = global.chemg_sound_map
        ds_map_add(sndm, "snd_joker_anything", 125)
        ds_map_add(sndm, "snd_joker_chaos", 122)
        ds_map_add(sndm, "snd_joker_metamorphosis", 127)
        ds_map_add(sndm, "snd_joker_neochaos", 128)
    }
}
