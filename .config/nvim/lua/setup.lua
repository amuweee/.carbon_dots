-- PLUGIN CONFIGS


-- treesitter configs
require'nvim-treesitter.configs'.setup{
    ensure_installed = "maintained",
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {}
    }
}

-- auto comment
require('nvim_comment').setup(
    {comment_empty = false},
    {create_mappings = false}
)

-- bracket auto pairs
require('nvim-autopairs').setup(
    {disable_filetype = {"TelescopePrompt" , "vim"}},
    {disable_in_macro = true}
)

-- Neovim tree
require'nvim-tree'.setup()

-- gitsigns
require('gitsigns').setup()

-- project management
require("project_nvim").setup {
-- your configuration comes here
-- or leave it empty to use the default settings
-- refer to the configuration section below
}

-- telescope
require('telescope').load_extension('projects')
