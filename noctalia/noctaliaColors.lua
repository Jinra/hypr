local primary = "rgb(ffb597)"
local surface = "rgb(1a110e)"
local secondary = "rgb(e7beae)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(d3c78f)"

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

