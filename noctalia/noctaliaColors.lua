local primary = "rgb(c1c1ff)"
local surface = "rgb(131318)"
local secondary = "rgb(c6c4dd)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(e9b9d2)"

hl.config({
    general = {
        col = {
            active_border = {
                colors = { primary, tertiary },
                angle = 45,
            },
            inactive_border = surface,
        },
    },
    group = {
        col = {
            border_active = {
                colors = { secondary, tertiary },
                angle = 45,
            },
            border_inactive = surface,
            border_locked_active = error,
            border_locked_inactive = surface,
        },
        groupbar = {
            col = {
                active = {
                    colors = { secondary, tertiary },
                    angle = 45,
                },
                inactive = surface,
                locked_active = error,
                locked_inactive = surface,
            },
        },
    },
})

