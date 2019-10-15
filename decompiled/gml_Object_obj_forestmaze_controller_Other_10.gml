if (self.room == room_forest_maze1)
{
    if (obj_mainchara.x <= (self.room_width / 2))
        self.sidechoice = 0
    if (obj_mainchara.x >= (self.room_width / 2))
        self.sidechoice = 1
}
if (self.room == room_forest_maze2)
{
    if (obj_mainchara.x >= 100)
        self.sidechoice = 2
    if (obj_mainchara.x >= 260)
        self.sidechoice = 3
    if (obj_mainchara.x >= 420)
        self.sidechoice = 4
}
self.roomchoice = room_forest_maze1
if (self.room == room_forest_maze2)
    self.roomchoice = room_forest_maze2
if (self.sidechoice == self.proper_choice)
{
    global.flag[291] = (global.flag[291] + 1)
    global.flag[292] = 0
    if (global.flag[291] == 4)
    {
        if (global.plot < 100)
            self.roomchoice = room_forest_maze_susie
        else
        {
            global.flag[291] = 5
            self.roomchoice = room_forest_maze2
        }
    }
    if (global.flag[291] == 9)
    {
        self.roomchoice = room_forest_savepoint3
        if (global.plot < 120)
            global.plot = 120
    }
}
else
{
    self.rem291 = global.flag[291]
    global.flag[291] = 0
    global.flag[292] = (global.flag[292] + 1)
    if (global.flag[293] >= 1)
        global.flag[292] = 3
    if (self.room == room_forest_maze2)
        global.flag[292] = 3
    if (global.flag[292] >= 2)
    {
        global.flag[292] = 0
        self.roomchoice = 92
        if (self.rem291 >= 5)
        {
            global.flag[291] = 5
            self.roomchoice = 95
        }
    }
}
room_goto(self.roomchoice)
