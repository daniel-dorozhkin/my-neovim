-- Flutter
vim.keymap.set("n", "<leader>re", "<cmd>FlutterEmulators<CR>", {
	desc = "Display list of emulators.",
})

vim.keymap.set("n", "<leader>rr", "<cmd>FlutterRun<CR>", {
	desc = "Build app on selected emulator.",
})

-- Swift
vim.keymap.set("n", "<leader>rs", "<cmd>SwiftRun<CR>", {
	desc = "Build current swift file.",
})

-- Formatting
vim.keymap.set("n", "<leader>p", "<cmd>put<CR>", {
	desc = "Past text to the new line.",
})

vim.keymap.set("n", "<leader>o", "o<Esc>", {
	desc = "Add new line below.",
})
vim.keymap.set("n", "<leader>O", "O<Esc>", {
	desc = "Add new line above.",
})

-- Navigation
vim.keymap.set("n", "<leader>q", function()
	vim.cmd("quit")
end, { desc = "Quit" })

vim.keymap.set("n", "<leader>w", function()
	vim.lsp.buf.format()
	vim.cmd("write")
end, { desc = "Format and write" })

vim.keymap.set("n", "<leader>c", function()
	vim.cmd("close")
end, { desc = "Close window" })

-- Window managment
vim.keymap.set("n", "<leader>w,", "<C-w><", {
	desc = "Decrease window width.",
})
vim.keymap.set("n", "<leader>w.", "<C-w>>", {
	desc = "Increase window width.",
})

-- Terminal
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
