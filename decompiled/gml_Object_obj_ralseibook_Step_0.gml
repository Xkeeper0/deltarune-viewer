if (left_p() && ((self.turning == 0) && (self.page > -1)))
{
    self.turning = -1
    self.turnpage = self.page
    self.siner = 0
}
if (right_p() && ((self.turning == 0) && (self.page < 6)))
{
    self.turning = 1
    self.turnpage = self.page
    self.siner = 0
}
if button2_p()
{
    if (global.interact == 1)
        global.interact = 0
    instance_destroy()
}
