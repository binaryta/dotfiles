# Keymaps

Neovim (native LSP 構成) のキーマップ一覧。`<leader>` = `<Space>`、`<localleader>` = `\`。

## LSP（バッファローカル / `LspAttach` 時に有効）

定義元: [`lua/lsp/init.lua`](lua/lsp/init.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `K` | n | ホバードキュメント表示（枠線付き / `vim.lsp.buf.hover`） |
| `gd` / `<C-]>` | n | 定義へ**別タブ**でジャンプ (`definition`) |
| `gD` | n | 宣言へジャンプ (`declaration`) |
| `gi` | n | 実装へジャンプ (`implementation`) |
| `gr` | n | 参照一覧 (`references`) |
| `gt` | n | 型定義へジャンプ (`type_definition`) |
| `<leader>rn` | n | シンボルのリネーム (`rename`) |
| `<leader>ca` | n, v | コードアクション (`code_action`) |
| `<leader>d` | n | 診断をフロート表示（枠線付き / `open_float`） |
| `[d` | n | 前の診断へ (`diagnostic.jump -1`) |
| `]d` | n | 次の診断へ (`diagnostic.jump +1`) |

> `<leader>d`（診断）は、ファイラの `<Space>e` と衝突するため `<leader>d` に割り当てている。
> `<C-]>` はノーマルモードでは定義ジャンプ、インサートモードでは Copilot の dismiss（下記）。モードが異なるため共存する。

## 補完（blink.cmp / インサートモード）

定義元: [`lua/plugins/blink.lua`](lua/plugins/blink.lua)（`preset = "default"`）

| キー | 動作 |
| --- | --- |
| `<CR>` | 確定（メニュー非表示時は通常の改行） |
| `<C-y>` | 確定 |
| `<C-e>` | メニューを閉じる |
| `<C-space>` | メニュー表示 / ドキュメント切替 |
| `<C-n>` / `<C-p>` | 次 / 前の候補を選択 |
| `<C-b>` / `<C-f>` | ドキュメントをスクロール（上 / 下） |
| `<C-k>` | シグネチャヘルプ切替 |

> `<Tab>` は**あえて割り当てていない**（下記 Copilot のインライン補完 accept に使うため）。
> メニュー・ドキュメント・シグネチャは枠線（rounded）付きで表示する。

## Copilot（インサートモード / インライン補完）

定義元: [`lua/plugins/copilot.lua`](lua/plugins/copilot.lua)

| キー | 動作 |
| --- | --- |
| `<Tab>` | インライン提案を accept |
| `<C-s>` | 次の提案 |
| `<C-p>` | 前の提案 |
| `<C-]>` | 提案を dismiss（※ノーマルモードの `<C-]>` は LSP 定義ジャンプ） |

## フォーマット

定義元: [`lua/plugins/conform.lua`](lua/plugins/conform.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `<C-f>` | n, v | バッファを整形（conform、LSP フォールバック） |

> Lint（eslint_d / rubocop）は [`nvim-lint.lua`](lua/plugins/nvim-lint.lua) が保存時等に自動実行（キーマップなし）。

## ファイラ（neo-tree）

定義元: [`lua/plugins/neo-tree.lua`](lua/plugins/neo-tree.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `<Space>e` | n | エクスプローラの開閉（reveal） |

## ファイル検索（fzf）

定義元: [`lua/plugins/fzf.lua`](lua/plugins/fzf.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `<Space>f` | n | ファイル検索 (`:Files`) |
| `<Space>gg` | n | 全文検索 (`:RG`) |
| `<Space>gs` | n | 変更ファイル (`:GFiles?`) |
| `<Space>b` | n | バッファ一覧 (`:Buffers`) |
| `<Space>h` | n | 履歴 (`:History`) |

## バッファ / タブ / ウィンドウ

定義元: [`lua/config/keymaps.lua`](lua/config/keymaps.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `bls` | n | バッファ一覧 → 選択 (`:ls` → `:buf`) |
| `bn` / `bp` | n | 次 / 前のバッファ |
| `fn` | n | ファイルを開く (`:edit`) |
| `tt` | n | 新規タブ (`:tabnew`) |
| `tls` | n | タブ一覧 (`:tabs`) |
| `tn` / `tp` | n | 次 / 前のタブ |
| `<` / `>` | n | ウィンドウ幅を縮小 / 拡大 |
| `+` / `-` | n | ウィンドウ高さを拡大 / 縮小 |

## コメント（nerdcommenter / デフォルト）

定義元: [`lua/plugins/nerdcommenter.lua`](lua/plugins/nerdcommenter.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `<leader>cc` | n, v | コメント化 |
| `<leader>cu` | n, v | コメント解除 |
| `<leader>c<Space>` | n, v | コメントのトグル |

## 翻訳（vim-translator）

定義元: [`lua/plugins/vim-translator.lua`](lua/plugins/vim-translator.lua)

| キー | モード | 動作 |
| --- | --- | --- |
| `<leader>tj` | n, v | 日本語へ翻訳（ポップアップ表示） |

---

## 注意点（キーの重複・衝突）

- **`<C-]>`**: ノーマルモードは LSP 定義ジャンプ（別タブ）、インサートモードは Copilot dismiss。モードが異なるため衝突しない。
- **`<C-p>`**: Copilot の「前の提案」と blink の「前の候補選択」が両方インサートモードに割り当てられている。blink のメニュー表示中はメニュー選択が優先される。
- **`<C-f>`**: 通常/ビジュアルモードは conform の整形、インサートモード（補完メニュー表示中）は blink のドキュメントスクロール。モードが異なるため衝突しない。
- **`<Tab>`**: blink では未割り当て。Copilot のインライン accept 専用。
- **`<leader>` = `<Space>`** のため、`<leader>ca` は `<Space>ca`、`<leader>d` は `<Space>d` を意味する。
