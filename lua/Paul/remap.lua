vim.g.mapleader = " ";
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("i", "jj", "<Esc>");
vim.keymap.set("n", "<leader>dd", ":Lexplore %:p:h<CR>");
vim.keymap.set("n", "<leader>da", ":Lexplore");
vim.keymap.set("v", "<leader>s", "xi()<Esc>P");
local function netrw_mapping()
  local bufmap = function(lhs, rhs)
    local opts = {buffer = true, remap = true}
    vim.keymap.set('n', lhs, rhs, opts)
  end

  -- close window
  bufmap('<leader>dd', ':Lexplore<CR>')
  bufmap('<leader>da', ':Lexplore<CR>')

  -- Better navigation
  --bufmap('H', 'u')
  --bufmap('h', '-^')
 -- bufmap('l', '<CR>')
  --bufmap('L', '<CR>:Lexplore<CR>')

  -- Toggle dotfiles
  --bufmap('.', 'gh')
end

local user_cmds = vim.api.nvim_create_augroup('user_cmds', {clear = true})
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  group = user_cmds,
  desc = 'Keybindings for netrw',
  callback = netrw_mapping
});
