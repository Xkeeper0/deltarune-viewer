local.__prop = self.argument0
local.__index = self.argument1
local.__val = self.argument2
switch local.__prop
{
    case e__VW.XView:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_pos(local.__cam, local.__val, camera_get_view_y(local.__cam))
        }
        break
    
    case 1:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_pos(local.__cam, camera_get_view_x(local.__cam), local.__val)
        }
        break
    
    case 2:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_size(local.__cam, local.__val, camera_get_view_height(local.__cam))
        }
        break
    
    case 3:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_size(local.__cam, camera_get_view_width(local.__cam), local.__val)
        }
        break
    
    case 4:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_angle(local.__cam, local.__val)
        }
        break
    
    case 5:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_border(local.__cam, local.__val, camera_get_view_border_y(local.__cam))
        }
        break
    
    case 6:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_border(local.__cam, camera_get_view_border_x(local.__cam), local.__val)
        }
        break
    
    case 7:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_speed(local.__cam, local.__val, camera_get_view_speed_y(local.__cam))
        }
        break
    
    case 8:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_speed(local.__cam, camera_get_view_speed_x(local.__cam), local.__val)
        }
        break
    
    case 9:
        {
            local.__cam = view_get_camera(local.__index)
            camera_set_view_target(local.__cam, local.__val)
        }
        break
    
    case 10:
        {
            self.__res = view_set_visible(local.__index, local.__val)
        }
        break
    
    case 11:
        {
            self.__res = view_set_xport(local.__index, local.__val)
        }
        break
    
    case 12:
        {
            self.__res = view_set_yport(local.__index, local.__val)
        }
        break
    
    case 13:
        {
            self.__res = view_set_wport(local.__index, local.__val)
        }
        break
    
    case 14:
        {
            self.__res = view_set_hport(local.__index, local.__val)
        }
        break
    
    case 15:
        {
            self.__res = view_set_camera(local.__index, local.__val)
        }
        break
    
    case 16:
        {
            self.__res = view_set_surface_id(local.__index, local.__val)
        }
        break
    
    default:
        break
    
}

return 0
