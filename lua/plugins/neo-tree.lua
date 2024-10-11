return {
	"nvim-neo-tree/neo-tree.nvim",
	opts = {
		filesystem = {
			filtered_items = {
				hide_dotfiles = false,
				hide_gitignored = false,
			},
		},
		-- Use neo-tree instead of netrw in expanded mode
		hijack_netrw_behavior = "open_current",
	},
}
