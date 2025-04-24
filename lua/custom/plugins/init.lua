return {
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = '[U]ndotree Toggle' })
    end,
  },

  {
    'ThePrimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'
      vim.keymap.set('n', '<leader>Ho', ui.toggle_quick_menu, { desc = 'Harpoon [O]pen Menu' })
      vim.keymap.set('n', '<leader>Ha', mark.add_file, { desc = '[H]arpoon [A]dd' })
      vim.keymap.set('n', '<C-n>', function()
        ui.nav_next()
      end, { desc = '[H]arpoon [N]ext' })
      vim.keymap.set('n', '<C-p>', function()
        ui.nav_prev()
      end, { desc = '[H]arpoon [P]rev' })
      vim.keymap.set('n', '<leader>H1', function()
        ui.nav_file(1)
      end, { desc = '[H]arpoon [1]' })
      vim.keymap.set('n', '<leader>H2', function()
        ui.nav_file(2)
      end, { desc = '[H]arpoon [2]' })
      vim.keymap.set('n', '<leader>H3', function()
        ui.nav_file(3)
      end, { desc = '[H]arpoon [3]' })
      vim.keymap.set('n', '<leader>H4', function()
        ui.nav_file(4)
      end, { desc = '[H]arpoon [4]' })
      vim.keymap.set('n', '<leader>H5', function()
        ui.nav_file(5)
      end, { desc = '[H]arpoon [5]' })
    end,
  },

  { 'tpope/vim-fugitive', config = function() end },

  { 'nvim-java/nvim-java', config = function() end },

  {
    'olrtg/nvim-emmet',
    config = function()
      vim.keymap.set({ 'n', 'v' }, '<leader>xe', require('nvim-emmet').wrap_with_abbreviation)
    end,
  },

  {
    'barrett-ruth/live-server.nvim',
    opts = {
      build = 'pnpm add -g live-server',
      cmd = { 'LiveServerStart', 'LiveServerStop' },
      config = true,
    },
  },
}
