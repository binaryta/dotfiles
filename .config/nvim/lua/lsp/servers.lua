-- mason での導入と vim.lsp.enable の対象となる LSP サーバー一覧（単一のソース）
-- 個別設定が必要なものは同ディレクトリの <name>.lua に置き、init.lua で読み込む
return {
  "bashls",
  "cssls",
  "dockerls",
  "html",
  "jsonls",
  "prismals",
  "rust_analyzer",
  "terraformls",
  "yamlls",
  "lua_ls",
  "ruby_lsp",
  "ts_ls",
}
