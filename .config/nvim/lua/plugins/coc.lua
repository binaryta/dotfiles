return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    vim.g.coc_global_extensions = {
      "coc-json",
      "coc-html",
      "coc-css",
      "coc-yaml",
      "coc-prettier",
      "coc-eslint",
      "coc-snippets",
      "coc-highlight",
      "coc-git",
      "coc-fzf-preview",
      "coc-solargraph",
      "coc-tsserver",
      "coc-docker",
      "coc-explorer",
      "coc-lua",
      "coc-stylua",
    }

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<space><space>", ":<C-u>CocList<CR>", opts)
    vim.api.nvim_set_keymap("n", "<C-f>", "<Plug>(coc-format)", {})
    vim.api.nvim_set_keymap("n", "<C-]>", "<Plug>(coc-definition)", {})
    vim.api.nvim_set_keymap("n", "<C-t>", "<C-o>", opts)
    vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {})
    vim.api.nvim_set_keymap("v", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
    vim.api.nvim_set_keymap("n", "<leader>a", "<Plug>(coc-codeaction-selected)", {})
    vim.api.nvim_set_keymap("n", "<space>e", "<Cmd>CocCommand explorer --preset .vim<CR>", opts)
    vim.keymap.set("i", "<CR>", function()
      return vim.fn["coc#pum#visible"]() == 1 and vim.fn["coc#pum#confirm"]() or "<CR>"
    end, { expr = true, noremap = true })

    function _G.show_documentation()
      local filetype = vim.bo.filetype
      if filetype == "vim" or filetype == "help" then
        vim.cmd("h " .. vim.fn.expand("<cword>"))
      else
        vim.fn.CocAction("doHover")
      end
    end

    vim.api.nvim_set_keymap("n", "K", ":lua show_documentation()<CR>", opts)
  end,
}
