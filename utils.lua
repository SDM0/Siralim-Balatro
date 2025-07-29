
--- DEBUG ---

-- Quicker way to print elements
function srl_debug(elem)
    if not elem then return sendDebugMessage("[Siralim Balatro] DEBUG: This element doesn't exist") end
    if type(elem) == "boolean" then
        return (elem and sendDebugMessage("[Siralim Balatro] DEBUG: true")) or sendDebugMessage("[Siralim Balatro] DEBUG: false")
    end
    if type(elem) == "table" then
        return sendDebugMessage("[Siralim Balatro] DEBUG: " .. inspect(elem))
    else
        return sendDebugMessage("[Siralim Balatro] DEBUG: " .. elem)
    end
end

--- UTILITY ---

-- Get value in a card.ability.extra table
function SRL_FUNC.get_extra_val(val)
    if not (G.jokers and G.jokers.cards) then return end

    for _, v in ipairs(G.jokers.cards) do
        if v and v.ability and v.ability.extra and v.ability.extra[val] ~= nil then
            return v.ability.extra[val]
        end
    end
end

-- Init light rainbow gradient
SMODS.Gradient {
    key = "light_rainbow",
    colours = {HEX("ff7474"), HEX("4399e7"), HEX("6ad564")},
    cycle = 1
}

-- Find value in a card.ability.extra table
function SRL_FUNC.get_class_color(class)
    local class_color = {
        ["Chaos"] = G.C.MULT,
        ["Death"] = G.C.SECONDARY_SET.Spectral,
        ["Life"] = G.C.GOLD,
        ["Nature"] = G.C.GREEN,
        ["Sorcery"] = G.C.SECONDARY_SET.Tarot,
        ["Ultimate"] = SMODS.Gradients.srl_light_rainbow,
    }

    return class_color[class]
end

-- Check if the Joker card is a Creature
function SRL_FUNC.is_creature(card)
    if not card then return false end
    local extra = card.ability and card.ability.extra
    if extra ~= nil and type(extra) == "table" then
        local class = card.ability.extra.srl_class
        return class ~= nil
    end
    return false
end

-- Count each Creature
function SRL_FUNC.count_creature()
    if not G.jokers then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        if SRL_FUNC.is_creature(v) then
            total = total + 1
        end
    end
    return total
end

-- Get a Creature's class
function SRL_FUNC.get_class(card, ignore_effect)
    if not SRL_FUNC.is_creature(card) then return end

    --Priority: Ultimate > Creature Effect > Class Orb > Fusion Class > Original Class

    if not ignore_effect then
        if card.ability.srl_class_orb and card.ability.srl_class_orb == "Ultimate" then
            return card.ability.srl_class_orb
        end

        -- TODO: Add creature effect check if any is added

        if card.ability.srl_class_orb then
            return card.ability.srl_class_orb
        end

        if card.ability.srl_fusion and card.ability.srl_fusion.ability then
            return card.ability.srl_fusion.ability.extra.srl_class
        end
    end

    return card.ability.extra.srl_class
end

-- Get a Creature's race
function SRL_FUNC.get_race(card, ignore_effect)
    if not SRL_FUNC.is_creature(card) then return end

    return card.ability.extra.srl_race
end

-- Get a Creature's fusion
function SRL_FUNC.get_fusion(card)
    if not SRL_FUNC.is_creature(card) then return end

    return card.ability.srl_fusion
end

-- Check if a Creature has a specific class(es)
function SRL_FUNC.is_class(card, class)
    if not card or not class then return false end

    local card_class = SRL_FUNC.get_class(card)
    if card_class == "Ultimate" then return true end

    return (card_class and card_class == class)
    -- TODO: Add changes if Creatures modify class
end

-- Check if a Creature has a specific race(s)
function SRL_FUNC.is_race(card, race)
    if not card or not race then return false end

    local card_race = SRL_FUNC.get_race(card)

    return (card_race and card_race == race)
    -- TODO: Add changes if Creatures modify race
end

-- Check if a Creature has been fused
function SRL_FUNC.is_fused(card)
    if not card then return false end

    local card_fusion = SRL_FUNC.get_fusion(card)

    return (card_fusion and card_fusion ~= nil)
end

-- Check if the Joker card is a Creature and not a fusion
function SRL_FUNC.is_normal_creature(card)
    if not card then return false end

    return SRL_FUNC.is_creature(card) and not SRL_FUNC.is_fused(card)
end

-- Check if the Joker card is a Creature fusion
function SRL_FUNC.is_fused_creature(card)
    if not card then return false end

    return SRL_FUNC.is_creature(card) and SRL_FUNC.is_fused(card)
end

-- Check if there are x Creatures with a specific class
function SRL_FUNC.has_class(class, amount)
    if not (G.jokers and G.jokers.cards) then return false end

    local goal = amount or 1
    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        if SRL_FUNC.is_creature(v) then
            if SRL_FUNC.is_class(v, class) then
                total = total + 1
            end
        end
    end

    return total >= goal
end

-- Check if there are x Creatures with a specific race
function SRL_FUNC.has_race(race, amount)
    if not (G.jokers and G.jokers.cards) then return false end

    local goal = amount or 1
    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        if SRL_FUNC.is_creature(v) then
            if SRL_FUNC.is_race(v, race) then
                total = total + 1
            end
        end
    end

    return total >= goal
end

-- Count Creatures with a specific class
function SRL_FUNC.count_class(class)
    if not (G.jokers and G.jokers.cards) then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        if SRL_FUNC.is_creature(v) then
            if SRL_FUNC.is_class(v, class) then
                total = total + 1
            end
        end
    end

    return total
end

-- Count Creatures with a specific class
function SRL_FUNC.count_race(race)
    if not (G.jokers and G.jokers.cards) then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        if SRL_FUNC.is_creature(v) then
            if SRL_FUNC.is_race(v, race) then
                total = total + 1
            end
        end
    end

    return total
end

-- Check if there are x Creatures with a specific race
function SRL_FUNC.get_spell_gem(card)
    return (card and card.ability and card.ability.srl_class_orb)
end

-- Shortenen buff check
function SRL_FUNC.buff_check(card, buff)
    if not card.ability.srl_buff then card.ability.srl_buff = {} end
    if not card.ability.srl_buff[buff] then card.ability.srl_buff[buff] = {} end
    return card.ability.srl_buff[buff]
end

-- Shortenen buff change
function SRL_FUNC.buff_change(card, buff, value, sign)
    if not card then return end

    local buffs = SRL_FUNC.buff_check(card, buff)
    local op = sign or '+'

    if op == '+' then
        buffs[#buffs+1] = value
    elseif op == '-' then
        for i, v in ipairs(buffs) do
            if v == value then
                table.remove(buffs, i)
                break
            end
        end
    elseif op == 'reset' then
        card.ability.srl_buff[buff] = {}
    end
end

-- Shortenen buffs getter
function SRL_FUNC.buff_get(card, buff)
    local buffs = SRL_FUNC.buff_check(card, buff)
    local total = 1

    for _, v in ipairs(buffs) do
        total = total * v
    end

    return total
end

-- Get the Creature and it's fusion if it has one
function SRL_FUNC.get_fusions()
    local collected = {}
    local function collect(card)
        if not card or collected[card] then return end
        collected[card] = true
        if card.ability and card.ability.srl_fusion then
            collect(card.ability.srl_fusion)
        end
    end

    for _, card in ipairs(G.jokers.cards or {}) do
        collect(card)
    end

    local result = {}
    for card in pairs(collected) do
        result[#result + 1] = card
    end

    return result
end

-- Update buffed values
function SRL_FUNC.apply_all_buffs()
    if not (G.jokers and G.jokers.cards) then return end

    local all_creatures = SRL_FUNC.get_fusions()
    local targets = {}

    -- Include all cards that qualify as creatures
    for _, card in ipairs(all_creatures) do
        if SRL_FUNC.is_creature(card) then
            targets[#targets+1] = card
        end
    end

    -- Reset all existing buffs
    for _, card in ipairs(targets) do
        if card.ability and card.ability.srl_buff then
            for buff_key in pairs(card.ability.srl_buff) do
                SRL_FUNC.buff_change(card, buff_key, nil, 'reset')
            end
        end
    end

    -- Apply self-buffs to creatures
    for _, target in ipairs(targets) do
        for _, stat in ipairs(SRL_MOD.buffable_stats or {}) do
            local field = 'srl_passive_buff_' .. stat
            if target.ability and target.ability[field] then
                SRL_FUNC.buff_change(target, stat, target.ability[field], '+')
            end
        end
    end

    -- Apply buffs from sources to targets and their fusions
    for _, source in ipairs(all_creatures) do
        local extra = source.ability and source.ability.extra or {}
        local center = source.config and source.config.center or nil
        local buff_target_filter = center and center.srl_buff_target_filter

        if extra and type(extra) == "table" then
            for key, value in pairs(extra) do
                if key:match("^buff_") then
                    local buff_type = key:gsub("^buff_", "")
                    local stats = (buff_type == "all") and SRL_MOD.buffable_stats or {buff_type}

                    for _, target in ipairs(targets) do
                        local passes_filter = not buff_target_filter or buff_target_filter(target)
                        if passes_filter then
                            -- Apply to the main target
                            for _, stat in ipairs(stats) do
                                SRL_FUNC.buff_change(target, stat, value, '+')
                            end

                            -- Also apply to its fusion (unconditionally)
                            local fusion = target.ability and target.ability.srl_fusion
                            if fusion then
                                for _, stat in ipairs(stats) do
                                    SRL_FUNC.buff_change(fusion, stat, value, '+')
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

-- Check if a Creature can receive buffs
function SRL_FUNC.can_receive_buff(card)
    if not SRL_FUNC.is_creature(card) and not (card and card.ability and card.ability.extra) then return false end

    local buffable_stats = SRL_MOD.buffable_stats or {}

    for _, stat in ipairs(buffable_stats) do
        if card.ability.extra[stat] ~= nil then
            return true
        end
    end

    return false
end

-- Shortent value with modifiers
function SRL_FUNC.mod_val(card, val, other)
    local extra = other or 1

    return card.ability.extra[val] * SRL_FUNC.buff_get(card, val) * extra
end

-- Get a number reduced by mod%
function SRL_FUNC.num_mod(amount, mod)
    if not amount then return 0 end

    local total = amount

    if mod then
        return math.floor(total * (mod / 100))
    end

    return total
end

-- Add edition tooltip
function SRL_FUNC.ed_iq(card, info_queue, edition)
    if card and info_queue then
        if not card.edition or (card.edition and not card.edition[edition]) then
            info_queue[#info_queue+1] = G.P_CENTERS["e_" .. edition]
        end
    end
end

-- Get buff on card
function SRL_FUNC.get_buff(card)
    if not card then return end

    if card.ability and card.ability.srl_effect_buff then
        return card.ability.srl_effect_buff
    end
end

-- Get debuff on card
function SRL_FUNC.get_debuff(card)
    if not card then return end

    if card.ability and card.ability.srl_effect_debuff then
        return card.ability.srl_effect_debuff
    end
end

-- Get buff name on card
function SRL_FUNC.get_buff_name(card)
    if not card then return end

    if card.ability and card.ability.srl_effect_buff then
        return card.ability.srl_effect_buff.name
    end
end

-- Get debuff name on card
function SRL_FUNC.get_debuff_name(card)
    if not card then return end

    if card.ability and card.ability.srl_effect_debuff then
        return card.ability.srl_effect_debuff.name
    end
end

-- Set buff/debuff on card
function SRL_FUNC.set_effect(card, effect, rounds, immediate)
    if not (card and effect) then return end

    local _effect = effect

    if type(effect) == 'string' then
        local mod_key = "eff_srl_" .. string.lower(effect):gsub("%s+", "_")
        if G.P_CENTERS[mod_key] then _effect = G.P_CENTERS[mod_key] end
    end

    if _effect then
        local _rounds = rounds or 1
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = not immediate and 0.2 or 0,
            blockable = not immediate,
            func = function()
                local effect_type = _effect.is_buff and "buff" or "debuff"
                card.ability["srl_effect_" .. effect_type] = {
                    key = _effect.key,
                    name = _effect.name,
                    config = _effect.config,
                    pos = _effect.pos,
                }
                card.ability["srl_effect_" .. effect_type .. "_rounds"] = _rounds
                if not immediate then
                    card:juice_up(1, 0.5)
                    play_sound((_effect.is_buff and 'srl_bonus') or 'srl_malus')
                end
                SMODS.enh_cache:write(card, nil)
                return true
            end
        }))
    end
end

-- Remove buff on card
function SRL_FUNC.remove_buff(card)
    if SRL_FUNC.get_buff(card) then
        card.ability.srl_effect_buff = nil
        card.ability.srl_effect_buff_rounds = nil
    end
end

-- Remove debuff on card
function SRL_FUNC.remove_debuff(card)
    if SRL_FUNC.get_debuff(card) then
        card.ability.srl_effect_debuff = nil
        card.ability.srl_effect_debuff_rounds = nil
    end
end

-- Prefab for effect info_queue
function SRL_FUNC.eff_iq(effect, card)
    if not effect then return end

    local effect_key = (type(effect) == 'table' and effect.key) or ("eff_srl_" .. string.lower(effect):gsub("%s+", "_"))
    local _effect = (type(effect) == 'string' and G.P_CENTERS[effect_key]) or effect

    if not _effect then return {} end
    local buff = SRL_FUNC.get_buff(card)
    local debuff = SRL_FUNC.get_debuff(card)
    if card and ((buff and buff.key) or (debuff and debuff.key)) == effect_key then return end

    local _vars = {}
    if _effect.loc_vars and type(_effect.loc_vars) == "function" then
        local effect_loc_vars = _effect:loc_vars(nil, _effect)
        _vars = (effect_loc_vars and effect_loc_vars.vars)
    end

    return {
        key = _effect.key .. '_no_rounds',
        set = 'Other',
        vars = _vars
    }
end

-- Count each Joker with any or a specific buff
function SRL_FUNC.count_buff(effect)
    if not (G.jokers and G.jokers.cards) then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        local effect_name = SRL_FUNC.get_buff_name(v)
        if effect_name ~= nil and (not effect or (effect and effect_name == effect)) then
            total = total + 1
        end
    end

    return total
end

-- Count each Joker with any or a specific debuff
function SRL_FUNC.count_debuff(effect)
    if not (G.jokers and G.jokers.cards) then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        local effect_name = SRL_FUNC.get_debuff_name(v)
        if effect_name ~= nil and (not effect or (effect and effect_name == effect)) then
            total = total + 1
        end
    end

    return total
end

-- Get minion on card
function SRL_FUNC.get_minion(card)
    if not card then return end

    if card.ability and card.ability.srl_minion then
        return card.ability.srl_minion
    end
end

-- Get minion name on card
function SRL_FUNC.get_minion_name(card)
    if not card then return end

    if card.ability and card.ability.srl_minion then
        return card.ability.srl_minion.name
    end
end

-- Set minion on card
function SRL_FUNC.set_minion(card, minion, rounds, immediate)
    if not (card and minion) then return end

    local _minion = nil

    if type(minion) == 'string' then
        _minion = G.P_CENTERS["min_srl_" .. string.lower(minion):gsub("%s+", "_")]
    elseif type(minion) == 'table' and minion.key and G.P_CENTERS[minion.key] == minion then
        _minion = minion
    end

    if _minion then
        local _rounds = rounds or 1
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = not immediate and 0.2 or 0,
            blockable = not immediate,
            func = function()
                card.ability.srl_minion = {
                    key = _minion.key,
                    name = _minion.name,
                    config = _minion.config,
                    pos = _minion.pos,
                }
                card.ability.srl_minion_rounds = _rounds
                if not immediate then
                    card:juice_up(1, 0.5)
                    play_sound('srl_bonus')
                end
                SMODS.enh_cache:write(card, nil)
                return true
            end
        }))
    end
end

-- Remove minion on card
function SRL_FUNC.remove_minion(card)
    if SRL_FUNC.get_minion(card) then
        card.ability.srl_minion = nil
        card.ability.srl_minion_rounds = nil
    end
end

-- Prefab for minion info_queue
function SRL_FUNC.min_iq(minion, card)
    if not minion then return end

    local minion_key = (type(minion) == 'table' and minion.key) or ("min_srl_" .. string.lower(minion):gsub("%s+", "_"))
    local _minion = (type(minion) == 'string' and G.P_CENTERS[minion_key]) or minion

    if not _minion then return {} end
    local ally = SRL_FUNC.get_minion(card)
    if card and (ally and ally.key) == minion_key then return end

    local _vars = {}
    if _minion.loc_vars and type(_minion.loc_vars) == "function" then
        local minion_loc_vars = _minion:loc_vars(nil, _minion)
        _vars = (minion_loc_vars and minion_loc_vars.vars)
    end

    return {
        key = _minion.key .. '_no_rounds',
        set = 'Other',
        vars = _vars
    }
end

-- Count each Joker with any or a specific minion
function SRL_FUNC.count_minion(minion)
    if not (G.jokers and G.jokers.cards) then return 0 end

    local total = 0

    for _, v in ipairs(G.jokers.cards) do
        local minion_name = SRL_FUNC.get_minion_name(v)
        if minion_name ~= nil and (not minion or (minion and minion_name == minion)) then
            total = total + 1
        end
    end

    return total
end

--- CALCULATION ---

-- Faster way to write non-BP/retrigger check
function SRL_FUNC.no_bp_retrigger(context)
    if not context then return false end

    return not (context.blueprint or context.retrigger_joker or context.retrigger_joker_check)
end

-- Lower blind requirement
function SRL_FUNC.lower_blind_req(card, amount)
    if G.GAME.blind.chips then
        local reduction_pct = math.max(0, math.min(amount, 100))
        local multiplier = 1 - (reduction_pct / 100)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.05,
            func = function()
                G.GAME.blind.chips = math.max(0, math.floor(G.GAME.blind.chips * multiplier))
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)

                local chips_UI = G.hand_text_area.blind_chips
                G.FUNCS.blind_chip_UI_scale(chips_UI)
                G.HUD_blind:recalculate();

                card:juice_up()
                chips_UI:juice_up()

                if not silent then
                    play_sound('chips2')
                end

                return true
            end
        }))

        card_eval_status_text(card, 'extra', nil, nil, nil, {
            message = {"-" .. amount .. "%"},
            colour = G.C.FILTER
        })
    end
end

-- Calculation for buffs
function Card:calculate_srl_buff(context, trigger_effect)
    if self.ability.srl_effect_buff then
        local effect = G.P_CENTERS[self.ability.srl_effect_buff.key]
        if effect.calculate and type(effect.calculate) == 'function' then
            if trigger_effect then context.srl_trigger_effect = true end
            local o = effect:calculate(self, context)
            if o then
                if not o.card then o.card = self end
                return o
            end
        end
    end
end

-- Calculation for debuffs
function Card:calculate_srl_debuff(context, trigger_effect)
    if self.ability.srl_effect_debuff then
        local effect = G.P_CENTERS[self.ability.srl_effect_debuff.key]
        if effect.calculate and type(effect.calculate) == 'function' then
            if trigger_effect then context.srl_trigger_effect = true end
            local o = effect:calculate(self, context)
            if o then
                if not o.card then o.card = self end
                return o
            end
        end
    end
end

-- Calculation for minions
function Card:calculate_srl_minion(context, trigger_minion)
    if self.ability.srl_minion then
        local minion = G.P_CENTERS[self.ability.srl_minion.key]
        if minion.calculate and type(minion.calculate) == 'function' then
            if trigger_minion then context.trigger_minion = true end
            local o = minion:calculate(self, context)
            if o then
                if not o.card then o.card = self end
                return o
            end
        end
    end
end

-- Calculation for buffs at end of round
function Card:calculate_eor_srl_buff(context)
    if self.ability.srl_effect_buff then
        self.ability.srl_effect_buff_rounds = self.ability.srl_effect_buff_rounds - 1
        if self.ability.srl_effect_buff_rounds <= 0 then
            SRL_FUNC.remove_buff(self)
        end
    end
end

-- Calculation for debuffs at end of round
function Card:calculate_eor_srl_debuff(context)
    if self.ability.srl_effect_debuff then
        self.ability.srl_effect_debuff_rounds = self.ability.srl_effect_debuff_rounds - 1
        if self.ability.srl_effect_debuff_rounds <= 0 then
            SRL_FUNC.remove_debuff(self)
        end
    end
end

-- Calculation for minions at end of round
function Card:calculate_eor_srl_minion(context)
    if self.ability.srl_minion then
        self.ability.srl_minion_rounds = self.ability.srl_minion_rounds - 1
        if self.ability.srl_minion_rounds <= 0 then
            SRL_FUNC.remove_minion(self)
        end
    end
end

--- OVERRIDES ---

-- Calculate fusion
local ccj = Card.calculate_joker
function Card:calculate_joker(context)
    local calc = ccj(self, context)

    if self and self.ability and self.ability.srl_fusion then
        local ret, trig = Card.calculate_joker(self.ability.srl_fusion, context)

        return SMODS.merge_effects({calc}, {ret}), trig
    end

    if not self.fake_card and context.end_of_round and context.main_eval and SRL_FUNC.no_bp_retrigger(context) then
        self:calculate_eor_srl_buff()
        self:calculate_eor_srl_debuff()
        self:calculate_eor_srl_minion()
    end

    if not (context.card and context.card == self) and calc ~= nil and SRL_FUNC.get_debuff_name(self) == "Blind" then
        local malus = SRL_FUNC.get_debuff(self)
        if SMODS.pseudorandom_probability(self, "blind", 1, malus.config.extra.odds) then
            card_eval_status_text(self, 'extra', nil, nil, nil, {
                message = localize('k_nope_ex'),
                colour = G.C.SECONDARY_SET.Tarot
            })
            return nil, false
        end
    end

    return calc
end

-- Calculate cash out for fusion
local cdb = Card.calculate_dollar_bonus
function Card:calculate_dollar_bonus()
    local calc = cdb(self)

    local malus = SRL_FUNC.get_debuff_name(self)
    if calc and calc ~= 0 and malus and malus == "Blind" and SMODS.pseudorandom_probability(self, "blind", 1, 1) then
        card_eval_status_text(self, 'extra', nil, nil, nil, {
            message = localize('k_nope_ex'),
            colour = G.C.SECONDARY_SET.Tarot
        })
        return
    end

    if self and self.ability and self.ability.srl_fusion then
        local obj = self.ability.srl_fusion.config.center
        if obj and obj.calculate_dollar_bonus and type(obj.calculate_dollar_bonus) == 'function' then
            local ret = obj:calculate_dollar_bonus()
            return (calc and ret and calc + ret) or ret
        end
    end

    return calc
end

-- Trigger add effect for fusion
local catd = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    if self and self.ability and self.ability.srl_fusion then
        if not self.ability.srl_fusion.added_to_deck then
            self.ability.srl_fusion.added_to_deck = true
            local obj = self.ability.srl_fusion.config.center
            if obj and obj.add_to_deck and type(obj.add_to_deck) == 'function' then
                obj:add_to_deck(self.ability.srl_fusion, from_debuff)
            end
        end
    end

    return catd(self, from_debuff)
end

-- Trigger remove effect for fusion
local crmd = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
    if self and self.ability and self.ability.srl_fusion then
        if self.ability.srl_fusion.added_to_deck then
            self.ability.srl_fusion.added_to_deck = false
            local obj = self.ability.srl_fusion.config.center
            if obj and obj.remove_from_deck and type(obj.remove_from_deck) == 'function' then
                obj:remove_from_deck(self.ability.srl_fusion, from_debuff)
            end
        end
    end

    return crmd(self, from_debuff)
end

--- Talisman compat
to_big = to_big or function(num)
    return num
end

to_number = to_number or function(num)
    return num
end