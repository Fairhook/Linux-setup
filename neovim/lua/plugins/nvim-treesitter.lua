return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
      "lua", "python", "bash", "hyprlang", "css", "json", "javascript", 
      },
      highlight = { enabled = true },
      indent = { enable = true },
    })
  end,
}
