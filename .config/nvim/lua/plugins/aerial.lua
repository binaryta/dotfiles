return {
  "stevearc/aerial.nvim",
  opts = {
    layout = {
      default_direction = "left",
      min_width = 60,
      resize_to_content = false,
    },
    attach_mode = "window",
    show_guides = true,
  },
  config = function(_, opts)
    local aerial = require("aerial")
    aerial.setup(opts)

    vim.api.nvim_create_autocmd("BufReadPost", {
      pattern = "*.spec.ts",
      callback = function()
        if not aerial.is_open() then
          aerial.open({ focus = false })
        end
      end,
    })
  end,
}
