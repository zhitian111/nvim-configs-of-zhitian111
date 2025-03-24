vim.g.mapleader = " "
local keymap = vim.keymap

-- -------- 插入模式 -------- --
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-z>", "<ESC>ui")

-- -------- 视觉模式 -------- --
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- -------- 正常模式 -------- --
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


-- -------- 插件 -------- --
-- neo-tree
keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- bufferline
keymap.set("n", "<C-I>", ":bnext<CR>")
keymap.set("n", "<C-Y>", ":bprevious<CR>")

-- 通过lsp在输入分号时自动格式化该行
-- 格式化本行的代码
local function fomat_current_line()
  local cursor_line = vim.api.nvim_win_get_cursor(0)[1]
  local start_line = cursor_line - 1
  local start_col = 0
  local end_line = cursor_line
  local line = vim.api.nvim_buf_get_lines(0, start_line, end_line, false)[1]
  local end_col = #line

  vim.lsp.buf.format({
    async = false,
    range = {
      start = {
        start_line,
        start_col
      },
      ['end'] = {
        end_line,
        end_col
      }
    }
  })
end

keymap.set("i", ";;", '', { noremap = true, callback = fomat_current_line })
