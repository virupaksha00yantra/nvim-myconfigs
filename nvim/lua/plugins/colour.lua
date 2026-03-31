return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    require("everforest").setup({
      transparent_background_level = 2,
      background = "hard",
      italics = true,
      --my config
      --
    })
    vim.cmd.colorscheme("everforest")
    -- Set line number colors AFTER colorscheme loads
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#e67e80" }) -- RED
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#a7c080", bold = true }) -- GREEN
  end,
}
