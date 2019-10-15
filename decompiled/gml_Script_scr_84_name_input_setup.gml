local.menu = 0
local.xoff = 0
local.yoff = 0
local.xstep = 0
local.ystep = 0
if (self.LANGSUBTYPE == 0)
{
    local.xoff = 68
    local.yoff = 70
    local.xstep = 20
    local.ystep = 20
    self.PLAYERNAMEY = 40
    local.menu[0] = "ABCDEFGHIJ"@3439
    local.menu[1] = "KLMNOPQRST"@3440
    local.menu[2] = "UVWXYZ < <"@3441
    self.CURX = 0
    self.CURY = 0
}
else
{
    if (self.LANGSUBTYPE == 1)
    {
        local.xoff = 28
        local.yoff = 80
        local.xstep = 16
        local.ystep = 15
        self.PLAYERNAMEY = 60
        local.menu[0] = "あいうえお　まみむめも　ぁぃぅぇぉ"@3444
        local.menu[1] = "かきくけこ　や　ゆ　よ　がぎぐげご"@3445
        local.menu[2] = "さしすせそ　らりるれろ　ざじずぜぞ"@3446
        local.menu[3] = "たちつてと　わをんー　　だぢづでど"@3447
        local.menu[4] = "なにぬねの　ゃゅょっゎ　ばびぶべぼ"@3448
        local.menu[5] = "はひふへほ　　　　　　　ぱぴぷぺぽ"@3449
        local.menu[6] = ">> << >> << >> <<"@3450
        local.menu[7] = ">>>> <<<>>>> <<<<"@3451
    }
    else
    {
        if (self.LANGSUBTYPE == 2)
        {
            local.xoff = 28
            local.yoff = 80
            local.xstep = 16
            local.ystep = 15
            self.PLAYERNAMEY = 60
            local.menu[0] = "アイウエオ　マミムメモ　ァィゥェォ"@3452
            local.menu[1] = "カキクケコ　ヤ　ユ　ヨ　ガギグゲゴ"@3453
            local.menu[2] = "サシスセソ　ラリルレロ　ザジズセゾ"@3454
            local.menu[3] = "タチツテト　ワヲンー　　ダヂヅデド"@3455
            local.menu[4] = "ナニヌネノ　ャュョッヮ　バビブベボ"@3456
            local.menu[5] = "ハヒフヘホ　　　　　　　パピプペポ"@3457
            local.menu[6] = ">> << >> << >> <<"@3450
            local.menu[7] = ">>>> <<<>>>> <<<<"@3451
        }
        else
        {
            if (self.LANGSUBTYPE == 3)
            {
                local.xoff = 28
                local.yoff = 80
                local.xstep = 32
                local.ystep = 15
                self.PLAYERNAMEY = 60
                local.menu[0] = "ＡＢＣＤＥＦＧＨＩ"@3458
                local.menu[1] = "ＪＫＬＭＮＯＰＱＲ"@3459
                local.menu[2] = "ＳＴＵＶＷＸＹＺ "@3460
                local.menu[3] = "         "@3461
                local.menu[4] = "         "@3461
                local.menu[5] = "         "@3461
                local.menu[6] = "> <> <> <"@3462
                local.menu[7] = ">> <>> <<"@3463
            }
        }
    }
}
self.YMAX = (array_length_1d(local.menu) - 1)
self.j = 0
while(true)
{
    if (self.j <= self.YMAX)
    {
        local.str = local.menu[self.j]
        self.XMAX = (string_length(local.str) - 1)
        self.i = 0
        while(true)
        {
            if (self.i <= self.XMAX)
            {
                self.NAME[self.i][self.j] = string_char_at(local.str, (self.i + 1))
                self.NAMEX[self.i][self.j] = (local.xoff + (self.i * local.xstep))
                self.NAMEY[self.i][self.j] = (local.yoff + (self.j * local.ystep))
                self.i = (self.i + 1)
                continue
            }
            break
        }
        self.j = (self.j + 1)
        continue
    }
    break
}
if (self.LANGSUBTYPE == 0)
{
    self.NAME[6][2] = "(B)BACK"@3469
    self.NAME[8][2] = "(E)END"@3470
}
else
{
    if (self.LANGSUBTYPE == 1)
        _temp_local_var_1 = 1
    else
        _temp_local_var_1 = (self.LANGSUBTYPE == 2)
    if _temp_local_var_1
    {
        self.NAME[2][6] = "(1)ひらがな"@3471
        self.NAMEX[2][6] = ((local.xoff + 32) - 20)
        self.NAMEY[2][6] = ((local.yoff + 90) + 8)
        self.NAME[8][6] = "(2)カタカナ"@3472
        self.NAMEX[8][6] = ((local.xoff + 128) - 24)
        self.NAMEY[8][6] = ((local.yoff + 90) + 8)
        self.NAME[14][6] = "(3)アルファベット"@3473
        self.NAMEX[14][6] = ((local.xoff + 224) - 40)
        self.NAMEY[14][6] = ((local.yoff + 90) + 8)
        self.NAME[4][7] = "(B)さくじょ"@3474
        self.NAMEX[4][7] = ((local.xoff + 64) - 8)
        self.NAMEY[4][7] = ((local.yoff + 105) + 16)
        self.NAME[12][7] = "(E)けってい"@3475
        self.NAMEX[12][7] = ((local.xoff + 180) - 32)
        self.NAMEY[12][7] = ((local.yoff + 105) + 16)
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
    else
    {
        if (self.LANGSUBTYPE == 3)
        {
            self.NAME[1][6] = "(1)ひらがな"@3471
            self.NAMEX[1][6] = ((local.xoff + 32) - 20)
            self.NAMEY[1][6] = ((local.yoff + 90) + 8)
            self.NAME[4][6] = "(2)カタカナ"@3472
            self.NAMEX[4][6] = ((local.xoff + 128) - 24)
            self.NAMEY[4][6] = ((local.yoff + 90) + 8)
            self.NAME[7][6] = "(3)アルファベット"@3473
            self.NAMEX[7][6] = ((local.xoff + 224) - 40)
            self.NAMEY[7][6] = ((local.yoff + 90) + 8)
            self.NAME[2][7] = "(B)さくじょ"@3474
            self.NAMEX[2][7] = ((local.xoff + 64) - 8)
            self.NAMEY[2][7] = ((local.yoff + 105) + 16)
            self.NAME[6][7] = "(E)けってい"@3475
            self.NAMEX[6][7] = ((local.xoff + 180) - 32)
            self.NAMEY[6][7] = ((local.yoff + 105) + 16)
            self.CURX = 7
            self.CURY = 6
        }
    }
}
self.HEARTX = ((self.NAMEX[self.CURX][self.CURY] + (string_width(self.NAME[self.CURX][self.CURY]) / 2)) - 10)
self.HEARTY = self.NAMEY[self.CURX][self.CURY]
