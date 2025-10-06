SMODS.ConsumableType {
    key = 'srl_Class_Orb',
    collection_rows = {3, 3},
    primary_colour = HEX('286093'),
    secondary_colour = HEX('527fa8'),
    default = "c_srl_nature_orb",
}

local classes = {"Chaos", "Death", "Life", "Nature", "Sorcery", "Ultimate"}

-- X Orb

for i = 1, #classes do
    SMODS.Consumable{
        key = classes[i]:lower() .. '_orb',
        name = classes[i] .. ' Orb',
        set = 'srl_Class_Orb',
        pos = {x = i - 1, y = 0},
        cost = 4,
        hidden = classes[i] == "Ultimate",
        loc_vars = function(self, info_queue, card)
            if classes[i] == "Ultimate" then
                info_queue[#info_queue+1] = {key = "srl_ultimate_class", set = "Other"}
            end
        end,
        can_use = function(self, card, area, copier)
            if G.jokers and #G.jokers.highlighted == 1 then
                local class = SRL_FUNC.get_class(G.jokers.highlighted[1])
                return class and class ~= "Ultimate" and class ~= classes[i]
            end
            return false
        end,
        use = function(self, card)
            local used_tarot = card or self
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                local selected_creature = G.jokers.highlighted[1]
                selected_creature.ability.srl_class_orb = classes[i]
                used_tarot:juice_up(0.3, 0.5)
                return true
            end}))
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function() if G.jokers then G.jokers:unhighlight_all() end; return true end }))
        end,
        display_size = {w = 79, h = 81},
        atlas = "srl_class_orbs"
    }

    SRL_MOD.modded_consumables["c_srl_" .. classes[i]:lower() .. "_orb"] = classes[i] .. " Orb"
end

-- Fusion

Fusion = Card:extend()

function Fusion:init(args)
    self.base_cost = args.base_cost or 0
    self.extra_cost = args.extra_cost or 0
    self.cost = args.cost or 0
    self.sell_cost = args.sell_cost or 0
    self.sell_cost_label = args.sell_cost_label or 0
    self.area = args.srl_fusion.area
    self.base = {}

    self.key = args.key
    self.fake_card = true
    self.srl_fusion = args.srl_fusion
    self.ability = args.ability
    self.config = args.config
end

function Fusion:save()
    local cardTable = {
        base_cost = self.base_cost,
        extra_cost = self.extra_cost,
        cost = self.cost,
        sell_cost = self.sell_cost,
        ability = self.ability,
        fake_card = true,
        config = {
            center = self.config.center.key
        },
    }
    return cardTable
end

SMODS.Consumable{
    key = 'fusion',
    name = 'Fusion',
    set = 'Spectral',
    pos = {x = 0, y = 0},
    cost = 4,
    can_use = function(self, card, area, copier)
        if G.jokers and G.jokers.cards and (G.jokers.highlighted and #G.jokers.highlighted == 1) then
            local selected_creature = G.jokers.highlighted[1]
            if not SRL_FUNC.is_fused(selected_creature) then
                for _, v in ipairs(G.jokers.cards) do
                    if v ~= selected_creature and v.T.x > selected_creature.T.x and SRL_FUNC.is_creature(v) and selected_creature.config.center.key ~= v.config.center.key and not SRL_FUNC.is_fused(v) then
                        return true
                    end
                end
            end
        end
        return false
    end,
    use = function(self, card)
        local used_tarot = card or self
        local selected_creature = G.jokers.highlighted[1]
        local creature_to_fuse = nil

        for _, v in ipairs(G.jokers.cards) do
            if v ~= selected_creature and v.T.x > selected_creature.T.x and SRL_FUNC.is_creature(v) and not SRL_FUNC.is_fused(v) then
                creature_to_fuse = v
                break
            end
        end

        G.E_MANAGER:add_event(Event({func = function()
            selected_creature.ability.extra.srl_class = SRL_FUNC.get_class(creature_to_fuse, true)

            if creature_to_fuse.ability.srl_class_orb then
                if not selected_creature.ability.srl_class_orb or (selected_creature.ability.srl_class_orb and selected_creature.ability.srl_class_orb ~= "Ultimate") then
                    selected_creature.ability.srl_class_orb = creature_to_fuse.ability.srl_class_orb
                    creature_to_fuse.ability.srl_class_orb = nil
                end
            end

            selected_creature.ability.srl_fusion = Fusion({
                fake_card = true,
                srl_fusion = selected_creature,
                key = creature_to_fuse.config.center_key,
                ability = copy_table(creature_to_fuse.ability),
                config = {
                    center = G.P_CENTERS[creature_to_fuse.config.center_key]
                },
            })

            used_tarot:juice_up(0.3, 0.5)

            return true
        end}))

        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                creature_to_fuse.srl_ignore_remove_effects = true
                creature_to_fuse:start_dissolve()
            return true
        end}))

        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.2, func = function() if G.jokers then G.jokers:unhighlight_all() end; return true end }))
    end,
}

SRL_MOD.modded_consumables["c_srl_fusion"] = "Fusion"