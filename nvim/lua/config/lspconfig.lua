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
vim.lsp.config(
  'marksman',
  {
    filetypes = { 'md' },
  }
)


