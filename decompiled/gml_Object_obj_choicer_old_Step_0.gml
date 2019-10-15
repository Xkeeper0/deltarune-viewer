if button1_p()
    event_user(0)
if left_p()
{
    if (self.mychoice == 0)
        self.mychoice = 1
    else
        self.mychoice = 0
    if (self.mychoice == 1)
        self.x = ((185 * self.dar) + self.add)
    else
        self.x = ((89 * self.dar) + self.add)
}
if right_p()
{
    if (self.mychoice == 0)
        self.mychoice = 1
    else
        self.mychoice = 0
    if (self.mychoice == 1)
        self.x = ((185 * self.dar) + self.add)
    else
        self.x = ((89 * self.dar) + self.add)
}
