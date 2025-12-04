return {
  "mfussenegger/nvim-lint",
  dependencies = {
    "mason-org/mason.nvim",
    {"WhoIsSethDaniel/mason-tool-installer.nvim",
      config = function()
        require("mason-tool-installer").setup({
          automatic_enable = true,
          ensure_installed = {"luacheck", "cpplint", "vale"
          auto_update = true,
        
          -- automatically install / update on startup. If set to false nothing
          -- will happen on startup. You can use :MasonToolsInstall or
          -- :MasonToolsUpdate to install tools and check for updates.
          -- Default: true
          run_on_start = true,
      
          -- set a delay (in ms) before the installation starts. This is only
          -- effective if run_on_start is set to true.
          -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
          -- Default: 0
          start_delay = 3000, -- 3 second delay
     
          -- Only attempt to install if 'debounce_hours' number of hours has
          -- elapsed since the last time Neovim was started. This stores a
          -- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
          -- This is only relevant when you are using 'run_on_start'. It has no
          -- effect when running manually via ':MasonToolsInstall' etc....
          -- Default: nil
          debounce_hours = 144, -- at least 5 hours between attempts to install/update 
        }
      })  
      end,
    }
  },
  config = function()
    require("lint").linters_by_ft = {
    cpp = { "cpplint" },
    hpp = { "cpplint" },
    cc = { "cpplint" },
    h = { "cpplint" },
    markdown = {"vale"},
    lua = {"luacheck"}
    }

    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()

      -- try_lint without arguments runs the linters defined in `linters_by_ft`
      -- for the current filetype
        require("lint").try_lint( "cpplint", "vale", "luacheck" )
      end,
    })
    -- Для ручного запуска
    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint( "cpplint", "vale", "luacheck")
    end, { desc = "Trigger linting" })
  end,
}
