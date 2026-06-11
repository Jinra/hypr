hl.monitor({
    output   = "HDMI-A-2",
    mode     = "2560x1440@60",
    position = "-2560x0",
    scale    = "1",
    bitdepth = 10,
})

hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@360",
    position = "0x0",
    scale    = "1",
    bitdepth = 10,
    vrr      = 3
})

hl.monitor({
    output    = "DP-2",
    mode      = "2560x1440@60",
    position  = "2560x-250",
    scale     = "1",
    transform = 3,
    bitdepth  = 10,
})
