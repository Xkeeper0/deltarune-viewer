local.__prop = self.argument0
local.__bind = self.argument1
local.__val = self.argument2
local.__backinfo = __background_get_element(local.__bind)
__background_set_internal(local.__prop, local.__bind, local.__val, local.__backinfo)
local.__res = __background_get_internal(local.__prop, local.__bind, local.__backinfo)
return local.__res
