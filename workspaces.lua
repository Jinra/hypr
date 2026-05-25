hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-2", default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-1", default = true, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = "DP-2", default = true, persistent = true })

hl.workspace_rule({
    -- w = workspace, t = tiled layout, v = visible, # = number of windows
    workspace = "w[tv1] m[DP-2]",
    gaps_out = {
        top = 200,
        bottom = 882,
    }
})
