-- 補完は blink.cmp が担う（native 補完 vim.lsp.completion は使わない）

-- 全 LSP クライアントに blink の補完 capabilities を付与
local ok_blink, blink = pcall(require, "blink.cmp")
if ok_blink then
  vim.lsp.config("*", { capabilities = blink.get_lsp_capabilities() })
end

-- LSP アタッチ時の共通設定
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("my.lsp", {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    local opts = { buffer = args.buf, noremap = true, silent = true }

    local function map(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", opts, { desc = desc }))
    end

    -- ナビゲーション / アクション
    map("n", "K", function()
      vim.lsp.buf.hover({ border = "rounded" })
    end, "Hover documentation")
    -- 定義ジャンプは別タブで開く（gd / <C-]> 両方に割り当て）
    local function goto_definition_in_tab()
      vim.lsp.buf.definition({
        on_list = function(options)
          local items = options.items
          if not items or #items == 0 then
            return
          end
          local item = items[1]
          vim.cmd("tabedit " .. vim.fn.fnameescape(item.filename))
          vim.api.nvim_win_set_cursor(0, { item.lnum, math.max(item.col - 1, 0) })
          -- 候補が複数ある場合は quickfix にも積む
          if #items > 1 then
            vim.fn.setqflist({}, " ", options)
          end
        end,
      })
    end
    map("n", "gd", goto_definition_in_tab, "Jump to definition (new tab)")
    map("n", "<C-]>", goto_definition_in_tab, "Jump to definition (new tab)")
    map("n", "gD", vim.lsp.buf.declaration, "Jump to declaration")
    map("n", "gi", vim.lsp.buf.implementation, "Jump to implementation")
    map("n", "gr", vim.lsp.buf.references, "Show references")
    map("n", "gt", vim.lsp.buf.type_definition, "Jump to type definition")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action")

    -- <leader>e は neo-tree の <space>e と衝突するため診断は <leader>d に割り当てる
    map("n", "<leader>d", function()
      vim.diagnostic.open_float({ border = "rounded" })
    end, "Show diagnostics")
    map("n", "[d", function()
      vim.diagnostic.jump({ count = -1 })
    end, "Previous diagnostic")
    map("n", "]d", function()
      vim.diagnostic.jump({ count = 1 })
    end, "Next diagnostic")

    -- カーソル下シンボルのドキュメントハイライト
    if client:supports_method("textDocument/documentHighlight") then
      local hl_group = vim.api.nvim_create_augroup("my.lsp.highlight", { clear = false })
      vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
        group = hl_group,
        buffer = args.buf,
        callback = vim.lsp.buf.document_highlight,
      })
      vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
        group = hl_group,
        buffer = args.buf,
        callback = vim.lsp.buf.clear_references,
      })
    end
  end,
})

local servers = require("lsp.servers")

-- 個別設定を持つサーバーは lua/lsp/<name>.lua を読み込んで上書きする
-- （それ以外は nvim-lspconfig の既定設定のまま）
for _, name in ipairs({ "lua_ls", "ruby_lsp", "ts_ls" }) do
  vim.lsp.config(name, require("lsp." .. name))
end

vim.lsp.enable(servers)
