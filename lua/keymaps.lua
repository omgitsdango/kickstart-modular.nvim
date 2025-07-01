-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- [[ Overseer Task Runner ]]
-- Add overseer keymaps so they show up in which-key immediately
vim.keymap.set('n', '<leader>oo', '<cmd>OverseerOpen<cr>', { desc = 'Open overseer' })
vim.keymap.set('n', '<leader>oc', '<cmd>OverseerClose<cr>', { desc = 'Close overseer' })
vim.keymap.set('n', '<leader>ot', '<cmd>OverseerToggle<cr>', { desc = 'Toggle overseer' })
vim.keymap.set('n', '<leader>or', '<cmd>OverseerRun<cr>', { desc = 'Run task' })
vim.keymap.set('n', '<leader>oq', '<cmd>OverseerQuickAction<cr>', { desc = 'Quick action' })
vim.keymap.set('n', '<leader>oa', '<cmd>OverseerTaskAction<cr>', { desc = 'Task action' })
vim.keymap.set('n', '<leader>oi', '<cmd>OverseerInfo<cr>', { desc = 'Overseer info' })
vim.keymap.set('n', '<leader>ob', '<cmd>OverseerBuild<cr>', { desc = 'Build task' })
vim.keymap.set('n', '<leader>ol', '<cmd>OverseerLoadBundle<cr>', { desc = 'Load bundle' })
vim.keymap.set('n', '<leader>os', '<cmd>OverseerSaveBundle<cr>', { desc = 'Save bundle' })
vim.keymap.set('n', '<leader>od', '<cmd>OverseerDeleteBundle<cr>', { desc = 'Delete bundle' })
vim.keymap.set('n', '<leader>oR', '<cmd>OverseerRunCmd<cr>', { desc = 'Run command' })

-- vim: ts=2 sts=2 sw=2 et
