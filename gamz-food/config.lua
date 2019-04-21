Config = {}

Config.Zones = {

    ["Chihuahua Hotdogs"] = {

        ["coords"] = vector3(43.775257110596, -997.98028564453, 29.336441040039),

        ["drink"] = {
            ["Coca Cola"] = {
                ["price"] = 20,
                ["prop"] = "prop_ecola_can"
            },

            ["Sparkling Water"] = {
                ["price"] = 15,
                ["prop"] = "prop_ld_flow_bottle"
            } 
        },
        
        ["eatable"] = {
            ["Burger"] = {
                ["price"] = 79,
                ["prop"] = "prop_cs_burger_01"
            },

            ["Hotdog"] = {
                ["price"] = 79,
                ["prop"] = "prop_cs_hotdog_01"
            }

        }
    }, -- You can add more spots by just copying this one and changing the values

    ["Gyro Day"] = {
        ["coords"] = vector3(461.50152587891, -699.02325439453, 27.402139663696)
    }

}

Config.Anims = { -- if you want to change the animation
    ["eatable"] = {
        ["animation"] = "mp_player_int_eat_burger_fp",
        ["dict"] = "mp_player_inteat@burger",
    },

    ["drink"] = {
        ["animation"] = "loop_bottle",
        ["dict"] = "mp_player_intdrink",
    },
}

Config.eatable = { -- if you have not choosed any food for a certain zone it will automatically get this
    ["Hotdog"] = {
        ["price"] = 79,
        ["prop"] = "prop_cs_hotdog_01"
    }
}

Config.drink = { -- if you have not choosed any drinks for a certain zone it will automatically get this
    ["Sparkling Water"] = {
        ["price"] = 15,
        ["prop"] = "prop_ld_flow_bottle"
    }
}