SRL_MOD = SMODS.current_mod
SRL_CON = SRL_MOD.config
SRL_FUNC = {}

SRL_MOD.buffable_stats = {
    "blind",
    "chips",
    "mult",
    "xmult",
    "dollars",
    "chips_score",
    "effect",
}

SRL_MOD.modded_consumables = {}

SMODS.load_file("utils.lua")()
SMODS.load_file("data/assets.lua")()
SMODS.load_file("data/effects.lua")()
SMODS.load_file("data/minions.lua")()
SMODS.load_file("data/jokers.lua")()
SMODS.load_file("data/consumables.lua")()

SRL_MOD.custom_collection_tabs = function()
    return {
        UIBox_button({
            button = 'your_collection_effects',
            label = {'Effects'},
            minw = 5,
            minh = 1,
            id = 'your_collection_effects',
            focus_args = {snap_to = true}
        }),
        UIBox_button({
            button = 'your_collection_minions',
            label = {'Minions'},
            minw = 5,
            minh = 1,
            id = 'your_collection_minions',
            focus_args = {snap_to = true}
        })
    }
end

SMODS.Back{
    key = "debug",
    pos = {x = 0, y = 0},
    config = {consumables = {'c_srl_fusion', 'c_srl_ultimate_orb', 'c_srl_chaos_orb'}, joker_slot = 50, consumable_slot = 50},
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                add_joker("j_srl_ebony_ent")
                --add_joker("j_srl_ashwood_ent")
                --add_joker("j_srl_sapphire_paragon")
                --add_joker("j_srl_emerald_paragon")
                add_joker("j_srl_harpy_eyegouger")
                return true
            end
        }))
    end,
}

SRL_MOD.optional_features = {
    retrigger_joker = true,
    --cardareas = {
    --    unscored = true
    --}
}

SRL_MOD.config_tab = function()
    return {n = G.UIT.ROOT, config = {align = "m", r = 0.1, padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6}, nodes = {
        {n = G.UIT.R, config = {align = "cl", padding = 0, minh = 0.1}, nodes = {}},

        {n = G.UIT.R, config = {align = "cl", padding = 0}, nodes = {
            {n = G.UIT.C, config = { align = "cl", padding = 0.05 }, nodes = {
                create_toggle{ col = true, label = "", scale = 1, w = 0, shadow = true, ref_table = SRL_CON, ref_value = "srl_pool_req" },
            }},
            {n = G.UIT.C, config = { align = "c", padding = 0 }, nodes = {
                { n = G.UIT.T, config = { text = "Allow creature pool requirement*", scale = 0.45, colour = G.C.UI.TEXT_LIGHT }},
            }},
        }},

        {n = G.UIT.R, config = {align = "cm", padding = 0.5}, nodes = {
            {n = G.UIT.T, config = {text = "*Must restart to apply changes", scale = 0.35, colour = G.C.UI.TEXT_LIGHT}},
        }},

    }}
end