local.__prop = self.argument0
local.__index = self.argument1
local.__res = -1
switch local.__prop
{
    case e__VW.XView:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_x(local.__cam)
        }
        break
    
    case 1:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_y(local.__cam)
        }
        break
    
    case 2:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_width(local.__cam)
        }
        break
    
    case 3:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_height(local.__cam)
        }
        break
    
    case 4:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_angle(local.__cam)
        }
        break
    
    case 5:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_border_x(local.__cam)
        }
        break
    
    case 6:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_border_y(local.__cam)
        }
        break
    
    case 7:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_speed_x(local.__cam)
        }
        break
    
    case 8:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_speed_y(local.__cam)
        }
        break
    
    case 9:
        {
            local.__cam = view_get_camera(local.__index)
            local.__res = camera_get_view_target(local.__cam)
        }
        break
    
    case 10:
        {
            local.__res = view_get_visible(local.__index)
        }
        break
    
    case 11:
        {
            local.__res = view_get_xport(local.__index)
        }
        break
    
    case 12:
        {
            local.__res = view_get_yport(local.__index)
        }
        break
    
    case 13:
        {
            local.__res = view_get_wport(local.__index)
        }
        break
    
    case 14:
        {
            local.__res = view_get_hport(local.__index)
        }
        break
    
    case 15:
        {
            local.__res = view_get_camera(local.__index)
        }
        break
    
    case 16:
        {
            local.__res = view_get_surface_id(local.__index)
        }
        break
    
    default:
        break
    
}

return local.__res
