self.facechange -= 1
if (self.nowface != global.fc)
    self.facechange = 3
if (self.facechange <= 0)
{
    if (global.fc == 1)
    {
        if (global.flag[29] == 0)
        {
            self.face = spr_face_s0
            if (global.fe == 1)
                self.face = spr_face_s1
            if (global.fe == 2)
                self.face = spr_face_s2
            if (global.fe == 3)
                self.face = spr_face_s3
            if (global.fe == 4)
                self.face = spr_face_s4
            if (global.fe == 5)
                self.face = spr_face_s5
            if (global.fe == 6)
                self.face = spr_face_s6
            if (global.fe == 7)
                self.face = spr_face_s7
            if (global.fe == 8)
                self.face = spr_face_s8
            if (global.fe == 9)
                self.face = spr_face_s9
            if (global.fe == 10)
                self.face = spr_face_sA
            if (global.fe == 11)
                self.face = spr_face_sB
            if (global.fe == 12)
                self.face = spr_face_sC
            if (global.fe == 13)
                self.face = spr_face_sD
            draw_sprite_ext(self.face, self.face_index, (self.x - 5), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
        }
        else
        {
            self.face = spr_face_susie_alt
            self.face_index = global.fe
            draw_sprite_ext(self.face, self.face_index, (self.x - 5), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
        }
    }
    if (global.fc == 2)
    {
        self.face = spr_face_r_dark
        if (global.flag[30] == 1)
            self.face = spr_face_r_hood
        if (global.flag[30] == 2)
            self.face = spr_face_r_nohat
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 15), (self.y - 10), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 3)
    {
        self.face = spr_face_n0
        if (global.fe == 1)
            self.face = spr_face_n1
        if (global.fe == 2)
            self.face = spr_face_n2
        if (global.fe == 3)
            self.face = spr_face_n3
        if (global.fe == 4)
            self.face = spr_face_n4
        if (global.fe == 5)
            self.face = spr_face_n5
        if (global.fe == 6)
            self.face = spr_face_n6
        if (global.fe == 7)
            self.face = spr_face_n7
        if (global.fe == 8)
            self.face = spr_face_n8
        if (global.fe == 9)
            self.face = spr_face_n9
        draw_sprite_ext(self.face, self.face_index, (self.x - 12), (self.y - 10), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 4)
    {
        draw_sprite_ext(spr_face_tbody, 0, (self.x - 7), (self.y + 29), self.f, self.f, 0, 0x00FFFFFF, 1)
        self.face = spr_face_t0
        if (global.fe == 1)
            self.face = spr_face_t1
        if (global.fe == 2)
            self.face = spr_face_t2
        if (global.fe == 3)
            self.face = spr_face_t3
        if (global.fe == 4)
            self.face = spr_face_t4
        if (global.fe == 5)
            self.face = spr_face_t5
        if (global.fe == 6)
            self.face = spr_face_t6
        if (global.fe == 7)
            self.face = spr_face_t7
        if (global.fe == 8)
            self.face = spr_face_t8
        if (global.fe == 9)
            self.face = spr_face_t9
        draw_sprite_ext(self.face, self.face_index, self.x, self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 5)
    {
        self.face = spr_face_l0
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 15), (self.y - 10), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 6)
    {
        self.face = spr_face_sans0
        if (global.fe == 1)
            self.face = spr_face_sans1
        if (global.fe == 2)
            self.face = spr_face_sans2
        if (global.fe == 3)
            self.face = spr_face_sans3
        if (global.fe == 4)
            self.face = spr_face_sans4
        if (global.fe == 5)
            self.face = spr_face_sans5
        draw_sprite_ext(self.face, self.face_index, self.x, self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 9)
    {
        self.face = spr_face_undyne
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 10)
    {
        self.face = spr_face_asgore0
        if (global.fe == 1)
            self.face = spr_face_asgore1
        if (global.fe == 2)
            self.face = spr_face_asgore2
        if (global.fe == 3)
            self.face = spr_face_asgore3
        if (global.fe == 4)
            self.face = spr_face_asgore4
        if (global.fe == 5)
            self.face = spr_face_asgore5
        if (global.fe == 6)
            self.face = spr_face_asgore6
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 11)
    {
        self.face = spr_alphysface
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 12)
    {
        self.face = spr_face_b0
        if (global.fe == 1)
            self.face = spr_face_b1
        if (global.fe == 2)
            self.face = spr_face_b2
        if (global.fe == 3)
            self.face = spr_face_b3
        if (global.fe == 4)
            self.face = spr_face_b4
        if (global.fe == 5)
            self.face = spr_face_b5
        if (global.fe == 6)
            self.face = spr_face_b1
        if (global.fe == 7)
            self.face = spr_face_b1
        if (global.fe == 8)
            self.face = spr_face_b1
        if (global.fe == 9)
            self.face = spr_face_b1
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 13)
    {
        self.face = spr_face_c0
        if (global.fe == 1)
            self.face = spr_face_c1
        if (global.fe == 2)
            self.face = spr_face_c2
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 14)
    {
        self.face = spr_face_jock0
        if (global.fe == 1)
            self.face = spr_face_jock1
        if (global.fe == 1)
            self.face = spr_face_jock2
        if (global.fe == 1)
            self.face = spr_face_jock3
        if (global.fe == 1)
            self.face = spr_face_jock4
        if (global.fe == 1)
            self.face = spr_face_jock5
        if (global.fe == 1)
            self.face = spr_face_jock6
        if (global.fe == 1)
            self.face = spr_face_jock7
        if (global.fe == 1)
            self.face = spr_face_jock8
        if (global.fe == 1)
            self.face = spr_face_jock9
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 15)
    {
        self.face = spr_face_rudy
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 12), (self.y - 10), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 16)
    {
        self.face = spr_face_catty
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 17)
    {
        self.face = spr_face_bratty
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 5), (self.y + 2), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 18)
    {
        self.face = spr_face_rurus
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 10), self.y, self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 19)
    {
        self.face = spr_face_burgerpants
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 5), (self.y - 5), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
    if (global.fc == 20)
    {
        self.face = spr_face_king
        self.face_index = global.fe
        draw_sprite_ext(self.face, self.face_index, (self.x - 5), (self.y - 5), self.f, self.f, 0, 0x00FFFFFF, 1)
    }
}
self.nowface = global.fc
