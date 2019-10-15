local.objID = self.argument0
local.ret = 0
if (local.objID >= 0)
    _temp_local_var_1 = (local.objID < array_length_1d(global.__objectID2Depth))
else
    _temp_local_var_1 = 0
if _temp_local_var_1
    local.ret = global.__objectID2Depth[local.objID]
return local.ret
