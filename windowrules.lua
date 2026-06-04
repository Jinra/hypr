-- Picture-in-Picture
hl.window_rule({
    match             = { title = "^([Pp]icture[-\\s]?[Ii]n[-\\s]?[Pp]icture)(.*)$" },
    float             = true,
    keep_aspect_ratio = true,
    move              = "73% 72%",
    size              = "25% 25%",
    pin               = true,
})

-- Gaming
hl.window_rule({ match = { content = 3 }, workspace = 2 })
hl.window_rule({ match = { class = "^(steam_app.*|gamescope)$" }, workspace = 2 })

hl.window_rule({
    match = {
        class         = "^(steam_app.*|gamescope)$",
        title         = "^(.+)$",
        initial_title = "negative:^(.*\\\\home\\\\.*)$",
    },
    size       = "monitor_w monitor_h",
    fullscreen = true,
    content    = "game",
})
hl.window_rule({
    match = {
        class         = "^(steam_app.*)$",
        initial_title = "^$",
    },
    float            = true,
    center           = true,
    fullscreen       = false,
    fullscreen_state = 0,
})
hl.window_rule({ match = { class = "^(steam)$", title = "^(Friends List)$" }, float = true })

-- Apps
hl.window_rule({ match = { class = "^(.*\\.exe)$", float = true }, workspace = 2, center = true, fullscreen_state = 0 })
hl.window_rule({ match = { class = "^(Bitwarden)$" }, size = "900 700", workspace = 2, float = true })
hl.window_rule({ match = { class = "^(vesktop)$" }, workspace = 3 })
hl.window_rule({ match = { class = "^(Vtk)$" }, center = true })
hl.window_rule({ match = { class = "^(org.gnome.Calculator)$" }, float = true, size = "380 616" })
hl.window_rule({ match = { class = "^(org.kde.keditfiletype)$" }, float = true })
hl.window_rule({ match = { class = "^(.*satty.*)$" }, min_size = "850 450", float = true })
hl.window_rule({ match = { class = "^(org.kde.ark)$" }, float = true, size = "(monitor_w*0.40) (monitor_h*0.40)" })
hl.window_rule({
    match = {
        class = "^(org.kde.dolphin)$",
        title = "negative:^(Moving.*|Create New.*|Extract.*|Compress.*|Copying.*|Progress.*|Configure.*|Properties.*|Choose\\sApplication.*)$",
    },
    float = true,
    move  = "(cursor_x-(window_w*0.5)) (cursor_y-(window_h*0.05))",
    size = "1300 800",
})

-- Opacity Overrides
hl.window_rule({ match = { class = "^(firefox|zen)$" }, opacity = "1.0 override" })
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "1.0 override 0.90 override" })
hl.window_rule({ match = { class = "^(mpv|org.kde.haruna|.*plex.*|org\\.kde\\.gwenview)$" }, opacity = "1.0 override" })

-- Float Utility Windows
local floatApps = {
    { class = "^(kitty)$", title = "^(top|btop|htop)$" }, -- this doesn't work due to title being instantiated as kitty
    { class = "^(kvantummanager|qt5ct|qt6ct|nwg-look)$" },
    { class = "^(org.pulseaudio.pavucontrol|blueman-manager|nm-applet|nm-connection-editor)$" },
    { title = "^(Winetricks.*|Protontricks.*)$" },
}
for _, m in ipairs(floatApps) do hl.window_rule({ match = m, float = true }) end

-- hl.window_rule({ match = { float = true }, move = "50% 50%" })

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
for _, m in ipairs(modalMatches) do hl.window_rule({ match = m, float = true }) end

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
