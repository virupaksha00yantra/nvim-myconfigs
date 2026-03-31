return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  cmd = { "TodoTelescope", "TodoLocList", "TodoQuickFix" },
  keys = {
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next todo comment",
    },
    {
      "[t",
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "Previous todo comment",
    },
    { "<leader>td", "<cmd>TodoTelescope<cr>", desc = "Todo Comments" },
    { "<leader>tD", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
  },
  opts = {
    keywords = {
      HACK = { icon = "􁷗 ", color = "#E69875" },
      DONE = { icon = "􁸑 ", color = "#A7C080" },
      NOTDONE = { icon = "􁸕 ", color = "#E67E80" },
      TODO = { icon = "􀋦 ", color = "#7FBBB3", alt = { "TO-DO" } },
      BUG = { icon = "􀯕 ", color = "#E67E80" },
      FIX = { icon = "􀙅 ", color = "#DBBC7F", alt = { "FIXME", "FIXIT", "ISSUE" } },
      WARN = { icon = "􁝲 ", color = "#DBBC7F", alt = { "WARNING", "XXX" } },
      PERF = { icon = "􁁌 ", color = "#D699B6", alt = { "PERFORMANCE" } },
      OPTIM = { icon = "􀙭 ", color = "#D3C6AA", alt = { "OPTIMIZE" } },
      NOTE = { icon = "􁤑 ", color = "#E69875" },
      TEST = { icon = "􂬮 ", color = "#D3C6AA", alt = { "TESTING" } },
      PASSED = { icon = "􀆅", color = "#A7C080" },
      FAILED = { icon = "􀆄", color = "#E67E80" },
      INFO = { icon = "􀅳", color = "#7FBBB3" },
      IDEA = { icon = "􀛮 ", color = "#D699B6" },
      DOC = { icon = "􀩛 ", color = "#83C092", alt = { "DOCUMENT", "DOCUMENTATION" } },
    },
  },
}
-- HACK:
-- DONE:
-- NOTDONE:
-- TODO:
-- BUG:
-- FIX:
-- WARN:
-- PERF:
-- OPTIM:
--NOTE:
--TEST:
--PASSED:
--FAILED:
--INFO:
--IDEA:
--DOC:
