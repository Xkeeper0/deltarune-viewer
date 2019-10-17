self.__returnvalue = 0
if (self.argument1 == 0)
{
    if (gamepad_axis_value(self.argument0, 1) <= (-self.axis_value))
        self.__returnvalue = 1
}
if (self.argument1 == 1)
{
    if (gamepad_axis_value(self.argument0, 0) >= self.axis_value)
        self.__returnvalue = 1
}
if (self.argument1 == 2)
{
    if (gamepad_axis_value(self.argument0, 1) >= self.axis_value)
        self.__returnvalue = 1
}
if (self.argument1 == 3)
{
    if (gamepad_axis_value(self.argument0, 0) <= (-self.axis_value))
        self.__returnvalue = 1
}
return self.__returnvalue;
