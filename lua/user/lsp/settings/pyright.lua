-- return {
--   settings = {
--     python = {
--       analysis = {
--         typeCheckingMode = "off",
--       },
--     },
--   },
-- }


local lspconfig = require('lspconfig')

return {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_dir = lspconfig.util.root_pattern('pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile'),
  settings = {
      python = {
          analysis = {
              typeCheckingMode = "basic", -- Adjust to your preferred type checking mode
          },
      },
  },
}
