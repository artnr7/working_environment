return {
	"mason-org/mason.nvim",

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason and mason_lspconfig
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "⚡",
					package_pending = "➜",
					package_uninstalled = "☹",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_enable = true,
			automatic_installation = true,
			ensure_installed = {
				-- I don't know why but lua_ls doesn't work
				--"lua_ls",
				"clangd",
				"marksman",
			},
		})

		mason_tool_installer.setup({
			automatic_enable = true,
			ensure_installed = {
				"shfmt",
				"luacheck",
				"cpplint",
				"vale",
				"stylua",
				"clang-format",
				auto_update = true,
				auto_install = true,
				-- automatically install / update on startup. If set to false nothing
				-- will happen on startup. You can use :MasonToolsInstall or
				-- :MasonToolsUpdate to install tools and check for updates.
				-- Default: true
				run_on_start = true,

				-- set a delay (in ms) before the installation starts. This is only
				-- effective if run_on_start is set to true.
				-- Default: 0
				start_delay = 3000, -- 3 second delay

				-- Only attempt to install if 'debounce_hours' number of hours has
				-- elapsed since the last time Neovim was started. This stores a
				-- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
				-- This is only relevant when you are using 'run_on_start'. It has no
				-- effect when running manually via ':MasonToolsInstall' etc....
				-- Default: nil
				debounce_hours = 144, -- at least 5 hours between attempts to install/update
			},
		})
	end,
}
