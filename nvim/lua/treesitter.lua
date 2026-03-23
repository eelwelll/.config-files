require("nvim-treesitter.configs").setup {
  ensure_installed = { "lua", "python", "javascript" }, -- languages you want
  highlight = { enable = true },
  indent = { enable = true },
  lazy = false,
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false,}
}
