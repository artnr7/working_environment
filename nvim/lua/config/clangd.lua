vim.lsp.config('clangd', {
  capabilities = {
      offsetEncoding = { "utf-8", "utf-16" },
      textDocument = {
        completion = {
          editsNearCursor = true
        }
      }
    },
  cmd = { "clangd" },
  filetypes = { 'c', 'cpp', 'cc', 'objc', 'objcpp', 'cuda' },}
)
  -- on_attach =  { '<function @/root/.local/share/nvim/lazy/nvim-lspconfig/lsp/clangd.lua:91>' },
  -- on_init = { 'function @/root/.local/share/nvim/lazy/nvim-lspconfig/lsp/clangd.lua:86>' },
  -- root_markers = { ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" },}
