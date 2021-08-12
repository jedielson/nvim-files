
local map_save_and_quit = function ()
	-- Ctrl+s is binded to save file
	vim.api.nvim_set_keymap('n', '<C-s>', [[:w<CR>]], {noremap = true, silent = true})
	vim.api.nvim_set_keymap('i', '<C-s>', [[<Esc>:w<CR>i]], {noremap = true, silent = true})
	vim.api.nvim_set_keymap('v', '<C-s>', [[<Esc>:w<CR>]], {noremap = true, silent = true})

	-- Alternate way to quit
	vim.api.nvim_set_keymap('n', '<C-Q>', ':wq!<CR>', {noremap = true, silent = true})

	-- Use control-c instead of escape
	vim.api.nvim_set_keymap('n', '<C-c>', '<Esc>', {noremap = true, silent = true})

	-- <TAB>: completion.
	vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {noremap = true, silent = true})

end


local map_navigation = function()
	-- Better Navigation
	vim.api.nvim_set_keymap('n', 'qq', 'i', {noremap = true})
	vim.api.nvim_set_keymap('i', 'qq', '<Esc>', {noremap = true})
	vim.api.nvim_set_keymap('n', 'j', 'h', {noremap = true})
	vim.api.nvim_set_keymap('n', 'k', 'j', {noremap = true})
	vim.api.nvim_set_keymap('n', 'i', 'k', {noremap = true})
end

local map_navigation_insert_mode = function()
	-- Navigation INSERT MODE
	vim.api.nvim_set_keymap('i', '<A-j>', 'Left', {noremap = true})
	vim.api.nvim_set_keymap('i', '<A-k>', 'Down', {noremap = true})
	vim.api.nvim_set_keymap('i', '<A-i>', 'Up', {noremap = true})
	vim.api.nvim_set_keymap('i', '<A-l>', 'Right', {noremap = true})


	-- like b in normal mode
	vim.api.nvim_set_keymap('i', '<A-h>', '<C-o>b', {noremap = true})
	-- like w in normal mode
	vim.api.nvim_set_keymap('i', '<A-o>', '<C-o>w', {noremap = true})
	-- like e in normal mode, but with an l to fix cursor position
	vim.api.nvim_set_keymap('i', '<A-ç>', '<C-o>e<C-o>l', {noremap = true})
end

local map_easy_caps = function()
	--Easy CAPS
	vim.api.nvim_set_keymap('i', '<C-u>', '<Esc>viwUi', {noremap = true})
	vim.api.nvim_set_keymap('n', '<C-u>', 'viwUi<Esc>', {noremap = true})
end

local map_tab_navs = function()
	-- TAB in general mode will move to text buffer
	vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap = true})
	--SHIFT-TAB will go back
	vim.api.nvim_set_keymap('n', '<S-TAB', ':bprevious<CR>', {noremap = true})
end


local map_window_navigation = function()

	-- Better window navigation
	vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true})
	vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true})
	vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true})
	vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true})

end

map_save_and_quit()
map_navigation()
map_navigation_insert_mode()
map_easy_caps()
map_tab_navs()
map_window_navigation()
