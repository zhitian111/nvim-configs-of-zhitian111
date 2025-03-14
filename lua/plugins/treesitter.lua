require'nvim-treesitter.configs'.setup{
  -- 添加不同语言
  ensure_installed = {"vim","bash","c","cpp","javascript","json","lua","python","xml","html","css"},

  highlight = {enable = true},
  indent = {enable = true},

  -- 括号颜色
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
