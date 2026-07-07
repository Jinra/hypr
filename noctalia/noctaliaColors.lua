local primary = "rgb(e2b7f4)"
local surface = "rgb(161217)"
local secondary = "rgb(d3c0d8)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(f4b7b7)"

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

