self.slmxx = self.argument0
self.slmyy = self.argument1
self.s_siner = (self.s_siner + 2)
draw_set_color(self.charcolor)
draw_rectangle(self.slmxx, self.slmyy, (self.slmxx + 210), (self.slmyy + 3), 0)
self.i = 0
while(true)
{
    if (self.i < 12)
    {
        self.myxx = (self.s_siner + (self.i * 31.4159265358979))
        draw_set_alpha(sin((self.myxx / 60)))
        draw_line_width(self.slmxx, self.slmyy, self.slmxx, (self.slmyy + 33), 2)
        draw_line_width((self.slmxx + 210), self.slmyy, (self.slmxx + 210), (self.slmyy + 33), 2)
        if (cos((self.myxx / 60)) < 0)
        {
            draw_line_width(((self.slmxx - (sin((self.myxx / 60)) * 30)) + 30), self.slmyy, ((self.slmxx - (sin((self.myxx / 60)) * 30)) + 30), (self.slmyy + 33), 2)
            draw_line_width((((self.slmxx + 210) + (sin((self.myxx / 60)) * 30)) - 30), self.slmyy, (((self.slmxx + 210) + (sin((self.myxx / 60)) * 30)) - 30), (self.slmyy + 33), 2)
        }
        self.i = (self.i + 1)
        continue
    }
    break
}
draw_set_alpha(1)
