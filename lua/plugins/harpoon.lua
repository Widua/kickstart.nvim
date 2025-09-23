return {
  'ThePrimeagen/harpoon',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = true,
  keys = {
    { '<leader>a', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Mark file with harpoon' },
    { '<A-w>', "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = 'Go to next harpoon mark' },
    { '<A-1>', "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = 'Go to first harpoon file' },
    { '<A-2>', "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = 'Go to second harpoon file' },
    { '<A-3>', "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = 'Go to third harpoon file' },
    { '<A-4>', "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = 'Go to fourth harpoon file' },
    { '<A-Tab>', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = 'Go to previous harpoon mark' },
    { '<A-e>', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Show harpoon marks' },
  },
}
