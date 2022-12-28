---@class vin
---@field lib table Various general utilities and helper functions
---@field cmds table Function wrappers for plugin and custom commands
---@field icons table Icons used in the user interface
---@field config table Configuration options for the application
_G.vin = {
    lib = {},
    cmds = {},
    icons = {},
    config = {},
}

require("vin.options")
require("vin.config")
require("vin.autocmds")
require("vin.icons")
require("vin.lib")
require("vin.plugins")
require("vin.cmds")
require("vin.keymaps")

-- Allow require to look in after/plugin folder
local home_dir = os.getenv("HOME")
package.path = home_dir .. "/.config/nvim/after/plugin/?.lua;" .. package.path
