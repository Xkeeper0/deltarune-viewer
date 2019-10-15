if (~ variable_global_exists("lang_loaded"@3376))
    global.lang_loaded = ""@2240
if (~ variable_global_exists("lang"@1565))
    global.lang = "en"@2775
if (global.lang_loaded != global.lang)
{
    global.lang_loaded = global.lang
    if variable_global_exists("lang_map"@3371)
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
    global.chemg_last_get_font = ""@2240
    if (global.lang == "ja"@1566)
    {
        local.fm = global.font_map
        ds_map_add(local.fm, "main"@1558, 7)
        ds_map_add(local.fm, "mainbig"@1561, 10)
        ds_map_add(local.fm, "tinynoelle"@1563, 9)
        ds_map_add(local.fm, "dotumche"@1564, 8)
        ds_map_add(local.fm, "comicsans"@1562, 5)
        ds_map_add(local.fm, "small"@3384, 6)
        local.sm = global.chemg_sprite_map
        ds_map_add(local.sm, "spr_bnamekris"@1838, 680)
        ds_map_add(local.sm, "spr_bnameralsei"@1840, 681)
        ds_map_add(local.sm, "spr_bnamesusie"@1839, 682)
        ds_map_add(local.sm, "spr_btact"@1828, 683)
        ds_map_add(local.sm, "spr_btdefend"@1832, 684)
        ds_map_add(local.sm, "spr_btfight"@1825, 685)
        ds_map_add(local.sm, "spr_btitem"@1830, 686)
        ds_map_add(local.sm, "spr_btspare"@1831, 688)
        ds_map_add(local.sm, "spr_bttech"@1829, 687)
        ds_map_add(local.sm, "spr_darkmenudesc"@3386, 821)
        ds_map_add(local.sm, "spr_dmenu_captions"@3387, 799)
        ds_map_add(local.sm, "spr_quitmessage"@3388, 1014)
        ds_map_add(local.sm, "spr_thrashbody_b"@3389, 729)
        ds_map_add(local.sm, "spr_thrashfoot_b"@3390, 727)
        ds_map_add(local.sm, "spr_thrashlogo"@3391, 733)
        ds_map_add(local.sm, "spr_thrashstats"@3392, 743)
        ds_map_add(local.sm, "spr_fieldmuslogo"@3393, 863)
        local.sndm = global.chemg_sound_map
        ds_map_add(local.sndm, "snd_joker_anything"@3395, 130)
        ds_map_add(local.sndm, "snd_joker_chaos"@3396, 131)
        ds_map_add(local.sndm, "snd_joker_metamorphosis"@3397, 132)
        ds_map_add(local.sndm, "snd_joker_neochaos"@3398, 133)
    }
    else
    {
        local.fm = global.font_map
        ds_map_add(local.fm, "main"@1558, 3)
        ds_map_add(local.fm, "mainbig"@1561, 2)
        ds_map_add(local.fm, "tinynoelle"@1563, 0)
        ds_map_add(local.fm, "dotumche"@1564, 1)
        ds_map_add(local.fm, "comicsans"@1562, 11)
        ds_map_add(local.fm, "small"@3384, 4)
        local.sm = global.chemg_sprite_map
        ds_map_add(local.sm, "spr_bnamekris"@1838, 659)
        ds_map_add(local.sm, "spr_bnameralsei"@1840, 660)
        ds_map_add(local.sm, "spr_bnamesusie"@1839, 661)
        ds_map_add(local.sm, "spr_btact"@1828, 662)
        ds_map_add(local.sm, "spr_btdefend"@1832, 664)
        ds_map_add(local.sm, "spr_btfight"@1825, 665)
        ds_map_add(local.sm, "spr_btitem"@1830, 669)
        ds_map_add(local.sm, "spr_btspare"@1831, 666)
        ds_map_add(local.sm, "spr_bttech"@1829, 671)
        ds_map_add(local.sm, "spr_darkmenudesc"@3386, 810)
        ds_map_add(local.sm, "spr_dmenu_captions"@3387, 796)
        ds_map_add(local.sm, "spr_quitmessage"@3388, 916)
        ds_map_add(local.sm, "spr_thrashbody_b"@3389, 728)
        ds_map_add(local.sm, "spr_thrashfoot_b"@3390, 726)
        ds_map_add(local.sm, "spr_thrashlogo"@3391, 732)
        ds_map_add(local.sm, "spr_thrashstats"@3392, 735)
        ds_map_add(local.sm, "spr_fieldmuslogo"@3393, 862)
        local.sndm = global.chemg_sound_map
        ds_map_add(local.sndm, "snd_joker_anything"@3395, 125)
        ds_map_add(local.sndm, "snd_joker_chaos"@3396, 122)
        ds_map_add(local.sndm, "snd_joker_metamorphosis"@3397, 127)
        ds_map_add(local.sndm, "snd_joker_neochaos"@3398, 128)
    }
}
