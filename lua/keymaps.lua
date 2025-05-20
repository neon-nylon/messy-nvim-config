-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------
-- Set the leader key to a space
vim.g.mapleader = ' '
-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Key mappings for nvim-tree
vim.keymap.set('n', '<leader>nn', '<cmd>NvimTreeToggle<cr>', { desc = 'Open file browser' })
vim.keymap.set('n', '<leader>nf', '<cmd>NvimTreeFindFile<cr>', { desc = 'Find in file browser' })
vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm size=10 dir=' .. vim.fn.getcwd() .. ' direction=horizontal name=desktop<cr>', { desc = 'Open Terminal in Current Folder' })
vim.keymap.set('n', '<leader>tt', function()
  local current_file_dir = vim.fn.expand('%:p:h')
  vim.cmd('ToggleTerm size=10 dir=' .. current_file_dir .. ' direction=horizontal name=desktop')
end, { desc = 'Open Terminal in Current File Directory' })

