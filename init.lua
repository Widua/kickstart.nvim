require 'widua'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup({
  'NMAC427/guess-indent.nvim',
  'nvim-lua/plenary.nvim',
  'mfussenegger/nvim-jdtls',
  require 'kickstart.plugins.debug',
  require 'kickstart.plugins.gitsigns',
  require 'plugins.gitsigns',
  require 'plugins.whichkey',
  require 'plugins.telescope',
  require 'plugins.lazydev',
  require 'plugins.lspconfig',
  require 'plugins.conform',
  require 'plugins.harpoon',
  require 'plugins.blink',
  require 'plugins.tokyonight',
  require 'plugins.todocomments',
  require 'plugins.mini_nvim',
  require 'plugins.treesitter',
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
