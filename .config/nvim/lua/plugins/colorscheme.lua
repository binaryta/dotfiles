return {
	{
		"scottmckendry/cyberdream.nvim",
		opts = {
			transparent = true,
			saturation = 1,
			italic_comments = true,
		},
		config = function(_, opts)
			require("cyberdream").setup(opts)
			vim.cmd.colorscheme("cyberdream")
		end,
	},
	{
		"tomasiser/vim-code-dark",
		enabled = false,
		lazy = false,
		config = function()
			if vim.env.TERM_PROGRAM ~= "tmux" then
				vim.cmd("colorscheme codedark")
			end
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		enabled = false,
		lazy = false,
		config = function()
			require("vscode").setup()

			if vim.env.TERM_PROGRAM == "tmux" then
				vim.cmd("colorscheme vscode")
			end
		end,
	},
}
