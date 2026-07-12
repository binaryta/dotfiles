return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "use" },
      },
      -- フォーマットは stylua(conform) に任せる
      format = {
        enable = false,
      },
    },
  },
}
