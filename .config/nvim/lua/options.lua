-- GENERAL VIM SETTINGS
local set = vim.opt

-- globals
set.hidden = true			-- required for keeping multiple tabs open
set.wrap = false	    		-- wraps text when exceeding buffer width
set.encoding = 'UTF-8'		-- text encoding
set.fileencodings = 'UTF-8'     	-- text encoding
set.pumheight = 10			-- max lines for pop-up height 
set.ruler = true			-- show the line and column number of the cursor position
set.cmdheight = 2			-- number of lines to use for command line
set.mouse = 'a'			-- make mouse useable in all modes
set.splitright = true		-- always split buffer to right if horizontal
set.splitbelow = true		-- always split buffer to below if vertical
set.number = true			-- always show line numbers
set.cursorline = true		-- show an underline at cursor level
set.expandtab = true		-- insert spaces instead of tabs
set.clipboard = 'unnamedplus'       -- copy pasta between vim and everything else
set.relativenumber = true           -- Sets the line number display to relative to the current line
set.ignorecase = true               -- case insensitive for searches
set.smartcase = true                -- unless if the query contains capitalizations
set.smarttab = true                 -- makes tabbing smarter
set.showmode = false                -- we don't need to see things like -- insert -- anymore
set.softtabstop = 4                 -- tab spacing
set.shiftwidth = 4                  -- tab spacing
set.showtabline = 2                 -- always show tabline

