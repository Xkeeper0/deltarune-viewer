if (self.aster == 1)
    _temp_local_var_1 = (self.autoaster == 1)
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    self.length = (self.length + 2)
    self.mystring = string_insert(scr_84_get_lang_string("scr_asterskip_slash_scr_asterskip_gml_4_0"@133), self.mystring, self.i)
}
if (self.aster == 2)
    self.aster = 1
