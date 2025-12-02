return {

  {"neovim/nvim-lspconfig"},

  {"mason-org/mason.nvim",opts = {}},

  {"mason-org/mason-lspconfig.nvim",
    opts = {
      automatic_enable = true,
      ensure_installed = {"lua_ls", "clangd", "marksman"}
    },
    dependencies = 
     { "neovim/nvim-lspconfig",
        {"mason-org/mason.nvim", opts = {}}
     }, 
  },
}
