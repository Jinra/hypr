local primary = "rgb(ffb4aa)"
local surface = "rgb(181211)"
local secondary = "rgb(e7bdb7)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(dfc38c)"

hl.config({
    general = {
        col = {
            active_border = {
                colors = { primary, tertiary },
                angle = 45,
            inactive_border = surface,
            }
        },
    },
    group = {
        col = {
            border_active = secondary,
            border_inactive = surface,
            border_locked_active = error,
            border_locked_inactive = surface,
        },
        groupbar = {
            col = {
                active = secondary,
                inactive = surface,
                locked_active = error,
                locked_inactive = surface,
            },
        },
    },
})

