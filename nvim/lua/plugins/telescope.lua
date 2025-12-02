return {
  {
    "nvim-telescope/telescope.nvim", tag = 'v0.2.0',
     event = "VimEnter",
     dependencies = { "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable "make" == 1
        end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons", enables = vim.g.have_nerg_font },
    },
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {require("telescope.themes").get_dropdown(),},
        },
      }
    end,
  },
}
