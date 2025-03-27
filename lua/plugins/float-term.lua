return {
	"voldikss/vim-floaterm",
	config = function()
		vim.keymap.set("n", "<leader>og", function()
			vim.cmd("FloatermNew! gitui")
		end, {
			desc = "Open git terminal in floating window.",
		})
	end,
}
