SRL_MOD.Minion = SMODS.Center:extend {
    class_prefix = 'min',
    discovered = false,
    unlocked = true,
    pos = { x = 0, y = 2 },
    config = {},
    set = 'Minion',
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
}

SMODS.DrawStep {
    key = 'minion',
    order = 31,
    func = function(self, layer)
        local minion = (self and self.ability and self.ability.srl_minion) or nil
        if minion and minion.key then
            if not SRL_MOD[minion.key] then SRL_MOD[minion.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_effects"], minion.pos) end
            SRL_MOD[minion.key].role.draw_major = self
            SRL_MOD[minion.key]:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

--- Animated Gem ---

SRL_MOD.Minion{
    key = "animated_gem",
    name = "Animated Gem",
    pos = {x = 0, y = 2},
    config = {extra = {chips = 30, rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.chips, cfg.extra.rounds}}
    end,
    calculate = function(self, center, context)
        if context.pre_joker then
            return {
                chips = self.config.extra.chips
            }
        end
    end,
}

--- Animated Weapon ---

SRL_MOD.Minion{
    key = "animated_weapon",
    name = "Animated Weapon",
    pos = {x = 1, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Dire Wolves ---

SRL_MOD.Minion{
    key = "dire_wolves",
    name = "Dire Wolves",
    pos = {x = 2, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Doppleganger ---

SRL_MOD.Minion{
    key = "doppleganger",
    name = "Doppleganger",
    pos = {x = 3, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Spiderlings ---

SRL_MOD.Minion{
    key = "spiderlings",
    name = "Spiderlings",
    pos = {x = 4, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Unstable Horror ---

SRL_MOD.Minion{
    key = "unstable_horror",
    name = "Unstable Horror",
    pos = {x = 5, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Writhelings ---

SRL_MOD.Minion{
    key = "writhelings",
    name = "Writhelings",
    pos = {x = 6, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Zombies ---

SRL_MOD.Minion{
    key = "zombies",
    name = "Zombies",
    pos = {x = 7, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Conquest ---

SRL_MOD.Minion{
    key = "conquest",
    name = "Conquest",
    pos = {x = 8, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Death ---

SRL_MOD.Minion{
    key = "death",
    name = "Death",
    pos = {x = 9, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Famine ---

SRL_MOD.Minion{
    key = "famine",
    name = "Famine",
    pos = {x = 10, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- War ---

SRL_MOD.Minion{
    key = "war",
    name = "War",
    pos = {x = 11, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Microbots ---

SRL_MOD.Minion{
    key = "microbots",
    name = "Microbots",
    pos = {x = 12, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Amalgamation ---

SRL_MOD.Minion{
    key = "amalgamation",
    name = "Amalgamation",
    pos = {x = 13, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Illusion ---

SRL_MOD.Minion{
    key = "illusion",
    name = "Illusion",
    pos = {x = 14, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

--- Torun Junior ---

SRL_MOD.Minion{
    key = "torun_junior",
    name = "Torun Junior",
    pos = {x = 15, y = 2},
    config = {extra = {rounds = 1}},
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {vars = {cfg.extra.rounds}}
    end,
    calculate = function(self, card, context)
    end,
}

create_UIBox_your_collection_minions = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.Minion, {4, 4}, {
        snap_back = true,
        center = 'c_base',
        h_mod = 1.03,
        back_func = 'your_collection_other_gameobjects',
        modify_card = function(card, center)
            SRL_FUNC.set_minion(card, center, 1, true)
        end,
    })
end

G.FUNCS.your_collection_minions = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu{
        definition = create_UIBox_your_collection_minions(),
    }
end