-- KEY BINDINGS


-- set leader key
vim.g.mapleader = " "


-- helper function for mapping keys
local map = function(key)
    -- get the extra options
    local opts = {noremap = true}
    for i, v in pairs(key) do
        if type(i) == 'string' then opts[i] = v end
    end

    -- basic support for buffer-scoped keybindings
    local buffer = opts.buffer
    opts.buffer = nil

    if buffer then
        vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
    else
        vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
    end
end



-- comment toggle
map {"n", "<Leader>/", ":CommentToggle<CR>"}
map {"v", "<Leader>/", ":'<,'>CommentToggle<CR>"}

-- buffer control
map {"n", "<Leader>v", ":vsplit<CR>"}
map {"n", "<Leader>h", ":split<CR>"}
map {"n", "<S-h>", ":bnext<CR>"}
map {"n", "<S-l>", ":bprevious<CR>"}

-- Neovim Tree
map {"n", "<Leader>e", ":NvimTreeOpen<CR>"}

-- Telescope
-- map {"n", "<Leader>ff", ":Telescope find_files<CR>"}
-- map {"n", "<Leader>fg", ":Telescope live_grep<CR>"}
-- map {"n", "<Leader>fb", ":Telescope buffers<CR>"}
-- map {"n", "<Leader>fn", ":Telescope projects<CR>"}




