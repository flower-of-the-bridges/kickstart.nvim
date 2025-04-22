-- A powerful GitHub integration for Neovim https://github.com/NeogitOrg/neogit
return {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
  
      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
      'ibhagwan/fzf-lua', -- optional
      'echasnovski/mini.pick', -- optional
    },
    config = function()
      require("neogit").setup({
       kind = "split", -- opens neogit in a split 
       signs = {
        -- { CLOSED, OPENED }
        section = { "", "" },
        item = { "", "" },
        hunk = { "", "" },
       },
       integrations = { diffview = true }, -- adds integration with diffview.nvim
      })
    end,
    keys = function(_, keys)
      return {
        { '<leader>ng', '<cmd>Neogit<CR>', desc = 'Open Neogit' },
        unpack(keys),
      }
    end,
}
