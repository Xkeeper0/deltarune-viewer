self.myinteract = 0
self.talked = 0
self.tempvar = 0
self.image_speed = 0
self.depthcancel = 0
self.normalanim = 1
self.remanimspeed = 0
if (global.darkzone == 0)
{
    if (self.room == room_krisroom)
        self.sprite_index = spr_redwagon
    if (self.room == room_torhouse)
    {
        self.sprite_index = spr_chairiel_empty
        if (global.plot >= 250)
            self.sprite_index = spr_chairiel
    }
    if (self.room == room_graveyard)
    {
        self.sprite_index = spr_npc_bench
        self.fence = scr_marker(81, 122, spr_npc_graveyardfence)
        with (self.fence)
            scr_depth()
    }
    if (self.room == room_hospital_lobby)
        self.sprite_index = spr_npc_nurse
    if (self.room == room_hospital_rudy)
        self.sprite_index = spr_rudy_d
    if (self.room == room_library)
        self.sprite_index = spr_normalnpc
    if (self.room == room_townhall)
    {
        self.sprite_index = spr_npc_businessguy
        if (self.x > 100)
            self.sprite_index = spr_npc_receptionist
        if (self.x > 200)
            self.sprite_index = spr_npc_politicsbear
    }
    if (self.room == room_diner)
    {
        if (self.x < 120)
            self.sprite_index = spr_npc_cattiwaitress
        if (self.x < 60)
            self.sprite_index = spr_npc_dragonfamily
        if ((self.x >= 120) && (self.x <= 140))
            self.sprite_index = spr_npc_qc
        if (self.y > 130)
        {
            if (self.x > 180)
                self.sprite_index = spr_npc_dresslion
            if (self.x > 240)
            {
                self.sprite_index = spr_npc_greenfire
                self.depth = 4000
                self.depthcancel = 1
            }
            if (self.x > 260)
            {
                self.sprite_index = spr_npc_flanneldemon
                self.depth = 4000
                self.depthcancel = 1
            }
        }
        if (self.y < 120)
        {
            if (self.x > 160)
                self.sprite_index = spr_npc_most_improved_1997
            if (self.x > 200)
                self.sprite_index = spr_npc_icewolf
        }
    }
    if (self.room == room_town_south)
    {
        if (self.x > 560)
            self.sprite_index = spr_npc_donutcar
        if (self.x > 720)
            self.sprite_index = spr_npc_snailcar
    }
    if (self.room == room_town_church)
        self.sprite_index = spr_npc_alvin
    if (self.room == room_town_mid)
    {
        if (self.x >= 1800)
            self.sprite_index = spr_mkid_dt
        if (self.x >= 1900)
            self.sprite_index = spr_snowy_dt
    }
    if (self.room == room_town_north)
    {
        if (self.x >= 480)
            self.sprite_index = spr_npc_catty
        if (self.x >= 640)
            self.sprite_index = spr_npc_cattydad
        if (self.x >= 880)
            self.sprite_index = spr_npc_bratty
    }
    if (self.room == room_beach)
    {
        if (self.x >= 60)
            self.sprite_index = spr_npc_rgbun
        if (self.x >= 100)
            self.sprite_index = spr_npc_rgdragon
    }
}
if (global.darkzone == 1)
{
    self.image_xscale = 2
    self.image_yscale = 2
    if (self.room == room_castle_tutorial)
        self.sprite_index = spr_dummynpc
    if ((self.room == room_field2A) || ((self.room == room_field_puzzle1) || (self.room == room_field4)))
        self.sprite_index = spr_candytree
    if (self.room == room_field_topchef)
    {
        self.sprite_index = spr_topchef
        if (self.y <= 120)
        {
            self.sprite_index = spr_smoldercake
            self.alarm[11] = 1
        }
    }
    if (self.room == room_field_puzzletutorial)
    {
        self.sprite_index = spr_npc_puzzlepiece
        if (global.flag[251] == 1)
            instance_destroy()
    }
    if (self.room == room_field_maze)
    {
        if (self.x < 1600)
            self.sprite_index = spr_jigsawry_idle
        if (self.x > 1600)
            self.sprite_index = spr_lancer_dt
    }
    if (self.room == room_field_boxpuzzle)
        self.sprite_index = spr_npc_block_broken
    if (self.room == room_field_checkers7)
    {
        if (self.x <= (self.room_width / 2))
        {
            self.sprite_index = spr_npc_mrelegance
            if (global.plot >= 60)
                instance_destroy()
        }
        else
            self.sprite_index = spr_npc_mrsociety
    }
    if (self.room == room_forest_savepoint1)
    {
        if (self.x <= (self.room_width / 2))
        {
            self.sprite_index = spr_npc_puzzlepiece
            if (global.flag[251] == 0)
                instance_destroy()
        }
        else
            self.sprite_index = spr_npc_mrelegance
    }
    if (self.room == room_forest_area1)
        self.sprite_index = spr_diamond_overworld
    if (self.room == room_forest_area2A)
    {
        if (self.x <= (self.room_width / 2))
            self.sprite_index = spr_jackperson
        if (self.x >= (self.room_width / 2))
            self.sprite_index = spr_ballperson
    }
    if (self.room == room_forest_area3A)
    {
        if (self.x <= (self.room_width / 2))
            self.sprite_index = spr_blockler_b
        if (self.x >= (self.room_width / 2))
            self.sprite_index = spr_blockler_o
    }
    if (self.room == room_forest_savepoint2)
    {
        self.sprite_index = spr_bakesale_rudinn
        if ((self.x >= 800) && (self.x <= 880))
            self.sprite_index = spr_bakesale_hathy
        if (self.x >= 980)
            self.sprite_index = spr_bakesale_lancer
    }
    if (self.room == room_forest_area4)
        self.sprite_index = spr_npc_coody
    if (self.room == room_forest_starwalker)
        self.sprite_index = spr_npc_originalstarwalker
    if (self.room == room_forest_savepoint_relax)
    {
        if (self.x <= 200)
            self.sprite_index = spr_diamond_overworld
        if (self.x > 260)
        {
            if (global.plot >= 90)
                instance_destroy()
            if (self.y >= 240)
                self.sprite_index = spr_lancer_dark_relax
            else
                self.sprite_index = spr_susie_dark_relax
        }
    }
    if (self.room == room_forest_fightsusie)
    {
        self.sprite_index = spr_lancer_dt
        if (global.plot >= 150)
            instance_destroy()
    }
    if (self.room == room_cc_prison_cells)
        self.sprite_index = spr_diamond_trash
    if (self.room == room_cc_prison2)
    {
        global.flag[296] = 1
        self.sprite_index = spr_npc_gouldensam
        if ((self.x > 240) && (self.x < 440))
        {
            self.king = instance_create(-100, -100, obj_npc_room)
            self.king.x = self.x
            self.king.y = self.y
            self.king.sprite_index = spr_npc_cage_king
            scr_depth()
            self.king.depth = (self.depth - 10)
        }
        if ((self.x > 480) && (self.x < 680))
        {
            self.x += 4
            self.puzz = instance_create(-100, -100, obj_npc_room)
            self.puzz.x = 660
            self.puzz.y = 130
            self.puzz.sprite_index = spr_npc_puzzlepiece_jail
            self.tempvar = 1
        }
        if ((self.x > 680) && (self.x < 900))
        {
            self.x += 8
            self.rudinn = instance_create(-100, -100, obj_npc_room)
            self.rudinn.x = 900
            self.rudinn.y = 115
            self.rudinn.sprite_index = spr_diamond_overworld
            self.tempvar = 2
        }
        if ((self.x > 900) && (self.x < 1120))
        {
            self.x += 12
            self.tempvar = 3
            self.animal = instance_create(-100, -100, obj_npc_room)
            self.animal.x = self.x
            self.animal.y = self.y
            self.animal.sprite_index = spr_npc_cage_animals
        }
    }
    if (self.room == room_cc_rudinn)
        self.sprite_index = spr_diamond_overworld
    if (self.room == room_cc_rurus1)
        self.sprite_index = spr_diamond_overworld
    if (self.room == room_cc_hathy)
        self.sprite_index = spr_heartenemy_overworld
    if (self.room == room_cc_rurus2)
        self.sprite_index = spr_diamond_overworld
    if (self.room == room_cc_clover)
    {
        self.sprite_index = spr_clubs_overworld
        if (self.x < 160)
            self.sprite_index = spr_diamond_overworld
        if (self.x > 400)
            self.sprite_index = spr_heartenemy_overworld
    }
    if (self.room == room_cc_throneroom)
    {
        if (global.plot < 240)
            instance_destroy()
        else if ((self.y < 300) && (self.y > 80))
        {
            self.sprite_index = spr_npc_gouldensam
            if (self.x < (self.room_width / 2))
            {
                self.king = instance_create(-100, -100, obj_npc_room)
                self.king.x = self.x
                self.king.y = self.y
                self.king.sprite_index = spr_npc_cage_king
                scr_depth()
                self.king.depth = (self.depth - 10)
                if (global.flag[296] == 0)
                    instance_destroy()
            }
            else
            {
                self.tempvar = 1
                self.animal = instance_create(-100, -100, obj_npc_room)
                self.animal.x = self.x
                self.animal.y = self.y
                self.animal.sprite_index = spr_npc_cage_animals
                if (global.flag[296] == 0)
                    instance_destroy()
            }
        }
        else if (self.x < (self.room_width / 2))
            self.sprite_index = spr_diamond_overworld
        else
            self.sprite_index = spr_topchef
    }
    if (self.room == room_cc_preroof)
    {
        if (global.plot < 240)
            instance_destroy()
        if (self.x > 180)
            self.sprite_index = spr_diamond_overworld
        if (self.x > 320)
            self.sprite_index = spr_heartenemy_overworld
        if (self.x > 460)
            self.sprite_index = spr_clubs_overworld
        if (self.x > 680)
            self.sprite_index = spr_diamond_overworld
    }
    if (self.room == room_cc_kingbattle)
    {
        if (global.plot < 240)
            instance_destroy()
        if (self.x < 440)
            self.sprite_index = spr_rurus_idle
        if (self.y < 160)
        {
            if (self.x == 398)
                self.sprite_index = spr_npc_mrsociety
            if (self.x == 522)
                self.sprite_index = spr_npc_mrelegance
            if (self.x == 740)
                self.sprite_index = spr_blockler_b
            if (self.x == 820)
                self.sprite_index = spr_blockler_o
            if (self.x == 940)
                self.sprite_index = spr_blockler_o
            if (self.x == 1020)
                self.sprite_index = spr_blockler_b
            if (self.x > 1140)
            {
                self.sprite_index = spr_npc_puzzlepiece_happy
                if (global.flag[216] == 1)
                    self.sprite_index = spr_npc_puzzlepiece_shaved
            }
        }
        else if (self.x < 900)
            self.sprite_index = spr_jackperson
        else
            self.sprite_index = spr_ballperson
    }
}
if (self.depthcancel == 0)
    scr_depth()
