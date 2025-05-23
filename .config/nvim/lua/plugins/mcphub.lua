return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest",
  config = function()
    require("mcphub").setup({
      port = 3000,
      config = vim.fn.expand("~/.config/mcphub/servers.json"),

      log = {
        level = vim.log.levels.WARN,
        to_file = true,
      },

      extensions = {
        avante = {},
      },
    })
  end,
}
