-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Vertically center current line when scrolling text with <C-u> and <C-d>
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go up half a page and center" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go down half a page and center" })

-- Vertically center next/previous search occurrences
vim.keymap.set("n", "n", "nzz", { desc = "Jump to the next occurrence and center" })
vim.keymap.set("n", "N", "Nzz", { desc = "Jump to the previous occurrence and center" })

vim.keymap.set(
	"n",
	"gpd",
	"<cmd> lua require('goto-preview').goto_preview_definition({ noremap = true })<cr>",
	{ desc = "[P]review [D]efinition" }
)
vim.keymap.set(
	"n",
	"gpt",
	"<cmd>lua require('goto-preview').goto_preview_type_definition()<cr>",
	{ desc = "[G]oto [P]review [T]ype" }
)
vim.keymap.set(
	"n",
	"gpi",
	"<cmd>lua require('goto-preview').goto_preview_implementation()<cr>",
	{ desc = "[G]oto [P]review [I]mplementation" }
)
vim.keymap.set(
	"n",
	"gpD",
	"<cmd>lua require('goto-preview').goto_preview_declaration()<cr>",
	{ desc = "[G]oto [P]review [D]eclaration" }
)
vim.keymap.set(
	"n",
	"gpr",
	"<cmd>lua require('goto-preview').goto_preview_references()<cr>",
	{ desc = "[G]oto [P]review [R]eferences" }
)
vim.keymap.set(
	"n",
	"gpc",
	"<cmd>lua require('goto-preview').close_all_win()<cr>",
	{ desc = "[G]oto [P]review [C]lose" }
)
