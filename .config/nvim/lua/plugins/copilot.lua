return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        hide_during_completion = true,
        debounce = 75,
        keymap = {
          accept = "<Tab>",
          accept_word = false,
          accept_line = false,
          next = "<C-s>",
          prev = "<C-p>",
          dismiss = "<C-]>",
        },
      },
    })
  end,
}
