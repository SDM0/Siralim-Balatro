local eom = function(name)
	local ret = "ERROR"
	local key = string.lower(name):gsub("%s+", "_")
	local color = ""

	if G.P_CENTERS["eff_srl_" .. key] then
		color = (G.P_CENTERS["eff_srl_" .. key].is_buff and "{C:green}") or "{C:red}"
	elseif G.P_CENTERS["min_srl_" .. key] then
		color = "{C:attention}"
	end

	ret = "{srl_S:" .. key .. "} " .. color .. name .. "{}"

	return ret
end

local localization = {
	misc = {
        dictionary = {
            k_srl_class_orb = "Class Orb",
            b_srl_class_orb_cards = "Class Orbs",

			k_srl_buffed_ex = "Buffed!",

			k_effect = "Effect",
			k_minion = "Minion",
		},
		v_dictionary = {
			a_srl_discard = "+#1# Discard",
			a_srl_discards = "+#1# Discards",
		},
		labels = {
			srl_class_orb = "Class Orb",
			srl_fusion = "Fusion",
			srl_effect = "Effect",
			srl_minion = "Minion",

			eff_srl_agile = "Agile",
			eff_srl_arcana = "Arcana",
			eff_srl_barrier = "Barrier",
			eff_srl_berserk = "Berserk",
			eff_srl_defensive = "Defensive",
			eff_srl_immune = "Immune",
			eff_srl_invisible = "Invisible",
			eff_srl_leeching = "Leeching",
			eff_srl_mending = "Mending",
			eff_srl_proficient = "Proficient",
			eff_srl_protected = "Protected",
			eff_srl_rebirth = "Rebirth",
			eff_srl_repelling = "Repelling",
			eff_srl_savage = "Savage",
			eff_srl_shelled = "Shelled",
			eff_srl_splashing = "Splashing",
			eff_srl_taunting = "Taunting",
			eff_srl_warded = "Warded",

			eff_srl_bleeding = "Bleeding",
			eff_srl_blighted = "Blighted",
			eff_srl_blind = "Blind",
			eff_srl_bomb = "Bomb",
			eff_srl_burning = "Burning",
			eff_srl_confused = "Confused",
			eff_srl_cursed = "Cursed",
			eff_srl_disarmed = "Disarmed",
			eff_srl_feared = "Feared",
			eff_srl_frozen = "Frozen",
			eff_srl_inverted = "Inverted",
			eff_srl_poisoned = "Poisoned",
			eff_srl_scorned = "Scorned",
			eff_srl_silenced = "Silenced",
			eff_srl_sleeping = "Sleeping",
			eff_srl_snared = "Snared",
			eff_srl_stone = "Stone",
			eff_srl_vulnerable = "Vulnerable",
			eff_srl_weak = "Weak",

			min_srl_animated_gem = "Animated Gem",
			min_srl_animated_weapon = "Animated Weapon",
			min_srl_dire_wolves = "Dire Wolves",
			min_srl_doppleganger = "Doppleganger",
			min_srl_spiderlings = "Spiderlings",
			min_srl_unstable_horror = "Unstable Horror",
			min_srl_writhelings = "Writhelings",
			min_srl_zombies = "Zombies",
			min_srl_conquest = "Conquest",
			min_srl_death = "Death",
			min_srl_famine = "Famine",
			min_srl_war = "War",
			min_srl_microbots = "Microbots",
			min_srl_amalgamation = "Amalgamation",
			min_srl_illusion = "Illusion",
			min_srl_torun_junior = "Torun Junior",
		},
	},
    descriptions = {
		Spectral = {
			c_srl_fusion = {
				name = "Fusion",
				text = {
					"Fuse selected Creature with the",
					"rightmost closest valid Creature"
				}
			}
		},
		srl_Class_Orb = {
			c_srl_chaos_orb = {
				name = "Chaos Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:red}Chaos{} class",
				}
			},
			c_srl_death_orb = {
				name = "Death Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:spectral}Death{} class",
				}
			},
			c_srl_life_orb = {
				name = "Life Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:gold}Life{} class",
				}
			},
			c_srl_nature_orb = {
				name = "Nature Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:green}Nature{} class",
				}
			},
			c_srl_sorcery_orb = {
				name = "Sorcery Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:tarot}Sorcery{} class",
				}
			},
			c_srl_ultimate_orb = {
				name = "Ultimate Orb",
				text = {
					"Give a selected {C:attention}Creature{}",
					"the {C:srl_light_rainbow}Ultimate{} class",
				}
			},
		},
		Effect = {
			eff_srl_agile = {
				name = "Agile",
				text = {"Does nothing"}
			},
			eff_srl_arcana = {
				name = "Arcana",
				text = {"Does nothing"}
			},
			eff_srl_barrier = {
				name = "Barrier",
				text = {"Does nothing"}
			},
			eff_srl_berserk = {
				name = "Berserk",
				text = {"Does nothing"}
			},
			eff_srl_defensive = {
				name = "Defensive",
				text = {"Does nothing"}
			},
			eff_srl_immune = {
				name = "Immune",
				text = {"Does nothing"}
			},
			eff_srl_invisible = {
				name = "Invisible",
				text = {"Does nothing"}
			},
			eff_srl_leeching = {
				name = "Leeching",
				text = {"Does nothing"}
			},
			eff_srl_mending = {
				name = "Mending",
				text = {
					"When {C:attention}Blind{} is selected,",
					"{C:attention}-#1#%{} blind requirement",
					"{C:inactive}(lasts {C:attention}#2#{C:inactive} round(s))"
				}
			},
			eff_srl_proficient = {
				name = "Proficient",
				text = {"Does nothing"}
			},
			eff_srl_protected = {
				name = "Protected",
				text = {"Does nothing"}
			},
			eff_srl_rebirth = {
				name = "Rebirth",
				text = {"Does nothing"}
			},
			eff_srl_repelling = {
				name = "Repelling",
				text = {"Does nothing"}
			},
			eff_srl_savage = {
				name = "Savage",
				text = {"Does nothing"}
			},
			eff_srl_shelled = {
				name = "Shelled",
				text = {"Does nothing"}
			},
			eff_srl_splashing = {
				name = "Splashing",
				text = {"Does nothing"}
			},
			eff_srl_taunting = {
				name = "Taunting",
				text = {"Does nothing"}
			},
			eff_srl_warded = {
				name = "Warded",
				text = {"Does nothing"}
			},
			eff_srl_bleeding = {
				name = "Bleeding",
				text = {"Does nothing"}
			},
			eff_srl_blighted = {
				name = "Blighted",
				text = {"Does nothing"}
			},
			eff_srl_blind = {
				name = "Blind",
				text = {
					"{C:green}#1# in #2#{} chance to not",
					"to not {C:attention}trigger{}",
					"{C:inactive}(lasts {C:attention}#3#{C:inactive} round(s))"
				}
			},
			eff_srl_bomb = {
				name = "Bomb",
				text = {"Does nothing"}
			},
			eff_srl_burning = {
				name = "Burning",
				text = {"Does nothing"}
			},
			eff_srl_confused = {
				name = "Confused",
				text = {"Does nothing"}
			},
			eff_srl_cursed = {
				name = "Cursed",
				text = {"Does nothing"}
			},
			eff_srl_disarmed = {
				name = "Disarmed",
				text = {"Does nothing"}
			},
			eff_srl_feared = {
				name = "Feared",
				text = {"Does nothing"}
			},
			eff_srl_frozen = {
				name = "Frozen",
				text = {"Does nothing"}
			},
			eff_srl_inverted = {
				name = "Inverted",
				text = {"Does nothing"}
			},
			eff_srl_poisoned = {
				name = "Poisoned",
				text = {"Does nothing"}
			},
			eff_srl_scorned = {
				name = "Scorned",
				text = {"Does nothing"}
			},
			eff_srl_silenced = {
				name = "Silenced",
				text = {"Does nothing"}
			},
			eff_srl_sleeping = {
				name = "Sleeping",
				text = {"Does nothing"}
			},
			eff_srl_snared = {
				name = "Snared",
				text = {"Does nothing"}
			},
			eff_srl_stone = {
				name = "Stone",
				text = {"Does nothing"}
			},
			eff_srl_vulnerable = {
				name = "Vulnerable",
				text = {"Does nothing"}
			},
			eff_srl_weak = {
				name = "Weak",
				text = {"Does nothing"}
			},
		},
		Minion = {
			min_srl_animated_gem = {
				name = "Animated Gem",
				text = {
					"{C:chips}+#1#{} Chips",
					"{C:inactive}(lasts {C:attention}#2#{C:inactive} round(s))"
				}
			},
			min_srl_animated_weapon = {
				name = "Animated Weapon",
				text = {"Does nothing"}
			},
			min_srl_dire_wolves = {
				name = "Dire Wolves",
				text = {"Does nothing"}
			},
			min_srl_doppleganger = {
				name = "Doppleganger",
				text = {"Does nothing"}
			},
			min_srl_spiderlings = {
				name = "Spiderlings",
				text = {"Does nothing"}
			},
			min_srl_unstable_horror = {
				name = "Unstable Horror",
				text = {"Does nothing"}
			},
			min_srl_writhelings = {
				name = "Writhelings",
				text = {"Does nothing"}
			},
			min_srl_zombies = {
				name = "Zombies",
				text = {"Does nothing"}
			},
			min_srl_conquest = {
				name = "Conquest",
				text = {"Does nothing"}
			},
			min_srl_death = {
				name = "Death",
				text = {"Does nothing"}
			},
			min_srl_famine = {
				name = "Famine",
				text = {"Does nothing"}
			},
			min_srl_war = {
				name = "War",
				text = {"Does nothing"}
			},
			min_srl_microbots = {
				name = "Microbots",
				text = {"Does nothing"}
			},
			min_srl_amalgamation = {
				name = "Amalgamation",
				text = {"Does nothing"}
			},
			min_srl_illusion = {
				name = "Illusion",
				text = {"Does nothing"}
			},
			min_srl_torun_junior = {
				name = "Torun Junior",
				text = {"Does nothing"}
			},
		},
		Other = {
			undiscovered_srl_class_orb = {
                name = 'Unknown Class Orb',
                text = {
                    'Find this card in an unseeded',
                    'run to find out what it does'
                }
            },
			srl_undefined_class_orb = {
                name = "Class Orb",
                text = {
                    "Give a selected {C:attention}Creature{}",
					"the {C:attention}X{} class",
                }
            },
			srl_ultimate_class = {
				name = "Ultimate",
				text = {
					"Counts as",
					"{C:attention}every{} class"
				}
			},
			eff_srl_mending_no_rounds = {
				name = "Mending",
				text = {
					"When {C:attention}Blind{} is selected,",
					"{C:attention}-#1#%{} blind requirement"
				}
			},
			eff_srl_blind_no_rounds = {
				name = "Blind",
				text = {
					"{C:green}#1# in #2#{} chance",
					"to not {C:attention}trigger{}"
				}
			},
			min_srl_animated_gem_no_rounds = {
				name = "Animated Gem",
				text = {
					"{C:chips}+#1#{} Chips",
				}
			}
		},
		Back = {
            b_srl_debug = {
                name = "Debug Fusion",
                text = {
                    "Test fusion"
                },
            },
		},
        Joker = {
			j_srl_ebony_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"At end of {C:attention}shop{}, each",
                    "Joker gains " .. eom("Mending"),
					"for {C:attention}#4#{} round"
				}}
			},
			j_srl_hemlock_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:attention}Buff{} each Creature",
                    "effect by {X:dark_edition,C:white}X#4#{} if it",
                    "has " .. eom("Mending")
				}}
			},
			j_srl_elder_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:attention}Trigger{} each " .. eom("Mending") .. " effect",
					"after each {C:attention}played hand{}"
				}}
			},
			j_srl_efflorescent_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"When {C:attention}Blind{} is selected,",
					"lower {C:attention}blind requirement{} by {C:attention}#4#%{}",
                    "for each Joker with " .. eom("Mending"),
					"{C:inactive}(Currently {C:attention}#5#%{C:inactive})"
				}}
			},
			j_srl_ashwood_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
                    "{C:chips}+#4#{} Chips and {C:mult}+#5#{} Mult",
                    "after the {C:attention}first hand{}"
				}}
			},
			j_srl_timeworn_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:red}+#4#{} discard after",
                    "the {C:attention}first hand{}"
				}}
			},
			j_srl_diamond_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:attention}Buff{} each Creature",
                    "effect by {X:dark_edition,C:white}X#4#{} if it",
                    "has a {C:attention}Class Orb{}"
				}}
			},
			j_srl_emerald_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Creatures each give",
					"{X:mult,C:white}X#4#{} Mult"
				}}
			},
			j_srl_ruby_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"When {C:attention}Blind{} is selected,",
					"lower {C:attention}blind requirement{} by",
                    "{C:attention}#4#%{} for each Creature",
					"{C:inactive}(Currently {C:attention}#5#%{C:inactive})"
				}}
			},
			j_srl_sapphire_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Creatures each",
					"give {C:chips}+#4#{} Chips"
				}}
			},
			j_srl_topaz_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:green}Buffs{} and {C:red}Status{}",
					"lasts {C:attention}#4#{} round"
				}}
			},
			j_srl_blood_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Earn {C:money}$#4#{} after",
					"defeating the {C:attention}Boss Blind{}",
					"at the end of round"
				}}
			},
			j_srl_bone_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Sell this Creature to {C:attention}buff{} another",
					"Creature values by {X:dark_edition,C:white}X#4#{}"
				}}
			},
			j_srl_soul_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"This Creature creates a {C:spectral}The Soul{}",
					"card and {S:1.1,C:red,E:2}self destructs{}",
					"after selling {C:attention}#4#{} {C:red}Rare{} Jokers",
					"{C:inactive}(Must have room)"
				}}
			},
			j_srl_shadow_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Sell this Creature to make",
					"a random Joker {C:dark_edition}Negative{}",
					"{C:inactive}(Prioritizes editionless Jokers)"
				}}
			},
			j_srl_cursed_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"When {C:attention}Boss Blind{} is selected,",
					"destroy a random Joker to lower",
					"{C:attention}blind requirement{} by {C:attention}#4#%{}"
				}}
			},
			j_srl_incursion_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"{C:attention}Buff{} each Creature effect",
                    "by {X:dark_edition,C:white}X#4#{}, gain {X:dark_edition,C:white}X#5#{} when",
					"{C:attention}Boss Blind{} is defeated"
				}}
			},
			j_srl_harpy_eyegouger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Give " .. eom("Blind"),
					"to the first Joker",
					"for {C:attention}#4#{} round"
				}}
			},
			j_srl_harpy_screamer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_harpy_pillager = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_harpy_torturer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_harpy_hag = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_harpy_queen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
            j_srl_imp_hexer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_sacrificer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_shaman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_inscriber = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_ritualist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_necromancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_purifier = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_coercer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_soothsayer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_beguiler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_ascendant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_oracle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_warrior = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_earthshaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_skullcrusher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_battlemaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_juggernaut = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_behemoth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_life_shapeshifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_death_shapeshifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chaos_shapeshifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sorcery_shapeshifter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nature_shapeshifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_master_shapeshifter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gimp_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_scourge_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_creep_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doom_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightmare_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mummy_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_necrotic_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vital_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flamegrip_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ethereal_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_venomous_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doom_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volatile_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thunderstruck_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frost_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_royal_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_corrupted_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancestral_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mimic = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_pyromancer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_dreamweaver = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_illusionist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_evoker = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_arcanomancer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_djinn_ghula = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_arsonist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_necksnapper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_berserker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_knife_juggler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_alemaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wicked_carver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_twisted_carver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_demented_carver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carver_sadist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carver_heartseeker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carver_shadowstalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_raincaller = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_naturalist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_proliferator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_warden = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_keeper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_vindicator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_acolyte = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_defiler = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_ritualist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_batmaster = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_bloodmage = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_lord = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_planetary_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stardust_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nexus_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lost_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_enclave_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amaranthine = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_springtime_aspect = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_summer_aspect = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_autumn_aspect = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_winter_aspect = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aspect_of_seasons = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crypt_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pulse_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vampire_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mutated_vampire_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mutated_pulse_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mutated_crypt_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_death_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wildfire_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volcanic_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frostfire_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_obsidian_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dreadful_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ashbone_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_shadowcaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_hellcaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_overseer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_bloodletter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_firewound_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_icewound_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_goldblight_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imperial_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_angel_soulslayer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doomblight_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spider_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_viper_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raptor_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_disciple_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zealot_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mirage_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_delusion_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_occultist_spellbinder = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_soldier = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_sentinel = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_guardian = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_revenant = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_queen = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_scout = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_granite_golem = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_iron_golem = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_magma_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_regal_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_moss_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gold_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_haunted_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightmare_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pumking = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_twisted_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cinder_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stone_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skull_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doom_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_krampus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_mauler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_trickster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_captain = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_enforcer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_brute = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blademaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shogun = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_sonicscreecher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_windrider = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_skystalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_airslayer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_daybreaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_glutinous_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mercurial_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bile_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_paranormal_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ectoplasmic_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blood_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_vivifier = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_consecrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_stormbringer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_holycaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pegasus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_thundercracker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stronghold = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_necropolis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_alcazar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crypt = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mouth_of_hell = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bastion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pandemonium_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_noxious_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lethal_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cancerous_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pestilent_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_scourge_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_smog_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_treasure_golem = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_red_storm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raving_storm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thunder_storm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cyclone = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hurricane = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_storm_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_spellblade = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_knight = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_marauder = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_paladin = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_executioner = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_champion = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pilwiz_peasant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_delirious_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frenzy_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hysteria_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rapturous_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniacal_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_gravedigger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_interloper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_invader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_plaguespreader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_skirmisher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_webweaver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chaos_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_death_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_infernal_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abaddon_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_perdition_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_goretongue_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dusktail_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightwing_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bloodfang_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sunclaw_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_darkeye_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fallen_carnage = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rotten_carnage = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_carnage = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carnage_antagonizer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carnage_tormenter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carnage_destructor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pilwiz_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pilwiz_slasher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcane_pilwiz = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flamehook_pilwiz = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_darkscythe_pilwiz = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_steampowered_pilwiz = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abyss_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_savage_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valentine_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_anguish_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_impaler_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_styx_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_destruction_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_worm_tunneler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spitting_pit_worm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_worm_gladiator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_accursed_pit_worm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_worm_harbinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vicious_pit_worm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frozen_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_succubus_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_willow_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_exalted_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_clairvoyant_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_redeemer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_dominator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_liberator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_overmind = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_obliterator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_berserker_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thrasher_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mauler_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_destroyer_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_annihilator_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ferocious_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brim_smith = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crystal_smith = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_disease_crafter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_death_crafter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pestilence_crafter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hammer_lord = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dark_brim_smith = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_black_crystal_smith = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_depravity_smith = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_terror_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dread_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_panic_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blood_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_horror_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hell_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bone_hound = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_timeless_master = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ceaseless_maker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_infinite_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_celestial_idol = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_omnipotent_deity = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_immortal_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_servant_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_light_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_moon_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_faith_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hunter_director = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_heretic_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_watchman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_spectator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_intruder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_henchman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_commander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_observer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_menace = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_nemesis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_insurgent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_rebel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_sniper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_triggerman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_cannoneer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_marksman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_mortarman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_gunslinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fire_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_water_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forest_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mountain_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_desert_priest = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_priest_of_light = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_priest_of_radiance = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_swampdweller = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_rotmongerer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_seacrawler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_bonescraper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_scourgewalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_spinewhipper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sandstone_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_redstone_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_boulder_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_iron_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_silver_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mithril_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_varve_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leda_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tainted_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_putrid_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rancid_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diamond_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sand_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stone_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wall_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tower_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cosmic_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_colossal_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_giant_mangler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vicious_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vile_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volatile_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volcanic_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_viridian_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vampiric_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dumpling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_charger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_defender = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_endurer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_majesty = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_protector = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aen_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aerum_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inaer_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nadin_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ramun_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crazed_leper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leper_blightbringer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leper_defiler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leper_plaguespreader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blood_leper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tortured_leper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blood_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dawn_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dusk_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_holy_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mist_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sun_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_griffon_divebomber = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_assault_griffon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_griffon_dreamfinder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_griffon_screecher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_razorfoot_griffon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_silverclaw_griffon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_narklin_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_burhua_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_enim_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_geylian_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_irantha_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mitida_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ira_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_superbia_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_acedia_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_avaritia_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gula_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_invidia_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_luxuria_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_humanitas_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_humilitas_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_caritas_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_castitas_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_magnificus_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_temperantias_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_patientias_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_cabalist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_captain = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_horror = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_sealord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_soldier = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_avenger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_elder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_healer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_justicar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_ordainer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_zealot = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_neralim_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_andolin_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_undolim_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vanelin_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siralim_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_scout = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_knight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_lancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_queen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_champion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_shieldmaiden = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aaxer_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_agor_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorum_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inox_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zarox_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abyssal_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doomsday_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dread_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_entropic_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightveil_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_transient_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_runic_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forbidden_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_necro_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eldritch_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_faded_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ashmouth_cerberus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_caustic_cerberus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cerberus_banelord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cerberus_gatewatcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cerberus_hellguard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lightning_cerberus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_bonebreaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_gutslasher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_blooddrinker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_heartripper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_strangler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asura_fleshstomper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_coldslam_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chillbreeze_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_icemane_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frostbite_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_snowsting_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rimefist_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_coast_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_glade_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hell_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rift_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_roost_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sky_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_manticore_conqueror = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flailing_manticore = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crimson_manticore = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_manticore_decimator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sawback_manticore = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_prowling_manticore = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_deranged_gorgon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorgon_gazer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorgon_sorceress = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorgon_witch = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_medusa = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unhinged_gorgon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_terror_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gravebane_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_reclusive_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_roofstalker_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dread_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_trepidation_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dungeon_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_evernight_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hoar_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gateway_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_drifting_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_whispering_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_masochist_witch = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lurid_masochist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_macabre_masochist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_masochist_angler = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sanguine_masochist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_favored_masochist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ahnok_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_quamar_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_quarnok_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ahnkol_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_urhul_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spitting_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_canopy_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragonlair_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_goliath_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_woolly_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elemental_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcane_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flood_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_judge_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mystical_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_palace_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_monstrous_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sturdy_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shackled_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_daunting_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fearsome_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forest_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vortex_observer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_untamed_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cerebral_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_consuming_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mana_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_psychic_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_worker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_soldier = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_infiltrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_slicer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_scout = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_failed_experiment = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_balladeer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_jongleur = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_minstrel = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_poet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_trovatore = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_versifier = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_ranger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_warrior = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_wrangler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_raider = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_runner = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_chaser = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_cleric = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_monk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_mystic = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_barbarian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_huntsman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_rogue = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ritual_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abomination_brute = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flesh_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abomination_volatile = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gore_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wandering_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_creeper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_imposter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_informer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_scoundrel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_shadowjumper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_alchemist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_herbalist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_quack = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_scholar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_soothsayer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_surgeon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_terra_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_decaying_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lost_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skyward_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spirit_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cosmos_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_celestial = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_idol = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_overseer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_royal = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ethereal_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dormant_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lurking_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crashing_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_roaring_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stomping_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fire_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thunder_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_water_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wind_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ice_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_earth_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vegetable_dumpling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aegis_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amethyst_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_yeti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_warrior = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aspect_of_change = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aspect_of_time = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zantai = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_addled_leper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thylacine = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bound_cerberus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brownie_loner = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carnage_devourer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carver_chopper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_celestial_occultist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_creeping_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cursed_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_deceptive_fiend = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_priest_vizier = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diabolic_bhuta = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vengeful_djinn = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_docile_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_citadel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_flametongue_efreet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_seductress = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_festering_ghoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fog_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frostbite_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorgon_trickster = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grave_leper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_griffon_archer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_harpy_marauder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hidden_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hunter_scout = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_industrias_sanctus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_infested_slime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lurking_pit_worm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_malignant_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marble_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_minotaur_lancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mite_paralyzer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_moon_crusader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mud_golem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forsaken_plaguebearer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mystical_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_opal_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phase_rogue = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pilwiz_harvester = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pilwiz_herbalist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pit_wraith_tormenter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_prophetic_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_radiant_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_guardian = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_revenant_dagon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tormented_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sentry_guard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gruesome_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shapeshifter_novice = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_silent_hunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siren_lifetaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skeleton_buccaneer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_slurping_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_smoke_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spectral_familiar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sphinx_usurper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_static_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stonehorn_gargoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_subaqueous_dragon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_swarm_mummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_transcended_phoenix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_troll_youngster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unchained_djinn = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wandering_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_crafter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_waspid_hiveleader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_watcher_sentinel = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_whiptail_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_woeful_spectre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wyvern_toxicfang = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_fool = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bile_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_duelist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chaos_salamander = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_drifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_incandescent_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_necromancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_malignant_storm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sadomasochist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_corox_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eternal_divinity = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maluh_ophan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apollinaire = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nex_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gorlum_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_backstabber = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_expert = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_martyaxwar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rock_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spitting_basilisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_abstract = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxic_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unicorn_firewalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_duelist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dolor_sin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sulfuric_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_incarnate = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_iconus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ottum = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_lost = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tisya = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_walken = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mumu = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ugat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_yllor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elqor = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dikya = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kalasag = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aja_birku = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_laglor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_emlai = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_alakadan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pandemonium_queen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_surathli = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aeolian = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_azural = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_erebyss = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_friden = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gonfurian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lister = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_meraxis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_regalis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tartarith = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vulcanar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_yseros = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vertraag = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_torun = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zonte = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grenale = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lagergoyle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_scotchpion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spirits = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ryetrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vermowl = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vulperry = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_whiskull = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_winegel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_woodka = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pyro_grimoire = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_treat_imling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_trick_imler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spooky_shade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_headless_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cloth_abomination = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_silverbone_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skywatch_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_treewall_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_willow_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_astro_construct = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bloodmail_construct = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_heavenshield_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_magma_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightveil_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_redsteel_construct = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stag_guide = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bard_caroller = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blizzard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_evergreen_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_holiday_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gift_mimic = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jingle_elf = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jolly_old_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pudding = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_trollboar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ascendant_revenant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fortune_dragon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_solar_amaranth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vernal_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_squash = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apis_adolescent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bunny_devil = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chocolate_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryad_sunbather = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_festival_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_killer_cooler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_melon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_omelette = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ovoid_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inflatable_watcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tanukrook = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mogwai = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_purrghast = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_colg = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_darksulker = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diamant = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kapre = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_linta = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_noxpit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tenbran = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_chef = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_arbitrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_vaccinator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_gardener = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_inspector = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amphisbaena_prospector = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcane_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cursed_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_decrepit_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_luxury_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siege_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_automaton = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cave_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cold_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_clamorous_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carrion_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_clawing_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_contagious_cockatrice = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_amorphous_shambler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shambler_recruiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_innocent_shambler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shambler_rescuer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lugubrious_shambler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_courier = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_battrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_snaptrap_cultivar = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wizened_snaptrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_parasitic_snaptrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_alluring_snaptrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sticky_snaptrap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_professor = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_officer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_student = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_searcher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sparktail_engineer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_zealot = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_moth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_cobra = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_wolf = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_demon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shadow_juggernaut = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_angelic_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vampiric_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_feral_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imperial_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_demonic_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_subversive_voidlord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dancing_wisp = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abyssal_wisp = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_laughing_wisp = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_scheming_wisp = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wisp_watcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wisp_seer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_oculum_leech = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_oozing_leech = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leech_digger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_leech_devourer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxic_leech = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_moon_leech = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hemomancer_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mutant_hemomancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lunar_hemomancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hemomancer_devourer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hemomancer_donor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hemomancer_seer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dusk_ossein = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_igneous_ossein = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bloody_ossein = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_augmented_ossein = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_scourge_ossein = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ossein_defender = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eft_howler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eft_stalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eft_climber = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eft_elder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bloody_eft = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eft_scavenger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inquisitor_egglayer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_carnivorous_inquisitor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_watchful_inquisitor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inquisitor_weaver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_infernal_inquisitor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inquisitor_countess = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_exiled_satyr = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spry_satyr = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_satyr_rammer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_satyr_dominator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_satyr_squire = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_satyr_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_koloss_firebrand = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_night_koloss = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_koloss_doombringer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_koloss_eradicator = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bestial_koloss = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_koloss_champion = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_peacemaker = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_depriver = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_drone = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_overlord = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_prober = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulflayer_dreamcaster = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_psychic = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_judge = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_desecrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_agnostic = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_sadist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unguided_heathen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blobbarian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gloopdiator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gooarrior = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mystery_mucus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sludgechemist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_swordslime = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniac_mutant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniac_huntsman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniac_warrior = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniac_chief = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_armored_maniac = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_maniac_builder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_slasher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_bloodbather = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_mutant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_decoy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_parasite = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toxdweller_infector = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aquamarine_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_emerald_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_onyx_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ruby_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_topaz_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sapphire_carbuncle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_crystaldune_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eternaldew_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightvelvet_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rockmoss_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_stillfire_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_whitestar_gemling = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bloodstone_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elder_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frostbite_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_possessed_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jewel_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_prismatic_cruncher = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shambler_juggernaut = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_caliban = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mortem = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aurum = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_apocranox = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tenebris = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_venedon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_perdition = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_animatus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_relic = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_king_dumpling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nugget = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_herbling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pandora = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zzyia_apocalypse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_feral_carver = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sabertooth_manticore = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_incendiary_smog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chaos_troll = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_giant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_masochist_freak = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phobos_banshee = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nix_exile = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marine_pit_worm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tech_reaper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_holy_wight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aspect_of_decay = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_evil_spirit = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_deep_clutcher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plague_phlebotomist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_malice_harpy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ghoul_ringleader = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thunderwound_angel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_supreme_administrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_griffon_veteran = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bismuth_paragon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_divine_phoenix = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nax_rift_dancer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kaito_seraph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valkyrie_priestess = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_angel_bat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_imp_bishop = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_razorweb_arachnalisk = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_centaur_khan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elf_brawler = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_aspen_ent = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volcanic_gargantuan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hanyac_tremor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_villous_wolpertinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dragon_spirit = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_raven_seer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unstable_shapeshifter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_evil_vortex = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lich_netherwalker = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_heretic_crusader = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcus_vulpes = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_steelheart_gargoyle = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_ender = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_paralyzer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_protector = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_sealer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_seeker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nihilist_summoner = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_spider = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_beetle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_fly = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_ant = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_mantis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_electropod_scorpion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hermitey = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_helios = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vannyx = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bejem = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_acrova = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bashcloak = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_iridris = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toyland_amalgamation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_alexandria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_anneltha = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ariamaki = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_genaros = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_muse = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_reclusa = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_4080 = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shallan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tmere_mrgo = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_adaxial = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_akara = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_8004 = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_emus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grommet = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nalas = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rengas = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_saurel = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thana = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nine_tailed_harvester = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_first_spawn = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tsuchinoko = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gravekeeper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_singerbread_man = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_duckgundr = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_paroxys = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_heartminder = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pontiff_of_luck = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_otherworldly_visitor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jaculus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_obscene_blight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_legion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rhozzgon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_demon_king = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zombaton = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_piscacanth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sapphire_drake = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_snow_lily = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bilemaw = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chosen_of_the_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grubette = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_bearon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_defiant_defiler = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nguruvilu = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_avion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_proxigeist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_band_warchief = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kavnak = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_infinite_eggling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mathemagician = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_conductive_carcharin = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_davey = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dire_werewolf = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lunatio = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hydra = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ameteris_krin = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nox_sinon = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grovewalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mind_reaver = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_clawtail_wyrm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abandoned_homunculus = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lizard_wizard = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_onigoroshi = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_puffergryph = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_greybeard = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_taco_hell = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcian_warbeast = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_dervish = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_avaricious_draco = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kobold = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_skelegoop = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bhasa_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_surya_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_preta_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vipina_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chandra_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nisha_cherub = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_junkyard_bot = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bio_bot = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brave_little_bot = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wizards_companion = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wizards_defender = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sentry_bot = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_experimental_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_foghorn_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_industrial_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_siege_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_battle_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_war_clockwork = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_living_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_feeling_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thinking_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_breathing_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_moving_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_final_arbiter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_club_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_diamond_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_heart_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spade_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ace_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_joker_luckmantria = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_spellslinger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_knight = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_spearmaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_savage = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_trickster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_healer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_valor_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_draco_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_arcana_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blessed_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_undying_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wylder_chimera = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brain_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ear_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eye_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_feet_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hand_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lip_animation = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_asclepias_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_helianthus_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hydrangea_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_polygala_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rhododendron_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_roseaea_fae = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rimeskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ashskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_voltskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_venomskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dryskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cloudskin_spellmane = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_colacanth = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bumblebig = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lavalotl = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_string_puller = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_magicalope = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_paladin_crab = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plated_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mystic_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_oozing_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_barbed_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_accursed_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dire_warhog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_shieldbearer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_lord = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_sorcerer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_skirmisher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_cleric = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nephilim_scion = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_inkjet_kraken = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kraken_shipbreaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_unblinking_kraken = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ironside_kraken = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kraken_hundredhand = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abyssal_kraken = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cranium_cluster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_protobrachyura = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_petrafortis = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_abacus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_forgotten_disciple = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_orphaned_minion = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_atlas_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_luna_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lappet_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_deathshead_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pellucid_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_rosy_beacon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_seiryu = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_byakko = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_genbu = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_suzaku = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_huanglong = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kirin = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_populi = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_solis = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_calti = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_palmira = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_pryderis = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_erdhe = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gravewood_ghost = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_shambler_benefactor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_orc_bowman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cursed_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_falconer_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_knight_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dancing_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_noble_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_healing_effigy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_besieged_beast = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_archunter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_soulbinder = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_illuminator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_armiger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_windrider = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lucanian_aspectal = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spectral_monarch = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_peculiar_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gold_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_black_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_astral_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_furious_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancient_spacecat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_connoisseur = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_instructor = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_bedazzler = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_conservator = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_opportunist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spelljuggler_trapezist = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ol_nog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_splitsoul = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gemstone_trader = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jackal_swarm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_end = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_fury_stormer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_soulwarper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_spellsword = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_snow_stalker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_celestial_scarapin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_doedoodle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_fop = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_dandy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_socialite = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_bete = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_belle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_calumnier_partycrasher = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_ballerina = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_charlatan = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_demoiselle = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_hypnotist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_medium = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_primadonna = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_harlequin = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_virtuoso = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mimpling = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_genetic_anomaly = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mythicant_chromis = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_uralos_warchief = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_plains_felkat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dust_fairy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_onepunch_snowman = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_miracle_spider = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_brockiosaurus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_thunderrex = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_triflaratops = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_veliceoraptor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_vinosaurus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_windactyl = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ancloudysaur = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_melishell = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zarnox = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_blipzor = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_grivix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_klyptar = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mechto = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zyphra = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_zeuschund = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_rotthief = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_hexblade = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_mischiefmaker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_ripper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_ritesmaster = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_underdweller_fearmonger = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sky_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_volcanic_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_oceanic_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_storm_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_terra_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_glacial_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pandemic_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_explosive_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_almighty_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nuclear_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cosmic_cataclysm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_iron_maiden = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mireling_striker = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mireling_corruptor = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mireling_arbitrator = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mireling_dart_frog = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_mireling_spellscatterer = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kaleidotoad = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_wacky_burger = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dozen_of_rot = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ripper = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jack_o_lantern = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_nightmare = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_toadstool = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_syringe = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_ouroboros = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dollface = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_frosty_freezy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bomballoon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_dr_concocto = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_the_heap = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sir_roquefort = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_phenominal_possum = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_jack_frost = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chatter = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_junkyard = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bad_apple = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_furious_frank = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_sculpt = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_benthic_guardian = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_chronoshatter_wyrm = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_slash_shifter = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_gravebound_eidolon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_holyguanodon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_darknonychus = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_marionette_evangelist = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_draconic_strix = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_prismagician = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tormented_bunny = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_elegant_denizen = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_pearlescent_denizen = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_melodic_denizen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_operatic_denizen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_denizen_gemini = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_tipsy_denizen = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_copycat = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_cootie = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_lunaris = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_solaris = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_clingslime = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_eye_of_the_gorgon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_hot_lips = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_megalodon = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_i_scream_man = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_swarmed_hive = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_king_croak = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_haunting_glass = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_kegstruct = {
				name = {"#1#", "{s:0.8,C:tarot}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_bane_of_piety = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_critical_mass = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_weapons_dealer = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_parasitic_copycat = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_training_dummy = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
			j_srl_loki = {
				name = {"#1#", "{s:0.8,V:1}#2#{s:0.8} / #3#{}"},
				text = {{
					"Does nothing",
				}}
			},
        }
    }
}

return localization