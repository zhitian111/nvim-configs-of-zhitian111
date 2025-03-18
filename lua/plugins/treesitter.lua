require'nvim-treesitter.configs'.setup{
  -- 添加不同语言
  ensure_installed = {"vim","bash","c","cpp","javascript","json","lua","python","xml","html","css","query"},

  highlight = {enable = true,additional_vim_regex_highlighting = false},
  indent = {enable = true},
  rainbow = {
    colors = {
      'lightyellow','lightcyan','lightblue','lightmagenta' 
    },
    -- Term colors
    termcolors = {
      -- Term colors here
    }
  },
  sync_install = false,
  auto_install = true,

}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99
  
