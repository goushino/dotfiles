return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opt = {
        defaults = {
            layout_config = {
                width = 0.75,
            },
            file_ignore_patterns = {
                "%.git/",
                "%vendor",
            },
        },
        pickers = {
            find_files = {
                hidden = true,
            },
        },
    },
    keys = {
        { mode = "n", "<leader>ff", "<cmd>Telescope find_files<CR>",  { noremap = true, silent = true }},
        { mode = "n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { noremap = true, silent = true }},
        { mode = "n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true }},
        { mode = "n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true }},
    },
}
