-- open File Tree when open
local function open_nvim_tree()
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { mode = "n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { noremap = true, silent = true }},
        { mode = "n", "<leader>m", "<cmd>NvimTreeFocus<CR>", { noremap = true, silent = true }},
    },
    opts = {
        git = {
            enable = true,
            ignore = true,
        },
    },
}
