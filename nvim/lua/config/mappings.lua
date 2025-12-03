local keymap = vim.keymap.set

local lspmap = function(keys, func, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, keys, func, { desc = 'LSP: ' .. desc })
end

local map = function(keys, func, desc, mode)
  mode = mode or "n"
  vim.keymap.set(mode, keys, func, { desc = 'Default: ' .. desc})
end


-- File tree
map( "<C-t>", "<cmd>Neotree toggle<CR>", "Toggle file tree" )
map( "<C-h>", "<C-w>h", "Change to the left win" )
map( "<C-l>", "<C-w>l", "Change to the right win" )
map( "<C-j>", "<C-w>j", "Change to the down win" )
map( "<C-k>", "<C-w>k", "Change to the upper win" )

-- Telescope
map("<leader>ff", "<cmd>Telescope find_files<CR>", "Find files" )
map("<leader>fg", "<cmd>Telescope live_grep<CR>",  "Live grep" )
map("<leader>fb", "<cmd>Telescope buffers<CR>", "Find buffers" )

-- LSP
lspmap("gd", vim.lsp.buf.definition, "Go to definition" )
-- Rename the variable under your cursor.
--  Most Language Servers support renaming across files, etc.
lspmap('grn', vim.lsp.buf.rename, '[R]e[n]ame')

-- Execute a code action, usually your cursor needs to be on top of an error
-- or a suggestion from your LSP for this to activate.
lspmap( 'gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })

-- Find references for the word under your cursor.
--lspmap('grr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')

-- Jump to the implementation of the word under your cursor.
--  Useful when your language has ways of declaring types without an actual implementation.
--lspmap('gri', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')

-- Jump to the definition of the word under your cursor.
--  This is where a variable was first declared, or where a function is defined, etc.
--  To jump back, press <C-t>.
--lspmap('grd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')

-- WARN: This is not Goto Definition, this is Goto Declaration.
--  For example, in C this would take you to the header.
--lspmap('grD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')

-- Fuzzy find all the symbols in your current document.
--  Symbols are things like variables, functions, types, etc.
--lspmap('gO', require('telescope.builtin').lsp_document_symbols, 'Open Document Symbols')

-- Fuzzy find all the symbols in your current workspace.
--  Similar to document symbols, except searches over your entire project.
--lspmap('gW', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Open Workspace Symbols')

-- Jump to the type of the word under your cursor.
--  Useful when you're not sure what type a variable is and you want to see
--  the definition of its *type*, not where it was *defined*.
--lspmap('grt', require('telescope.builtin').lsp_type_definitions, '[G]oto [T]ype Definition')

--keymap("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
--keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })

-- DAP
--keymap("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", { desc = "Debug continue" })
--keymap("n", "<F9>", "<cmd>lua require('dap').toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })

-- Плавающий терминал
map( "<leader>t", "<cmd>FloatermToggle<CR>", "Toggle floating terminal" )
map( "<Esc>", "<C-\\><C-n>", "Exit terminal mode", "t" )

-- Управление вкладками
--keymap("n", "<leader>tc", "<cmd>BufferLinePickClose<CR>", { desc = "Close tab" })
-- keymap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
-- keymap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
--keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to tab 1" })
--keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to tab 2" })
--keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to tab 3" })
