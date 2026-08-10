-- Generic floating window size
hl.window_rule({ match = { float = true }, center = true, persistent_size = true })

-- Picture-in-Picture
hl.window_rule({
    match             = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    float             = true,
    keep_aspect_ratio = true,
    size              = { "max(monitor_w, monitor_h)*0.25", "min(monitor_w, monitor_h)*0.25" },
    pin               = true,
})

-- Gaming
hl.window_rule({ match = { content = "game" }, monitor = PRIMARY_MONITOR })
-- hl.window_rule({ match = { xdg_tag = "^(.*game.*)$" }, monitor = PRIMARY_MONITOR, fullscreen_state = 2, content = "game", sync_fullscreen = true })
hl.window_rule({ match = { class = "^(steam)$", initial_title = "^(Launching\\.{3})$" }, float = true, center = true, monitor = PRIMARY_MONITOR })
hl.window_rule({ match = { class = "^(steam)$", title = "^(Friends List)$" }, float = true })
hl.window_rule({
    match            = {
        class         = "^(steam_app.*|gamescope)$",
        title         = "^(.+)$",
        initial_title = "negative:^(.*\\\\home\\\\.*)$",
    },
    content          = "game",
    decorate         = false,
    -- fullscreen       = true,
    fullscreen_state = "2",
    opaque           = true,
    monitor          = PRIMARY_MONITOR,
    size             = { "monitor_w", "monitor_h" },
    sync_fullscreen  = true,
    -- immediate        = true,
})
hl.window_rule({
    match = {
        class         = "^(steam_app.*)$",
        initial_title = "^$",
    },
    center           = true,
    float            = true,
    fullscreen       = false,
    fullscreen_state = 0,
    monitor          = PRIMARY_MONITOR,
})

-- Video
hl.window_rule({ match = { content = "video", fullscreen = true }, no_vrr = true })

-- Apps
hl.window_rule({ match = { class = "kitty", initial_title = "arch_update" }, float = true, size = { "1100", "800" }, move = { "monitor_w-1110", "46" }})
hl.window_rule({ match = { class = "^(.*\\.exe)$", float = true }, monitor = PRIMARY_MONITOR .. " silent", center = true, fullscreen_state = 0 })
hl.window_rule({ match = { class = "^([Bb]itwarden)$" }, size = { "max(monitor_w, monitor_h)*0.50", "min(monitor_w, monitor_h)*0.55" }, float = true })
hl.window_rule({ match = { class = "^(vesktop)$" }, monitor = MONITOR3 .. " silent" }) -- convert to monitor in > 0.55.4
hl.window_rule({ match = { class = "^(Vtk)$" }, center = true })
hl.window_rule({ match = { class = "^(org.gnome.Calculator)$" }, float = true, size = { "max(monitor_w, monitor_h)*0.17", "min(monitor_w, monitor_h)*0.43" }})
hl.window_rule({ match = { class = "^(org.kde.keditfiletype)$" }, float = true })
hl.window_rule({ match = { class = "^(.*satty.*)$", title = "^(Satty)$" }, min_size = { "max(monitor_w, monitor_h)*0.35", "min(monitor_w, monitor_h)*0.35" }, float = true })
hl.window_rule({ match = { class = "^(.*swash)$", title = "Swash" }, min_size = { "max(monitor_w, monitor_h)*0.35", "min(monitor_w, monitor_h)*0.35" }, float = true })
hl.window_rule({ match = { class = "^(org\\.kde\\.ark)$" }, float = true, size = { "max(monitor_w, monitor_h)*0.40", "min(monitor_w, monitor_h)*0.40" }})
hl.window_rule({ match = { class = "^(dev\\.)?(noctalia\\.Noctalia(\\.Settings)?)$" }, float = true, size = { "(monitor_w*0.70)", "(monitor_h*0.70)" }})
hl.window_rule({
    match = {
        class = "^(org\\.kde\\.dolphin)$",
        title = "negative:^(Moving.*|Create New.*|Extract.*|Compress.*|Copying.*|Progress.*|Configure.*|Properties.*|Choose\\sApplication.*)$",
    },
    float = true,
    size = { "max(monitor_w, monitor_h)*0.50", "min(monitor_w, monitor_h)*0.55" },
    move = {
        "max(20, min(cursor_x - 650, monitor_w - 1320))", -- X axis clamping
        "max(20, min(cursor_y - 50, monitor_h - 820))",   -- Y axis clamping
    },
    -- move = {
    --     "max(20, min(cursor_x - (window_w*0.50), monitor_w - window_w + 20))", -- X axis clamping
    --     "max(20, min(cursor_y - 50, monitor_h - window_h + 20))"   -- Y axis clamping
    -- },
})

-- Opacity Overrides
hl.window_rule({ match = { class = "^(firefox|zen|chromium)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "1.0 override 0.90 override" })
hl.window_rule({ match = { class = "^(mpv|org.kde.haruna|.*plex.*|org\\.kde\\.gwenview)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(virt-manager)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(org.gnome.Papers)$" }, opacity = "1.0 override" })

-- Float Utility Windows
local floatApps = {
    { class = "^(kitty)$", title = "^(top|btop|htop)$" }, -- this doesn't work due to title being instantiated as kitty
    { class = "^(kvantummanager|qt5ct|qt6ct|nwg-look)$" },
    { class = "^(org.pulseaudio.pavucontrol|blueman-manager|nm-applet|nm-connection-editor)$" },
    { title = "^(Winetricks.*|Protontricks.*)$" },
}
for _, m in ipairs(floatApps) do hl.window_rule({ match = m, float = true, persistent_size = true }) end

-- Float Common Modals
local modalMatches = {
    { title = "^(Open|Authentication Required|Add Folder to Workspace|Choose Files|Save As|Confirm to replace files|File Operation Progress)$" },
    { initial_title = "^(Open File)$" },
    { class = "^([Xx]dg-desktop-portal-gtk)$" },
    { title = "^(File Upload|Choose wallpaper|Library)(.*)$" },
    { class = "^(.*dialog.*)$" },
    { title = "^(.*dialog.*)$" },
    { class = "^(hyprland-share-picker)$"},
}
for _, m in ipairs(modalMatches) do hl.window_rule({ match = m, float = true, persistent_size = true }) end

-- Ignore maximize requests from all apps. You'll probably like this.
hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- Fix some dragging issues with XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

-- Layer Rules

-- hl.layer_rule({
--   name =         "noctalia",
--   match =        {
--     namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
--   },
--   no_anim =      true,
--   blur =         true,
--   blur_popups =  true,
--   ignore_alpha = 0.60,
--   xray =         true,
-- })
