return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = false,
              cargo = {
                buildScripts = { enable = false },
              },
            },
          },
        },
      },
    },
  },
}
