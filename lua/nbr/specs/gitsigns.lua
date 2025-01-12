local M = {}

---@type LazyPluginSpec
M.spec = {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
        {
            "]c",
            function()
                require("gitsigns").nav_hunk("next")
            end,
            desc = "Next Hunk",
        },
        {
            "[c",
            function()
                require("gitsigns").nav_hunk("prev")
            end,
            desc = "Prev Hunk",
        },
        {
            "<leader>cs",
            function()
                require("gitsigns").stage_hunk()
            end,
            desc = "Stage Hunk",
            mode = { "n", "v" },
        },
        {
            "<leader>cr",
            function()
                require("gitsigns").reset_hunk()
            end,
            desc = "Reset Hunk",
            mode = { "n", "v" },
        },
        {
            "<leader>cu",
            function()
                require("gitsigns").undo_stage_hunk()
            end,
            desc = "Undo Stage Hunk",
            mode = { "n", "v" },
        },
        {
            "<leader>cd",
            function()
                require("gitsigns").preview_hunk()
            end,
            desc = "Diff (Hunk)",
            mode = { "n", "v" },
        },
        {
            "<leader>dvr",
            function()
                require("gitsigns").reset_buffer()
            end,
            desc = "[R]evert changes",
        },
        {
            "<leader>dvs",
            function()
                require("gitsigns").stage_buffer()
            end,
            desc = "[S]tage document",
        },
    },
    opts = {
        signs = {
            add = { text = "▎" },
            change = { text = "▎" },
            delete = { text = "" },
            topdelete = { text = "" },
            changedelete = { text = "▎" },
            untracked = { text = "▎" },
        },
    },
}

return M.spec
