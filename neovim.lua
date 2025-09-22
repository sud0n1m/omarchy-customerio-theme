return {
	{
		"loctvl842/monokai-pro.nvim",
		name = "customerio-theme",
		priority = 1000,
		config = function()
			require("monokai-pro").setup({
				terminal_colors = true,
				devicons = true,
				styles = {
					comment = { italic = true },
					keyword = { italic = true },
					type = { italic = true },
					storageclass = { italic = true },
					structure = { italic = true },
					parameter = { italic = true },
					annotation = { italic = true },
					tag_attribute = { italic = true },
				},
				filter = "pro", -- Use Pro variant as base for Customer.io colors
				inc_search = "background",
				background_clear = {
					"toggleterm",
					"telescope",
					"renamer",
					"notify",
				},
				plugins = {
					bufferline = {
						underline_selected = false,
						underline_visible = false,
					},
					indent_blankline = {
						context_highlight = "default",
						context_start_underline = false,
					},
				},
				-- Override colors to match Customer.io palette
				override = function(c)
					return {
						-- Main colors
						base2 = "#1A3A3A", -- Abyss (background)
						base3 = "#F8F9FA", -- Soft White (foreground)

						-- Accent colors
						red = "#E6007E",      -- Raspberry
						green = "#7FE87F",    -- New Verdant
						yellow = "#FFB000",   -- Yellow
						blue = "#007FE6",     -- Blue
						magenta = "#7F3FE6",  -- Purple
						orange = "#FF7F00",   -- Orange

						-- Additional colors for better integration
						white = "#F8F9FA",
						black = "#1A3A3A",
						dimmed1 = "#4D4D4D",
						dimmed2 = "#666666",
					}
				end,
			})
			vim.cmd([[colorscheme monokai-pro]])
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "monokai-pro",
		},
	},
}
