-- Open Telescope file browser with leader leader f in normal mode
vim.api.nvim_set_keymap("n", "<Leader><Leader>f",  ":Telescope file_browser<CR>", { noremap = true, silent = true })

-- Open Telescope file browser with alt f in insert mode
vim.api.nvim_set_keymap("i", "<A-f>", "<Esc>:Telescope file_browser <CR>", { noremap = true, silent = true })

-- Save file with alt k in normal mode
vim.api.nvim_set_keymap('n', '<A-k>', ':w<CR>', { noremap = true, silent = true })

-- Save file with alt k in insert mode
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:w<CR>a', { noremap = true, silent = true })

-- Save and quit file with alt q in insert mode
vim.api.nvim_set_keymap('i', '<A-q>', '<Esc>:wq<CR>', { noremap = true, silent = true })

-- Save and quit file with alt q in normal mode
vim.api.nvim_set_keymap('n', '<A-q>', '<cmd>wq<CR>', { noremap = true, silent = true })

-- Quit without saving with alt x in normal mode
vim.api.nvim_set_keymap('n', '<A-x>', ':q!<CR>', { noremap = true, silent = true })

-- Open Telescope file browser with alt f in insert mode
vim.api.nvim_set_keymap("i", "<A-f>", '<Esc>:Telescope file_browser<CR>', { noremap = true, silent = true})

-- Open Telescope file browser with alt f in normal mode
vim.api.nvim_set_keymap("n", "<A-f>", ':Telescope file_browser<CR>', { noremap = true, silent = true})

-- Go to next buffer with alt l in normal mode
vim.api.nvim_set_keymap('n', '<A-l>', ':bnext<CR>', { noremap = true, silent = true })

-- Go to next buffer with alt l in insert mode
vim.api.nvim_set_keymap('i', '<A-l>', '<Esc>:bnext<CR>', { noremap = true, silent = true })

-- Go to previous buffer with alt p in insert mode
vim.api.nvim_set_keymap('i', '<A-p>', '<Esc>:bprev<CR>', { noremap = true, silent = true })

-- Open IconPicker in insert mode with alt i
vim.keymap.set("i", "<A-i>", "<cmd>PickEverythingInsert<cr>", { noremap = true, silent = true })

-- Open ColorPicker in insert mode with alt 2
vim.keymap.set("n", "<A-2>", "<cmd>EasyColor<cr>", { noremap = true, silent = true })

-- Open Trouble in insert mode & normal mode with alt 3
vim.keymap.set("n", "<A-3>", "<cmd>TroubleToggle<cr>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-3>", "<esc><cmd>TroubleToggle<cr>", { noremap = true, silent = true })

-- Open TodoTrouble in insert mode & normal mode with alt 4
vim.keymap.set("n", "<A-4>", "<cmd>TodoTrouble<cr>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-4>", "<esc><cmd>TodoTrouble<cr>", { noremap = true, silent = true })

-- Run Python script with alt 1 in normal mode for Python files
vim.cmd([[autocmd FileType python nnoremap <buffer> <A-1> :w<CR>:split term://python %<CR>]])

-- Run Python script with alt 1 in insert mode for Python files
vim.cmd([[autocmd FileType python inoremap <buffer> <A-1> <Esc>:w<CR>:split term://python %<CR>]])

-- Run JavaScript script with alt 1 in normal mode for JavaScript files
vim.cmd([[autocmd FileType javascript nnoremap <buffer> <A-1> :w<CR>:split term://node % --no-deprecation<CR>]])

-- Run JavaScript script with alt 1 in insert mode for JavaScript files
vim.cmd([[autocmd FileType javascript inoremap <buffer> <A-1> <Esc>:w<CR>:split term://node % --no-deprecation<CR>]])

-- Run Lua script with alt 1 in insert mode for Lua files
vim.cmd([[autocmd FileType lua inoremap <buffer> <A-1> <Esc>:w<CR>:split term://lua %<CR>]])

-- Run Lua script with alt 1 in normal mode for Lua files
vim.cmd([[autocmd FileType lua nnoremap <buffer> <A-1> :w<CR>:split term://lua %<CR>]])

-- Run Bash script with alt 1 in insert mode for Bash files
vim.cmd([[autocmd FileType sh inoremap <buffer> <A-1> <Esc>:w<CR>:split term://chmod +x % && ./%<CR>]])

-- Run Bash script with alt 1 in normal mode for Bash files
vim.cmd([[autocmd FileType sh nnoremap <buffer> <A-1> :w<CR>:split term://chmod +x % && ./%<CR>]])

-- Compile and run C program with alt 1 in insert mode for C files
vim.cmd([[autocmd FileType c inoremap <buffer> <A-1> <Esc>:w<CR>:split term://gcc % -o %:r && ./%:r<CR>]])

-- Compile and run C program with alt 1 in normal mode for C files
vim.cmd([[autocmd FileType c nnoremap <buffer> <A-1> :w<CR>:split term://gcc % -o %:r && ./%:r<CR>]])

-- Compile and run C++ program with alt 1 in insert mode for C++ files
vim.cmd([[autocmd FileType cpp inoremap <buffer> <A-1> <Esc>:w<CR>:split term://g++ % && ./a.out<CR>]])

-- Compile and run C++ program with alt 1 in normal mode for C++ files
vim.cmd([[autocmd FileType cpp nnoremap <buffer> <A-1> :w<CR>:split term://g++ % && ./a.out<CR>]])

-- Run Go program with alt 1 in normal mode for Go files
vim.cmd([[autocmd FileType go nnoremap <buffer> <A-1> :w<CR>:split term://go run %<CR>]])

-- Run Go program with alt 1 in insert mode for Go files
vim.cmd([[autocmd FileType go inoremap <buffer> <A-1> <Esc>:w<CR>:split term://go run %<CR>]])

-- Run PHP script with alt 1 in normal mode for PHP files
vim.cmd([[autocmd FileType php nnoremap <buffer> <A-1> :w<CR>:split term://php %<CR>]])

-- Run PHP script with alt 1 in insert mode for PHP files
vim.cmd([[autocmd FileType php inoremap <buffer> <A-1> <Esc>:w<CR>:split term://php %<CR>]])

-- Run Ruby script with alt 1 in normal mode for Ruby files
vim.cmd([[autocmd FileType rb nnoremap <buffer> <A-1> :w<CR>:split term://ruby %<CR>]])

-- Run Ruby script with alt 1 in insert mode for Ruby files
vim.cmd([[autocmd FileType rb inoremap <buffer> <A-1> <Esc>:w<CR>:split term://ruby %<CR>]])

-- Compile and run Rust program with alt 1 in normal mode for Rust files
vim.cmd([[autocmd FileType rust nnoremap <buffer> <A-1> :w<CR>:split term://rustc % && ./$(basename % .rs)<CR>]])

-- Compile and run Rust program with alt 1 in insert mode for Rust files
vim.cmd([[autocmd FileType rust inoremap <buffer> <A-1> <Esc>:w<CR>:split term://rustc % && ./$(basename % .rs)<CR>]])

-- Compile and run Java program with alt 1 in normal mode for Java files
vim.cmd([[autocmd FileType java nnoremap <buffer> <A-1> :w<CR>:split term://javac % && java $(basename % .java)<CR>]])

-- Compile and run Java program with alt 1 in insert mode for Java files
vim.cmd([[autocmd FileType java inoremap <buffer> <A-1> <Esc>:w<CR>:split term://javac % && java $(basename % .java)<CR>]])
