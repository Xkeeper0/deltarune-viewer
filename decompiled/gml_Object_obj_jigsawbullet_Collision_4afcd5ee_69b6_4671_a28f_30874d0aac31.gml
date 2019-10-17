if ((self.con == 1) && ((other.con == 1) && ((self.active == 1) && (other.active == 1))))
{
    if (self.locked == 0)
    {
        self.speed = 0
        self.locked = 1
        with (other.id)
        {
            self.speed = 0
            self.locked = 1
        }
        repeat (16)
        {
            if (self.side == 0)
            {
                if (self.x >= (other.x - 28))
                    self.x -= 1
                if (self.x >= (other.x - 28))
                    other.x += 1
            }
            if (self.side == 3)
            {
                if (self.y >= (other.y - 28))
                    self.y -= 1
                if (self.y >= (other.y - 28))
                    other.y += 1
            }
            if (self.side == 2)
            {
                if (self.x <= (other.x + 28))
                    self.x += 1
                if (self.x <= (other.x + 28))
                    other.x -= 1
            }
            if (self.side == 1)
            {
                if (self.y <= (other.y + 28))
                    self.y += 1
                if (self.y <= (other.y + 28))
                    other.y -= 1
            }
        }
    }
}
