SMODS.Atlas{
    key = "srl_effects",
    path = "srl_effects.png",
    px = 71,
    py = 95
}

SMODS.Atlas{
    key = "srl_effects_mini",
    path = "srl_effects_mini.png",
    px = 18,
    py = 18
}

SMODS.Sound{
    key = "srl_bonus",
    path = "srl_bonus.ogg",
    volume = 0.5
}

SMODS.Sound{
    key = "srl_malus",
    path = "srl_malus.ogg",
    volume = 0.5
}

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
        if effect then
            if not SRL_MOD[effect.key] then SRL_MOD[effect.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_effects"], {x = effect.pos.x, y = effect.pos.y}) end
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
        if effect then
            if not SRL_MOD[effect.key] then SRL_MOD[effect.key] = Sprite(0, 0, G.CARD_W, G.CARD_H, G.ASSET_ATLAS["srl_effects"], {x = effect.pos.x, y = effect.pos.y}) end
            SRL_MOD[effect.key].role.draw_major = self
            SRL_MOD[effect.key]:draw_shader('dissolve', nil, nil, nil, self.children.center)
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

SRL_MOD.Effect{
    key = "mending",
    name = "Mending",
    pos = {x = 0, y = 0},
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

SRL_MOD.Effect{
    key = "blind",
    name = "Blind",
    pos = {x = 1, y = 0},
    config = {extra = {odds = 4, rounds = 1}},
    is_buff = false,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        local num, den = SMODS.get_probability_vars((card or self), 1, cfg.extra.odds)
        return {vars = {num, den, cfg.extra.rounds}}
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
            SRL_FUNC.set_effect(card, center)
        end,
    })
end

G.FUNCS.your_collection_effects = function(e)
    G.SETTINGS.paused = true
    G.FUNCS.overlay_menu{
        definition = create_UIBox_your_collection_effects(),
    }
end