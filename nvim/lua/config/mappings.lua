local keymap = vim.keymap.set

local map = function(keys, func, desc, mode)
	mode = mode or "n"
	vim.keymap.set(mode, keys, func, { desc = "Default: " .. desc })
end

-- Main
--map("C-s", ":w<CR>", "Save us!")
keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save us!" })
-- File tree
map("<C-t>", "<cmd>Neotree toggle<CR>", "Toggle file tree")
map("<C-h>", "<C-w>h", "Change to the left win")
map("<C-l>", "<C-w>l", "Change to the right win")
map("<C-j>", "<C-w>j", "Change to the down win")
map("<C-k>", "<C-w>k", "Change to the upper win")

-- Telescope
map("<leader>ff", "<cmd>Telescope find_files<CR>", "Find files")
map("<leader>fg", "<cmd>Telescope live_grep<CR>", "Live grep")
map("<leader>fb", "<cmd>Telescope buffers<CR>", "Find buffers")

-- LSP
--keymap("n", "K", vim.lsp.buf.hover, { desc = "Show documentation" })
--keymap("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code actions" })

-- DAP
--keymap("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", { desc = "Debug continue" })
--keymap("n", "<F9>", "<cmd>lua require('dap').toggle_breakpoint()<CR>", { desc = "Toggle breakpoint" })

-- Плавающий терминал
map("<leader>t", "<cmd>FloatermToggle<CR>", "Toggle floating terminal")
map("<Esc>", "<C-\\><C-n>", "Exit terminal mode", "t")

-- Управление вкладками
--keymap("n", "<leader>tc", "<cmd>BufferLinePickClose<CR>", { desc = "Close tab" })
-- keymap("n", "<C-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next tab" })
-- keymap("n", "<C-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous tab" })
--keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to tab 1" })
--keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to tab 2" })
--keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to tab 3" })
