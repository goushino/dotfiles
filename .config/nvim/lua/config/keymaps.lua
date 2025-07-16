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

