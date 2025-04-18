-- lsp utils: https://nvimdev.github.io/lspsaga/
return {
    'nvimdev/lspsaga.nvim',
    config = function()
        require('lspsaga').setup({
            ui = {
                border = 'rounded', -- Rounded borders for the hover window
            },
        })

        -- Keybinding for hover functionality
        vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true, desc = 'Hover Documentation' })
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
}
