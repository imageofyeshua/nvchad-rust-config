require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "tsserver", "clangd", "marksman" }

opts = {
  servers = {
    cssls = {
      settings = {
        css = {
          lint = {
            unknownAtRules = "ignore",
          },
        },
      },
    },
  },
}
-- read :h vim.lsp.config for changing options of lsp servers 
