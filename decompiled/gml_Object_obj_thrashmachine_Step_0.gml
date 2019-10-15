self.dcolor[1] = make_color_hsv((global.flag[223] * 8), 255, (255 * self.value))
self.dcolor[0] = make_color_hsv((global.flag[224] * 8), 255, (255 * self.value))
self.dcolor[2] = make_color_hsv((global.flag[225] * 8), 255, (255 * self.value))
self.part[1] = global.flag[220]
self.part[0] = global.flag[221]
self.part[2] = global.flag[222]
self.basecolor = merge_color(0x000000, 0xFFFFFF, self.value)
