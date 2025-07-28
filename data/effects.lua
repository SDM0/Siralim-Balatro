SRL_MOD.Effect = SMODS.Center:extend {
    class_prefix = 'eff',
    discovered = false,
    unlocked = true,
    pos = { x = 0, y = 0 },
    config = {},
    set = 'Effect',
    atlas = 'srl_effects',
    required_params = {
        'key',
    },
    pre_inject_class = function(self)
        G.P_CENTER_POOLS[self.set] = {}
    end,
    inject = function(self)
        G.P_CENTERS[self.key] = self
        SMODS.Center.inject(self)
    end,
    get_obj = function(self, key)
        if key == nil then
            return nil
        end
        return self.obj_table[key]
    end,
    is_buff = true
}

SMODS.DrawStep {
    key = 'buff',
    order = 31,
    func = function(self, layer)
        local effect = (self and self.ability and self.ability.srl_effect_buff) or nil
        if effect and effect.key then
            if not SRL_MOD[effect.key] then SRL_MOD[effect.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_effects"], effect.pos) end
            SRL_MOD[effect.key].role.draw_major = self
            SRL_MOD[effect.key]:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

SMODS.DrawStep {
    key = 'debuff',
    order = 31,
    func = function(self, layer)
        local effect = (self and self.ability and self.ability.srl_effect_debuff) or nil
        if effect and effect.key then
            if not SRL_MOD[effect.key] then SRL_MOD[effect.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_effects"], effect.pos) end
            SRL_MOD[effect.key].role.draw_major = self
            SRL_MOD[effect.key]:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

--- BUFFS ---

--- Agile ---

SRL_MOD.Effect{
    key = "agile",
    name = "Agile",
    pos = {x = 0, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Arcana ---

SRL_MOD.Effect{
    key = "arcana",
    name = "Arcana",
    pos = {x = 1, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Barrier ---

SRL_MOD.Effect{
    key = "barrier",
    name = "Barrier",
    pos = {x = 2, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Berserk ---

SRL_MOD.Effect{
    key = "berserk",
    name = "Berserk",
    pos = {x = 3, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Defensive ---

SRL_MOD.Effect{
    key = "defensive",
    name = "Defensive",
    pos = {x = 4, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Immune ---

SRL_MOD.Effect{
    key = "immune",
    name = "Immune",
    pos = {x = 5, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Invisible ---

SRL_MOD.Effect{
    key = "invisible",
    name = "Invisible",
    pos = {x = 6, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Leeching ---

SRL_MOD.Effect{
    key = "leeching",
    name = "Leeching",
    pos = {x = 7, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Mending ---

SRL_MOD.Effect{
    key = "mending",
    name = "Mending",
    pos = {x = 8, y = 0},
    config = {extra = {blind = 10, rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.blind, cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
        if (context.setting_blind or context.srl_trigger_effect) and SRL_FUNC.no_bp_retrigger(context) then
            SRL_FUNC.lower_blind_req(card, self.config.extra.blind)
        end
    end,
}

--- Proficient ---

SRL_MOD.Effect{
    key = "proficient",
    name = "Proficient",
    pos = {x = 9, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Protected ---

SRL_MOD.Effect{
    key = "protected",
    name = "Protected",
    pos = {x = 10, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Rebirth ---

SRL_MOD.Effect{
    key = "rebirth",
    name = "Rebirth",
    pos = {x = 11, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Repelling ---

SRL_MOD.Effect{
    key = "repelling",
    name = "Repelling",
    pos = {x = 12, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Savage ---

SRL_MOD.Effect{
    key = "savage",
    name = "Savage",
    pos = {x = 13, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Shelled ---

SRL_MOD.Effect{
    key = "shelled",
    name = "Shelled",
    pos = {x = 14, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Splashing ---

SRL_MOD.Effect{
    key = "splashing",
    name = "Splashing",
    pos = {x = 15, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Taunting ---

SRL_MOD.Effect{
    key = "taunting",
    name = "Taunting",
    pos = {x = 16, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Warded ---

SRL_MOD.Effect{
    key = "warded",
    name = "Warded",
    pos = {x = 17, y = 0},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- DEBUFFS ---

--- Bleeding ---

SRL_MOD.Effect{
    key = "bleeding",
    name = "Bleeding",
    pos = {x = 0, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Blighted ---

SRL_MOD.Effect{
    key = "blighted",
    name = "Blighted",
    pos = {x = 1, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Blind ---

SRL_MOD.Effect{
    key = "blind",
    name = "Blind",
    pos = {x = 2, y = 1},
    config = {extra = {odds = 4, rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        local num, den = SMODS.get_probability_vars((card or self), 1, cfg.extra.odds)
        return {vars = {num, den, cfg.extra.rounds}}
    end,
    -- Effect in "Card.calculate_joker" hook
}

--- Bomb ---

SRL_MOD.Effect{
    key = "bomb",
    name = "Bomb",
    pos = {x = 3, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Burning ---

SRL_MOD.Effect{
    key = "burning",
    name = "Burning",
    pos = {x = 4, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Confused ---

SRL_MOD.Effect{
    key = "confused",
    name = "Confused",
    pos = {x = 5, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Cursed ---

SRL_MOD.Effect{
    key = "cursed",
    name = "Cursed",
    pos = {x = 6, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Disarmed ---

SRL_MOD.Effect{
    key = "disarmed",
    name = "Disarmed",
    pos = {x = 7, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Feared ---

SRL_MOD.Effect{
    key = "feared",
    name = "Feared",
    pos = {x = 8, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Frozen ---

SRL_MOD.Effect{
    key = "frozen",
    name = "Frozen",
    pos = {x = 9, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Inverted ---

SRL_MOD.Effect{
    key = "inverted",
    name = "Inverted",
    pos = {x = 10, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Poisoned ---

SRL_MOD.Effect{
    key = "poisoned",
    name = "Poisoned",
    pos = {x = 11, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Scorned ---

SRL_MOD.Effect{
    key = "scorned",
    name = "Scorned",
    pos = {x = 12, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Silenced ---

SRL_MOD.Effect{
    key = "silenced",
    name = "Silenced",
    pos = {x = 13, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Sleeping ---

SRL_MOD.Effect{
    key = "sleeping",
    name = "Sleeping",
    pos = {x = 14, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Snared ---

SRL_MOD.Effect{
    key = "snared",
    name = "Snared",
    pos = {x = 15, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Stone ---

SRL_MOD.Effect{
    key = "stone",
    name = "Stone",
    pos = {x = 16, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Vulnerable ---

SRL_MOD.Effect{
    key = "vulnerable",
    name = "Vulnerable",
    pos = {x = 17, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Weak ---

SRL_MOD.Effect{
    key = "weak",
    name = "Weak",
    pos = {x = 18, y = 1},
    config = {extra = {rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

create_UIBox_your_collection_effects = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.Effect, {4, 4}, {
        snap_back = true,
        center = 'c_base',
        h_mod = 1.03,
        back_func = 'your_collection_other_gameobjects',
        modify_card = function(card, center)
            SRL_FUNC.set_effect(card, center, 1, true)
        end,
    })
end

G.FUNCS.your_collection_effects = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu{
        definition = create_UIBox_your_collection_effects(),
    }
end