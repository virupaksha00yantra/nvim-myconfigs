return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local custom_theme = require("lualine.themes.everforest")
    local colors = {
      bg0 = "#2b3339",
      bg_statusline = "#2E383C",
      orange = "#e69875",
      green = "#a7c080",
      red = "#e67e80",
      blue = "#7fbbb3",
      yellow = "#dbbc7f",
    }

    -- Customize the theme for each mode
    custom_theme.normal.a.bg = colors.orange
    custom_theme.normal.a.fg = colors.bg0
    custom_theme.normal.b.bg = colors.bg_statusline
    custom_theme.normal.c.bg = colors.bg_statusline

    custom_theme.insert.a.bg = colors.green
    custom_theme.insert.a.fg = colors.bg0
    custom_theme.insert.b.bg = colors.bg_statusline
    custom_theme.insert.c.bg = colors.bg_statusline

    custom_theme.visual.a.bg = colors.red
    custom_theme.visual.a.fg = colors.bg0
    custom_theme.visual.b.bg = colors.bg_statusline
    custom_theme.visual.c.bg = colors.bg_statusline

    custom_theme.replace = {
      a = { bg = colors.yellow, fg = colors.bg0, gui = "bold" },
      b = { bg = colors.bg_statusline },
      c = { bg = colors.bg_statusline },
    }

    custom_theme.command = {
      a = { bg = colors.blue, fg = colors.bg0, gui = "bold" },
      b = { bg = colors.bg_statusline },
      c = { bg = colors.bg_statusline },
    }

    require("lualine").setup({
      options = {
        theme = custom_theme,
        section_separators = { left = "", right = "" },
        component_separators = { left = "│", right = "│" },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
          -- Lazy updates indicator
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = { fg = colors.orange },
          },
          "encoding",
          "fileformat",
          {
            "filetype",
            colored = true,
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
