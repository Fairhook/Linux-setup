return {
  -- Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          treesitter = true,
          native_lsp = { enabled = true },
          telescope = true,
          cmp = true,
          gitsigns = true,
          neotree = true,
          which_key = true,
        },
      })
      -- vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Tokyonight
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "moon", -- options: storm, night, moon, day
        transparent = false,
        styles = {
          sidebars = "dark",
          floats = "dark",
        },
      })
      -- vim.cmd.colorscheme("tokyonight")
    end,
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    priority = 1000,
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        transparent_mode = false,
      })
      -- vim.cmd.colorscheme("gruvbox")
    end,
  },

  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "moon", -- auto, main, moon, or dawn
        dark_variant = "main",
        disable_background = false,
      })
      -- vim.cmd.colorscheme("rose-pine")
    end,
  },

  -- One Nord
  {
    "rmehri01/onenord.nvim",
    name = "onenord",
    priority = 1000,
    config = function()
      require("onenord").setup({
        borders = true,
        fade_nc = false,
        styles = {
          comments = "italic",
          keywords = "bold",
          functions = "NONE",
          variables = "NONE",
        },
      })
      -- vim.cmd.colorscheme("onenord")
    end,
  },

  -- Everforest
  {
    "neanias/everforest-nvim",
    name = "everforest",
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "soft",
        transparent_background_level = 0,
      })
      -- vim.cmd.colorscheme("everforest")
    end,
  },

  -- Dracula
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = false,
      })
      -- vim.cmd.colorscheme("dracula")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        compile = false,  -- set to true for faster startup (saves compiled highlights)
        undercurl = true,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = { italic = true },
        transparent = false,
        dimInactive = false,
        terminalColors = true,
        theme = "lotus",  -- options: "wave", "dragon", "lotus"
        background = {
          dark = "wave",
          light = "lotus"
        },
      })
      -- vim.cmd("colorscheme kanagawa")
    end,
  },
}
