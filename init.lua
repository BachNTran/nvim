require("btran")
print("Hello")

vim.cmd([[
  autocmd DirChanged window execute 'cd ' . getcwd()
  autocmd DirChanged global echom "DirChanged global " . getcwd()
  autocmd DirChanged * NvimTreeRefresh
]])

vim.opt.tabstop = 4        -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4     -- number of spaces for each indent
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.smartindent = true -- smart autoindenting on new lines

