SMODS.Atlas{
    key = "srl_minions",
    path = "srl_minions.png",
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = "srl_minions_mini",
    path = "srl_minions_mini.png",
    px = 18,
    py = 18
}

SRL_MOD.Minion = SMODS.Center:extend {
    class_prefix = 'min',
    discovered = false,
    unlocked = true,
    pos = { x = 0, y = 0 },
    config = {},
    set = 'Minion',
    atlas = 'srl_minions',
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
        if minion then
            if not SRL_MOD[minion.key] then SRL_MOD[minion.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_minions"], {x = 0,y = 0}) end
            SRL_MOD[minion.key].role.draw_major = self
            SRL_MOD[minion.key]:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

SRL_MOD.Minion{
    key = "animated_gem",
    name = "Animated Gem",
    pos = {x = 0, y = 0},
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

create_UIBox_your_collection_minions = function()
    return SMODS.card_collection_UIBox(G.P_CENTER_POOLS.Minion, {4, 4}, {
        snap_back = true,
        center = 'c_base',
        h_mod = 1.03,
        back_func = 'your_collection_other_gameobjects',
        modify_card = function(card, center)
            SRL_FUNC.set_minion(card, center)
        end,
    })
end

G.FUNCS.your_collection_minions = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu{
        definition = create_UIBox_your_collection_minions(),
    }
end