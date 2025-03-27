return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({})
		vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", {
			desc = "Sidebar toggle.",
		})
		vim.keymap.set("n", "<leader>sf", "<Cmd>Neotree focus<CR>", {
			desc = "Sidebar focus.",
		})
		vim.keymap.set("n", "<leader>sr", "<Cmd>Neotree reveal<CR>", {
			desc = "Sidebar reveal file.",
		})
	end,
}
