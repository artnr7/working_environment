--local keymap = vim.keymap.set

local lspmap = function(keys, func, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, keys, func, { desc = 'LSP: ' .. desc })
end

--local map = function(keys, func, desc, mode)
--  mode = mode or "n"
--  vim.keymap.set(mode, keys, func, desc)
--end


-- File tree
--map( "<C-t>", "<cmd>Neotree toggle<CR>", "Toggle file tree" )
--map( "<C-h>", "<C-w>h", "Change to the left win" )
--map( "<C-l>", "<C-w>l", "Change to the right win" )
--map( "<C-j>", "<C-w>j", "Change to the down win" )
--map( "<C-k>", "<C-w>k", "Change to the upper win" )

-- Telescope
--keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
--keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
--keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })

-- LSP
--keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
lspmap('grn', vim.lsp.buf.rename, '[R]e[n]ame')

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
lspmap( 'gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })


--keymap("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
--keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })

-- DAP
--keymap("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", { desc = "Debug continue" })
--keymap("n", "<F9>", "<cmd>lua require('dap').toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })

-- Плавающий терминал
--keymap("n", "<leader>t", "<cmd>FloatermToggle<CR>", { desc = "Toggle floating terminal" })
--keymap("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Управление вкладками
--keymap("n", "<leader>tc", "<cmd>BufferLinePickClose<CR>", { desc = "Close tab" })
-- keymap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
-- keymap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
--keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to tab 1" })
--keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to tab 2" })
--keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to tab 3" })
