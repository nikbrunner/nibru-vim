local M = {}

---@type LazySpec
M.spec = {
    "terra-theme/terra-core.nvim",
    dev = true,
    lazy = false,
    priority = 1000,
    keys = {
        {
            "<leader>vtt",
            function()
                require("terra-core.utils.config").select_theme()
            end,
            desc = "Select theme",
        },
        {
            "<leader>vtv",
            function()
                require("terra-core.utils.config").select_variant()
            end,
            desc = "Select variant",
        },
    },

    ---@type TerraConfig
    opts = {
        debug = false,
        theme = "fall",
        variant = "night",
        dark_sidebars = true,
        transparency = "none",
        diagnostics = {
            background = true,
        },
    },
}

return M.spec
