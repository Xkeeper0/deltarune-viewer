draw_self()
draw_set_color(0x00008000)
draw_text(0, 0, string_hash_to_newline(self.attackno))
if instance_exists(obj_chainking)
{
    draw_set_color(0x0000FFFF)
    draw_text(0, 40, string_hash_to_newline(obj_chainking.x))
    draw_text(0, 60, string_hash_to_newline(obj_chainking.y))
}
