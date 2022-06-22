-- Just an example, supposed to be placed in /lua/custom/
local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.ui = {
   theme = "monekai",
}

M.plugins = {
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins",
}
return M
