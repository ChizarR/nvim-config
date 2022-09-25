local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- formating
  if client.server_capabilities.documentFormattingProvided then
    vim.api.nvim_command[[augroup Format]]
    vim.api.nvim_command[[autocmd! * <buffer>]]
    vim.api.nvim_command[[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command[[augroup END]]
  end
end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typesctiptreact", "typescript.tsx", "javascript" },
  cmd = { "typescript-language-server", "--stdio" }
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
  filetypes = { "python" }
}

nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  filetypes = { "rust" }
}

