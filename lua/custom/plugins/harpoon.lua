return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon.setup()

    vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, { desc = '[H]arpoon [A]dd file' })
    vim.keymap.set('n', '<leader>hl', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = '[H]arpoon [L]ist files' })
    vim.keymap.set('n', '<leader>hc', function() harpoon:list():clear() end, { desc = '[H]arpoon [C]lear list' })
  end,
}

-- vim: ts=2 sts=2 sw=2 et
