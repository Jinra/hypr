hl.config({
    general = {
        gaps_in = 3,
        gaps_out = 8,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
    },

    -- Input Devices
    input = {
        sensitivity = -0.25,
        accel_profile = "flat",
    },
    cursor = {
        no_hardware_cursors = 1,
    },
    
    -- Misc
    misc = {
        middle_click_paste = false,
        enable_swallow = true,
        swallow_regex = "(kitty)",
        vrr = 3,
        -- new_window_takes_over_fullscreen = 2,
    },
    xwayland = {
        force_zero_scaling = true
    },
    render = {
        -- direct_scanout = true,
    },
    
    -- Ecosystem
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    -- Decorations
    decoration = {
        dim_special = 0.3,
        rounding = 10,
        -- shadow:enabled = false
        active_opacity = 0.95,
        inactive_opacity = 0.85,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },

    -- Layouts
    -- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
    dwindle = {
        preserve_split = true, -- You probably want this
    },
    -- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
    master = {
        new_status = "slave",
    },
    -- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
    scrolling = {
        fullscreen_on_one_column = true,
        follow_min_visible = 0.10,
        focus_fit_method = 1,
        column_width = 0.7,
    },
})

-- Video (runs on every config load)
hl.exec_cmd("xrandr --output DP-1 --primary")
