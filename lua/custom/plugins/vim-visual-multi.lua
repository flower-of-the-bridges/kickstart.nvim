-- multiline selection plugin
-- https://github.com/mg979/vim-visual-multi
return {
    'mg979/vim-visual-multi',
    branch = 'master',
    lazy = false,
    config = function()
      -- Optional: Customize keybindings or behavior here
      vim.g.VM_default_mappings = 1 -- Enable default key mappings
      vim.g.VM_mouse_mappings = 1   -- Enable mouse support for multi-cursor
      vim.g.VM_theme = 'green'     -- Set a theme for the cursors
    end,
}
