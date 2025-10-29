return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = {
        enabled = true,
        layout = {
          cycle = false,
        }
      },
      quickfile = {
        enabled = true,
        exclude = {"latex"},
      },
      picker = {
        enabled = true,
        matchers = {
          frecency = true,
          cwd_bonus = true,
        },
        formatters = {
          file = {
            filename_first = true,
            filename_only = false,
            icon_width = 2,
          },
        },
        layout = {
          preset = "telescope",
          cycle = false,
        },
        layouts = {
          select = {
            preview = false,
            layout = {
              backdrop = false,
              width = 0.6,
              min_width = 80,
              height = 0.4,
              min_height = 10,
              box = "vertical",
              border = "rounded",
              title = "{title}",
              title_pos = "center",
              {win = "input", height = 1, border = "bottom"},
              {win = "list", border = "none"},
              {win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top"},
            },
          },
          telescope = {
            reverse = true, -- set to false for search bar to be on top
            layout = {
              box = "horizontal",
              backdrop = false,
              width = 0.8,
              height = 0.9,
              border = "none",
              {
                box = "vertical",
                {win = "list", title = " Results ", title_pos = "center", border = "rounded"},
                {win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center"},
              },
              {
                win = "preview",
                title = "{preview:Preview}",
                width = 0.50,
                border = "rounded",
                title_pos = "center",
              },
            },
          },
          ivy = {
            layout = {
              box = "vertical",
              backdrop = false,
              width = 0,
              height = 0.4,
              position = "bottom",
              border = "top",
              title = "{title} {live} {flags}",
              title_pos = "left",
              {win = "input", height = 1, border = "bottom"},
              {
                box = "horizontal",
                {win = "list", border = "none"},
                {win = "preview", title = "{preview}", width = 0.5, border = "left"},
              },
            },
          },
        }
      },

      -- image = {
      --   enabled = true,
      --   doc = {
      --     float = false,
      --     inline = true, -- if you want show image on cursor hover
      --     max_width = 50,
      --     max_height = 30,
      --     wo = {
      --       wrap = true,
      --     },
      --   },
      --   convert = {
      --     notify = true,
      --     command = "magick"
      --   },
      --   img_dirs = {},
      -- },
      dashboard = {
        enabled = true,
        sections = {
          {section = "header"},
          {section = "keys", gap = 1, padding = 1},
          {section = "startup"},
          {
            section = "terminal",
            cmd = "ascii-image-converter ~/Documents/nvim-stuff/stef.png -C -c -d 45,30",
            random = 10,
            pane = 2,
            indent = 4,
            height = 30,
          },
        },
      },
    },

    keys = {
      { "<leader>lg", function() require("snacks").lazygit() end,            desc = "lazygit" },
      { "<leader>gl", function() require("snacks").lazygit.log() end,        desc = "lazygit logs" },
      { "<leader>es", function() require("snacks").explorer() end,           desc = "open snacks expolrer" },
      { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "fast rename current file" },
      { "<leader>dB", function() require("snacks").bufdelete() end,          desc = "delete or close buffer (confirm)" },


      -- Snack Picker
      { "<leader>pf", function() require("snacks").picker.files() end,                                 desc = "find files (snack picker)" },
      { "<leader>pc", function() require("snacks").picker.files({cwd = vim.fn.stdpath("config")}) end, desc = "find config file" },
      { "<leader>ps", function() require("snacks").picker.grep() end,                                  desc = "grep word" },
      { "<leader>pws", function() require("snacks").picker.frep_word() end,                            desc = "search visual selection or word", mode = {"n", "x"} },
      { "<leader>pk", function() require("snacks").picker.keymaps({layout = "ivy"}) end,               desc = "search keymaps (snack picker)" },

      { "<leader>gbr", function() require("snacks").picker.git_branches({layout = "select"}) end,      desc = "pick and switch git branches" },
      { "<leader>th", function() require("snacks").picker.colorschemes({layout = "ivy"}) end,          desc = "pick color schemes" },
      { "<leader>vh", function() require("snacks").picker.help() end,                                  desc = "help pages" },
    }
  },
  {
    "folke/todo-comments.nvim",
    event = {"BufReadPre", "BufNewFile"},
    keys = {
      {"<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "todo"},
      {"<leader>pT", function() require("snacks").picker.todo_comments({keywords = {"TODO", "FIX", "FIXME"}}) end, desc = "todo/fix/fixme"},
    },
  },
}
