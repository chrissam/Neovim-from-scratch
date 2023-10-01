local lspconfig = require('lspconfig')
local util = require "lspconfig/util"

return {
  cmd = {"gopls", "serve"},
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  rootdir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true, 
        analyses = {
            unusedparams = true,
            shadow = true,
            unreachable = false,
        },
        staticcheck = true,
      },
  },
}
