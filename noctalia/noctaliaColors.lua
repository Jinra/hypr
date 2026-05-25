local primary = "rgb(9ecaff)"
local surface = "rgb(121316)"
local secondary = "rgb(bac7db)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(d6bee5)"

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

