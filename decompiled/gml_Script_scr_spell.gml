self.spell = self.argument0
self.caster = self.argument1
self.star = global.chartarget[self.argument1]
global.spelldelay = 10
switch self.spell
{
    case 0:
        break
    case 1:
        self.cancelattack = 0
        if (global.monster[self.star] == 0)
            scr_retarget_spell()
        if (self.cancelattack == 0)
        {
            self.damage = ceil(((global.battleat[self.argument1] * 10) - (global.monsterdf[self.star] * 3)))
            if (global.automiss[self.star] == 1)
                self.damage = 0
            scr_damage_enemy(self.star, self.damage)
            self.attack = instance_create((global.monsterx[self.star] + random(6)), (global.monstery[self.star] + random(6)), obj_basicattack)
            self.attack.sprite_index = spr_attack_mash1
            self.dm.delay = 8
        }
        global.spelldelay = 30
        break
    case 2:
        self.healnum = (global.battlemag[self.argument1] * 5)
        scr_heal(self.star, self.healnum)
        global.charinstance[self.star].healnum = self.healnum
        with (global.charinstance[self.star])
        {
            self.ha = instance_create(self.x, self.y, obj_healanim)
            self.ha.target = self.id
            self.dmgwr = scr_dmgwriter_selfchar()
            with (self.dmgwr)
            {
                self.delay = 8
                self.type = 3
            }
            if (global.hp[global.char[self.myself]] >= global.maxhp[global.char[self.myself]])
            {
                with (self.dmgwr)
                    self.specialmessage = 3
            }
            self.dmgwr.damage = self.healnum
            self.tu += 1
        }
        global.spelldelay = 15
        break
    case 3:
        if (global.monster[self.star] == 0)
            scr_retarget_spell()
        if (global.monster[self.star] == 1)
        {
            if (global.monsterstatus[self.star] == 1)
            {
                with (global.monsterinstance[self.star])
                {
                    if ((global.monstertype[self.myself] != 19) && (global.monstertype[self.myself] != 3))
                    {
                        global.flag[(51 + self.myself)] = 3
                        event_user(10)
                        scr_monsterdefeat()
                    }
                    else
                    {
                        self.pacifycon = 1
                        global.spelldelay = 999
                    }
                }
            }
            else
            {
                self._pspell = instance_create(0, 0, obj_pacifyspell)
                self._pspell.target = global.monsterinstance[self.star]
                self._pspell.fail = 1
            }
        }
        global.spelldelay = 20
        break
    case 4:
        self.cancelattack = 0
        global.spelldelay = 30
        if (global.monster[self.star] == 0)
            scr_retarget_spell()
        if (self.cancelattack == 0)
        {
            global.spelldelay = 70
            self.damage = ceil((((global.battlemag[self.argument1] * 5) + (global.battleat[self.argument1] * 11)) - (global.monsterdf[self.star] * 3)))
            if (global.automiss[self.star] == 1)
                self.damage = 0
            self.attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim)
            self.attack.damage = self.damage
            self.attack.star = self.star
            self.attack.caster = self.caster
            self.attack.target = global.monsterinstance[self.star]
        }
        break
    case 5:
        self.cancelattack = 0
        global.spelldelay = 30
        if (global.monster[self.star] == 0)
            scr_retarget_spell()
        if (self.cancelattack == 0)
        {
            global.spelldelay = 70
            self.damage = ceil((((global.battlemag[self.argument1] * 6) + (global.battleat[self.argument1] * 13)) - (global.monsterdf[self.star] * 6)))
            if (global.automiss[self.star] == 1)
                self.damage = 0
            self.attack = instance_create(obj_herosusie.x, obj_herosusie.y, obj_rudebuster_anim)
            self.attack.damage = self.damage
            self.attack.star = self.star
            self.attack.caster = self.caster
            self.attack.target = global.monsterinstance[self.star]
            self.attack.red = 1
        }
        break
    case 6:
        self.healnum = (global.battlemag[self.argument1] * 4)
        for (self.i = 0; self.i < 3; self.i += 1)
        {
            scr_heal(self.i, self.healnum)
            global.charinstance[self.i].healnum = self.healnum
            with (global.charinstance[self.i])
            {
                self.ha = instance_create(self.x, self.y, obj_healanim)
                self.ha.target = self.id
                self.dmgwr = scr_dmgwriter_selfchar()
                with (self.dmgwr)
                {
                    self.delay = 8
                    self.type = 3
                }
                if (global.hp[global.char[self.myself]] >= global.maxhp[global.char[self.myself]])
                {
                    with (self.dmgwr)
                        self.specialmessage = 3
                }
                self.dmgwr.damage = self.healnum
                self.tu += 1
            }
        }
        global.spelldelay = 15
        break
    case 100:
        if (global.monster[self.star] == 0)
            scr_retarget_spell()
        if (global.monster[self.star] == 1)
        {
            if (global.mercymod[self.star] >= 100)
            {
                if (global.monstertype[self.star] != 3)
                {
                    with (global.monsterinstance[self.star])
                    {
                        global.flag[(51 + self.myself)] = 2
                        event_user(10)
                        scr_monsterdefeat()
                    }
                }
                else
                {
                    with (global.monsterinstance[self.star])
                        self.sparecon = 1
                }
            }
            else
            {
                scr_mercyadd(self.star, global.sparepoint[self.star])
                self._pspell = instance_create(0, 0, obj_pacifyspell)
                self._pspell.target = global.monsterinstance[self.star]
                self._pspell.fail = 1
                self._pspell.flashcolor = 65535
            }
        }
        global.spelldelay = 0
        break
    case 200:
        break
    case 201:
        scr_healitemspell(40)
        break
    case 202:
        self.reviveamt = ceil((global.maxhp[global.char[self.star]] / 2))
        if (global.hp[global.char[self.star]] <= 0)
            self.reviveamt = (ceil(global.maxhp[global.char[self.star]]) + abs(global.hp[global.char[self.star]]))
        scr_healitemspell(self.reviveamt)
        break
    case 203:
        break
    case 204:
        break
    case 205:
        scr_healitemspell(20)
        break
    case 206:
        scr_healallitemspell(160)
        break
    case 207:
        scr_healallitemspell(80)
        break
    case 208:
        scr_healitemspell(70)
        break
    case 209:
        scr_healitemspell(50)
        break
    case 210:
        scr_healitemspell(4)
        break
    case 211:
        scr_healallitemspell(30)
        break
    case 212:
        if (global.char[self.star] == 1)
            scr_healitemspell(10)
        if (global.char[self.star] == 2)
            scr_healitemspell(90)
        if (global.char[self.star] == 3)
            scr_healitemspell(60)
        break
    case 213:
        if (global.char[self.star] == 1)
            scr_healitemspell(80)
        if (global.char[self.star] == 2)
            scr_healitemspell(30)
        if (global.char[self.star] == 3)
            scr_healitemspell(30)
        break
    case 214:
        scr_healitemspell(500)
        break
    case 215:
        scr_healitemspell(60)
        break
    default:
    
}

