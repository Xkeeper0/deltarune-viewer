var menu = 0
var xoff = 0
var yoff = 0
var xstep = 0
var ystep = 0
if (self.LANGSUBTYPE == 0)
{
    xoff = 68
    yoff = 70
    xstep = 20
    ystep = 20
    self.PLAYERNAMEY = 40
    menu[0] = "ABCDEFGHIJ"
    menu[1] = "KLMNOPQRST"
    menu[2] = "UVWXYZ < <"
    self.CURX = 0
    self.CURY = 0
}
else if (self.LANGSUBTYPE == 1)
{
    xoff = 28
    yoff = 80
    xstep = 16
    ystep = 15
    self.PLAYERNAMEY = 60
    menu[0] = "あいうえお　まみむめも　ぁぃぅぇぉ"
    menu[1] = "かきくけこ　や　ゆ　よ　がぎぐげご"
    menu[2] = "さしすせそ　らりるれろ　ざじずぜぞ"
    menu[3] = "たちつてと　わをんー　　だぢづでど"
    menu[4] = "なにぬねの　ゃゅょっゎ　ばびぶべぼ"
    menu[5] = "はひふへほ　　　　　　　ぱぴぷぺぽ"
    menu[6] = ">> << >> << >> <<"
    menu[7] = ">>>> <<<>>>> <<<<"
}
else if (self.LANGSUBTYPE == 2)
{
    xoff = 28
    yoff = 80
    xstep = 16
    ystep = 15
    self.PLAYERNAMEY = 60
    menu[0] = "アイウエオ　マミムメモ　ァィゥェォ"
    menu[1] = "カキクケコ　ヤ　ユ　ヨ　ガギグゲゴ"
    menu[2] = "サシスセソ　ラリルレロ　ザジズセゾ"
    menu[3] = "タチツテト　ワヲンー　　ダヂヅデド"
    menu[4] = "ナニヌネノ　ャュョッヮ　バビブベボ"
    menu[5] = "ハヒフヘホ　　　　　　　パピプペポ"
    menu[6] = ">> << >> << >> <<"
    menu[7] = ">>>> <<<>>>> <<<<"
}
else if (self.LANGSUBTYPE == 3)
{
    xoff = 28
    yoff = 80
    xstep = 32
    ystep = 15
    self.PLAYERNAMEY = 60
    menu[0] = "ＡＢＣＤＥＦＧＨＩ"
    menu[1] = "ＪＫＬＭＮＯＰＱＲ"
    menu[2] = "ＳＴＵＶＷＸＹＺ "
    menu[3] = "         "
    menu[4] = "         "
    menu[5] = "         "
    menu[6] = "> <> <> <"
    menu[7] = ">> <>> <<"
}
self.YMAX = (array_length_1d(menu) - 1)
for (self.j = 0; self.j <= self.YMAX; self.j += 1)
{
    var str = menu[self.j]
    self.XMAX = (string_length(str) - 1)
    for (self.i = 0; self.i <= self.XMAX; self.i += 1)
    {
        self.NAME[self.i, self.j] = string_char_at(str, (self.i + 1))
        self.NAMEX[self.i, self.j] = (xoff + (self.i * xstep))
        self.NAMEY[self.i, self.j] = (yoff + (self.j * ystep))
    }
}
if (self.LANGSUBTYPE == 0)
{
    self.NAME[6, 2] = "(B)BACK"
    self.NAME[8, 2] = "(E)END"
}
else if ((self.LANGSUBTYPE == 1) || (self.LANGSUBTYPE == 2))
{
    self.NAME[2, 6] = "(1)ひらがな"
    self.NAMEX[2, 6] = ((xoff + 32) - 20)
    self.NAMEY[2, 6] = ((yoff + 90) + 8)
    self.NAME[8, 6] = "(2)カタカナ"
    self.NAMEX[8, 6] = ((xoff + 128) - 24)
    self.NAMEY[8, 6] = ((yoff + 90) + 8)
    self.NAME[14, 6] = "(3)アルファベット"
    self.NAMEX[14, 6] = ((xoff + 224) - 40)
    self.NAMEY[14, 6] = ((yoff + 90) + 8)
    self.NAME[4, 7] = "(B)さくじょ"
    self.NAMEX[4, 7] = ((xoff + 64) - 8)
    self.NAMEY[4, 7] = ((yoff + 105) + 16)
    self.NAME[12, 7] = "(E)けってい"
    self.NAMEX[12, 7] = ((xoff + 180) - 32)
    self.NAMEY[12, 7] = ((yoff + 105) + 16)
    if (self.LANGSUBTYPE == 1)
    {
        self.CURX = 2
        self.CURY = 6
    }
    else
    {
        self.CURX = 8
        self.CURY = 6
    }
}
else if (self.LANGSUBTYPE == 3)
{
    self.NAME[1, 6] = "(1)ひらがな"
    self.NAMEX[1, 6] = ((xoff + 32) - 20)
    self.NAMEY[1, 6] = ((yoff + 90) + 8)
    self.NAME[4, 6] = "(2)カタカナ"
    self.NAMEX[4, 6] = ((xoff + 128) - 24)
    self.NAMEY[4, 6] = ((yoff + 90) + 8)
    self.NAME[7, 6] = "(3)アルファベット"
    self.NAMEX[7, 6] = ((xoff + 224) - 40)
    self.NAMEY[7, 6] = ((yoff + 90) + 8)
    self.NAME[2, 7] = "(B)さくじょ"
    self.NAMEX[2, 7] = ((xoff + 64) - 8)
    self.NAMEY[2, 7] = ((yoff + 105) + 16)
    self.NAME[6, 7] = "(E)けってい"
    self.NAMEX[6, 7] = ((xoff + 180) - 32)
    self.NAMEY[6, 7] = ((yoff + 105) + 16)
    self.CURX = 7
    self.CURY = 6
}
self.HEARTX = ((self.NAMEX[self.CURX, self.CURY] + (string_width(self.NAME[self.CURX, self.CURY]) / 2)) - 10)
self.HEARTY = self.NAMEY[self.CURX, self.CURY]
