if (self.con == 1)
{
    if (other.con == 1)
    {
        if (self.active == 1)
            _temp_local_var_1 = (other.active == 1)
        else
            _temp_local_var_1 = 0
    }
    else
        _temp_local_var_1 = 0
}
else
    _temp_local_var_1 = 0
if _temp_local_var_1
{
    if (self.locked == 0)
    {
        self.speed = 0
        self.locked = 1
        with(other.id)
        {
            self.speed = 0
            self.locked = 1
        }
        _temp_local_var_2 = 16
        if (16 <= 0)
        {
        }
        else
        {
            while(true)
            {
                if (self.side == 0)
                {
                    if (self.x >= (other.x - 28))
                        self.x = (self.x - 1)
                    if (self.x >= (other.x - 28))
                        other.x = (other.x + 1)
                }
                if (self.side == 3)
                {
                    if (self.y >= (other.y - 28))
                        self.y = (self.y - 1)
                    if (self.y >= (other.y - 28))
                        other.y = (other.y + 1)
                }
                if (self.side == 2)
                {
                    if (self.x <= (other.x + 28))
                        self.x = (self.x + 1)
                    if (self.x <= (other.x + 28))
                        other.x = (other.x - 1)
                }
                if (self.side == 1)
                {
                    if (self.y <= (other.y + 28))
                        self.y = (self.y + 1)
                    if (self.y <= (other.y + 28))
                        other.y = (other.y - 1)
                }
                _temp_local_var_2 = (_temp_local_var_2 - 1)
                if (_temp_local_var_2 - 1)
                    continue
                break
            }
        }
    }
}
