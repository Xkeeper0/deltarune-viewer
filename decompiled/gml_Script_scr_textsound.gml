self.playtextsound = 1
if (button2_h() == 1)
    self.playtextsound = 0
if (self.skippable == 0)
    self.playtextsound = 1
if (self.playtextsound == 1)
{
    if (self.rate <= 2)
        self.getchar = string_char_at(self.mystring, self.pos)
    else
        self.getchar = string_char_at(self.mystring, (self.pos - 1))
    self.play = 1
    self.playcheck = 0
    if (self.getchar == "&")
    {
        if (self.rate < 3)
        {
            self.playcheck = 1
            self.getchar = string_char_at(self.mystring, (self.pos + 1))
        }
        else
            self.play = 0
    }
    if (self.getchar == " ")
        self.play = 0
    if (self.getchar == "^")
        self.play = 0
    if (self.getchar == "!")
        self.play = 0
    if (self.getchar == ".")
        self.play = 0
    if (self.getchar == "?")
        self.play = 0
    if (self.getchar == ",")
        self.play = 0
    if (self.getchar == ":")
        self.play = 0
    if (self.getchar == "/")
        self.play = 0
    if (self.getchar == "\\")
        self.play = 0
    if (self.getchar == "|")
        self.play = 0
    if (self.getchar == "*")
        self.play = 0
    if (self.play == 1)
    {
        snd_play(self.textsound)
        with (obj_face_parent)
            self.mouthmove = 1
    }
}
