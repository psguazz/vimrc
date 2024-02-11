-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
			vim.cmd([[colorscheme monokai-pro]])
		end

	},
	{
		"mbbill/undotree",
		config = function()
			vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle)
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		config = function()
			vim.keymap.set("n", "<leader>nt", vim.cmd.Neotree)
		end
	},
	{ "nvim-treesitter/nvim-treesitter-context" }
}
