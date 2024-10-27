require("btran")
print("Hello")

vim.cmd([[
  autocmd DirChanged window execute 'cd ' . getcwd()
  autocmd DirChanged global echom "DirChanged global " . getcwd()
  autocmd DirChanged * NvimTreeRefresh
]])

