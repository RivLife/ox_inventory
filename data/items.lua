return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'argent sale',
	},

	['burger'] = {
		label = 'burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'sac en papier',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['lockpick'] = {
		label = 'outil de crochetage',
		weight = 160,
	},

	['phone'] = {
		label = 'iPhone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'espèce',
	},

	['keys'] = {
		label = 'clé',
		weight = 1,
		stack = false,
		close = false,
		description = "Clés de véhicules",
		server = {
			export = 'okokGarage.lockvehicle',
		},
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'eau',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['repairitem'] = {
		label = 'kit de réparation',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['black_phone'] = {
		label = 'Black Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['green_phone'] = {
		label = 'Green Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['blue_phone'] = {
		label = 'Blue Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_pink_phone'] = {
		label = 'Wet Pink Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['red_phone'] = {
		label = 'Red Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_blue_phone'] = {
		label = 'Wet Blue Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?"
	},

	['wet_black_phone'] = {
		label = 'Wet Black Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?"
	},

	['pink_phone'] = {
		label = 'Pink Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_white_phone'] = {
		label = 'Wet White Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['phone_module'] = {
		label = 'Phone Module',
		weight = 300,
		stack = false,
		close = true,
		description = "It seems that we can fix a wet phone with this module, interesting."
	},

	['gold_phone'] = {
		label = 'Gold Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['classic_phone'] = {
		label = 'Classic Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['powerbank'] = {
		label = 'Power Bank',
		weight = 200,
		stack = false,
		close = true,
		description = "Incredible portable charger!"
	},

	['wet_red_phone'] = {
		label = 'Wet Red Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?"
	},

	['phone_hack'] = {
		label = 'Phone Hack',
		weight = 300,
		stack = false,
		close = true,
		description = "With this chip, you can access hidden areas of Discord."
	},

	['white_phone'] = {
		label = 'White Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_classic_phone'] = {
		label = 'Wet Classic Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?"
	},

	['greenlight_phone'] = {
		label = 'Green Light Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_greenlight_phone'] = {
		label = 'Wet Green Light Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_green_phone'] = {
		label = 'Wet Green Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "They say that Quasar Smartphone is the same as an iPhone, what do you think?"
	},

	['wet_gold_phone'] = {
		label = 'Wet Gold Phone',
		weight = 700,
		stack = false,
		close = true,
		description = "Did you really think that swimming in the ocean with your phone was a good idea?"
	},
}