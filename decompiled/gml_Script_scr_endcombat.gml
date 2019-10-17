global.fighting = 0
if ((global.specialbattle == 0) || ((global.specialbattle == 2) || (global.specialbattle == 3)))
{
    if (global.specialbattle == 2)
    {
        with (obj_mainchara)
        {
            self.cutscene = 1
            self.x = global.charinstance[0].x
            self.y = global.charinstance[0].y
        }
        with (global.cinstance[0])
        {
            self.x = global.charinstance[1].x
            self.y = global.charinstance[1].y
        }
        with (global.cinstance[1])
        {
            self.x = global.charinstance[2].x
            self.y = global.charinstance[2].y
        }
        with (obj_caterpillarchara)
            scr_caterpillar_interpolate()
        scr_pan_to_obj(obj_mainchara, 30)
        with (obj_mainchara)
            self.visible = 1
        with (obj_caterpillarchara)
            self.visible = 1
    }
    instance_create(0, 0, obj_endbattle)
    with (obj_monsterparent)
        instance_destroy()
    with (obj_bulletparent)
        instance_destroy()
    with (obj_heroparent)
        instance_destroy()
    instance_destroy()
}
