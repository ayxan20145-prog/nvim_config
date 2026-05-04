return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Rust LSP
    vim.lsp.config("rust_analyzer", {
      capabilities = capabilities,
    })
    vim.lsp.enable("rust_analyzer")

    -- C / C++ LSP (clangd)
    vim.lsp.config("clangd", {
      capabilities = capabilities,
    })
    vim.lsp.enable("clangd")
  end
}
