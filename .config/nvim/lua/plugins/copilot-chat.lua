return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" },
    { "nvim-lua/plenary.nvim", branch = "master" },
  },
  lazy = false,
  build = "make tiktoken",
  cmd = { "CopilotChat", "CopilotChatToggle" },
  opts = {
    prompts = {
      Explain = {
        prompt = "コードを日本語で説明してください",
        mapping = "<leader>ce",
        system_prompt = "COPILOT_EXPLAIN",
      },
      Review = {
        prompt = "コードを日本語でレビューしてください。",
        mapping = "<leader>cr",
        system_prompt = "COPILOT_REVIEW",
      },
      Fix = {
        prompt = "このコードには問題があります。バグを修正したコードを表示してください。説明は日本語でお願いします。",
        mapping = "<leader>cf",
        system_prompt = "COPILOT_FIX",
      },
      Optimize = {
        prompt = "選択したコードを最適化し、パフォーマンスと可読性を向上させてください。説明日本語でお願いします。",
        mapping = "<leader>co",
        system_prompt = "COPILOT_REFACTOR",
      },
      Docs = {
        prompt = "選択したコードに関するドキュメントコメントを日本語で生成してください。",
        mapping = "<leader>cd",
        system_prompt = "COPILOT_GENERATE",
      },
      Tests = {
        prompt = "選択したコードの詳細なユニットテストを書いてください。説明は日本語でお願いします。",
        mapping = "<leader>ct",
        system_prompt = "COPILOT_TESTS",
      },
      FixDiagnostic = {
        prompt = "コードの診断結果に従って問題を修正してください。修正内容の説明は日本語でお願いします。",
        mapping = "<leader>cd",
      },
      Commit = {
        prompt = "実装差分に対するコミットメッセージを Convertional Commits の仕様に従って英語で記述してください。",
        mapping = "<leader>cco",
      },
    },
  },
}
