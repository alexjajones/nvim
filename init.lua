local remaps = require 'remaps'
local load_plugin = require('helpers').load_plugin

remaps.applyRemaps()

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  load_plugin 'sleuth',
  load_plugin 'lazydev',
  load_plugin 'gitsigns',
  load_plugin 'telescope',
  load_plugin 'treesitter',
  load_plugin 'conform',
  load_plugin 'autocomplete',
  load_plugin 'mini',
  load_plugin 'gruvbox',
  load_plugin 'lsp',
}

vim.cmd 'source ~/.config/nvim/netrw_remaps.vim'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
