-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local map = vim.keymap.set

map('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', { silent = true})

map('n', 'gj', '<C-w>j')
map('n', 'gk', '<C-w>k')
map('n', 'gl', '<C-w>l')
map('n', 'gh', '<C-w>h')
map('n', 'ss', ':<C-u>sp<CR><C-w>j')
map('n', 'sv', ':<C-u>vs<CR><C-w>l')
map('n', 'rh', '<C-w><')
map('n', 'rj', '<C-w>-')
map('n', 'rk', '<C-w>+')
map('n', 'rl', '<C-w>>')

map('n', ',', ':bprev<CR>', { silent = true })
map('n', '.', ':bnext<CR>', { silent = true })
map('n', 'bd', ':bd<CR>')

map('i', 'jj', '<Esc>', { silent = true })

-- for LSP keymap
map('n', '<leader>d', vim.diagnostic.open_float, { desc = "LSP diagnostic open float window" })
map('n', '<leader>a', vim.lsp.buf.code_action, { desc = "LSP code action" })
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = "LSP rename" })
map('n', '<leader>rr', vim.lsp.buf.references, { desc = "LSP references" })
map('n', '<leader>i', vim.lsp.buf.implementation, { desc = "LSP implementation" })
map('n', '<leader>o', vim.lsp.buf.document_symbol, { desc = "LSP document symbol" })
map('n', '<leader>t', vim.lsp.buf.type_definition, { desc = "LSP type definition" })

