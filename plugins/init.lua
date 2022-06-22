return {
   --enable dashboard
   ["goolord/alpha-nvim"] = {
      disable = false,
   },
   --autosave
   ["Pocco81/AutoSave.nvim"] = {
      config = require("custom.plugins.configs.autosave_conf").setup(),
   },
   --format and lint
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.configs.null-ls_conf").setup()
      end,
   },
   ["simrat39/symbols-outline.nvim"] = {},
   ["is0n/jaq-nvim"] = {
      require("custom.plugins.configs.jaq_conf").setup(),
   },
   ["folke/trouble.nvim"] = {
      requires = "kyazdani42/nvim-web-devicons",
   },
   ["ray-x/lsp_signature.nvim"] = {},
   ["windwp/nvim-spectre"] = {
      -- require("spectre").setup(),
   },
   -- load it after nvim-lspconfig cuz we lazy loaded lspconfig
}
