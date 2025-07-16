return {
    "nvim-lualine/lualine.nvim",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        options = {
            theme = "onedark",
            section_separators = "", -- See issue #733
            component_separators = "",
            globalstatus = true
        },
        tabline = {
            lualine_a = {'buffers'},
            lualine_b = {},
           	lualine_c = {},
           	lualine_x = {},
           	lualine_y = {},
           	lualine_z = {}
        },
	},
}
