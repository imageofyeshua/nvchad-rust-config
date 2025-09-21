return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Automatically updates parsers on install/update
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "c", "lua", "vim", "ruby", "rust", "vimdoc", "javascript", "typescript", "python" }, -- Languages to install
      sync_install = false, -- Install parsers synchronously (recommended for initial setup)
      auto_install = true, -- Automatically install missing parsers on buffer open
      highlight = {
        enable = true, -- Enable syntax highlighting
        disable = { "bash" }, -- Languages to disable highlighting for
        additional_vim_regex_highlighting = false, -- Use Treesitter for highlighting, not Vim regex
      },
      indent = { enable = true, disable = { "python" } }, -- Enable indentation, disable for specific languages
      -- Other modules like textobjects, context_commentstring, etc. can be configured here
    })
  end,
}
