local primary = "rgb(d2c6a3)"
local surface = "rgb(141311)"
local secondary = "rgb(cdc6b5)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(becbb0)"

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

