local select = require('CopilotChat.select')

require("CopilotChat").setup {
  debug = true,
  prompts = {
    Explain = {
      prompt = '/COPILOT_EXPLAIN カーソル上のコードを詳細かつ分かりやすく説明してください。',
    },
    Tests = {
      prompt = '/COPILOT_TESTS カーソル上のコードに対する包括的な単体テスト関数を作成してください。',
    },
    Fix = {
      prompt = '/COPILOT_FIX このコードに問題があります。バグを修正し、改善点を説明してください。',
    },
    Optimize = {
      prompt = '/COPILOT_REFACTOR 選択したコードを最適化し、パフォーマンスと可読性を向上させるための具体的な変更を提案してください。',
    },
    Docs = {
      prompt = '/COPILOT_REFACTOR 選択したコードのドキュメントを作成し、適切なコメントスタイルで追加してください（例：JavaScriptのJSDoc、Pythonのdocstringsなど）。',
    },
    FixDiagnostic = {
      prompt = 'ファイル内の診断上の問題を特定し、修正してください：',
      selection = select.diagnostics,
    }
  }
}
