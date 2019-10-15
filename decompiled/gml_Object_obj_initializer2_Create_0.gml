ini_open("true_config.ini"@3518)
global.lang = ini_read_string("LANG"@3519, "LANG"@3519, "en"@2775)
ini_close()
global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789"@7398, 20, 0)
global.hpfont = font_add_sprite_ext(spr_numbersfontsmall, scr_84_get_lang_string("obj_initializer2_slash_Create_0_gml_2_0"@10050), 0, 2)
scr_gamestart()
self.i = 0
while(true)
{
    if (self.i < 100)
    {
        global.tempflag[self.i] = 0
        self.i = (self.i + 1)
        continue
    }
    break
}
global.heartx = 300
global.hearty = 220
audio_group_load(1)
if (~ instance_exists(obj_time))
    instance_create(0, 0, obj_time)
