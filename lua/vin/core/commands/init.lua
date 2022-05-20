local general = require("vin.core.commands.general")
local lsp = require("vin.core.commands.lsp")
local fzf_lua = require("vin.core.commands.fzf-lua")
local telescope = require("vin.core.commands.telescope")
local copy = require("vin.core.commands.copy")
local harpoon = require("vin.core.commands.harpoon")
local zen = require("vin.core.commands.zen")
local packer = require("vin.core.commands.packer")
local diffview = require("vin.core.commands.diffview")

local M = {
	general = general,
	fzf_lua = fzf_lua,
	telescope = telescope,
	copy = copy,
	harpoon = harpoon,
	lsp = lsp,
	zen = zen,
	packer = packer,
	diffview = diffview,
}

return M
