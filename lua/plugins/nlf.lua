-- 配置 null-ls.nvim
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- 格式化工具
    null_ls.builtins.formatting.prettier, -- JavaScript/TypeScript/JSON 格式化
    null_ls.builtins.formatting.stylua,   -- Lua 格式化
    null_ls.builtins.formatting.black,    -- Python 格式化
    null_ls.builtins.formatting.clang_format.with(
      {
        extra_args = {                              -- 自定义 clang-format 参数
          "-style=file:/home/zhitian/.clang-format" -- 使用.clang-format 文件
        }
      }),                                           -- C/C++ 格式化
    null_ls.builtins.formatting.gofmt,              -- Go 格式化
    null_ls.builtins.formatting.rustfmt,            -- Rust 格式化
    -- 代码检查工具（可选）
    null_ls.builtins.diagnostics.eslint_d,          -- JavaScript/TypeScript 检查
    null_ls.builtins.diagnostics.flake8,            -- Python 检查
  },
})

-- 绑定格式化快捷键
vim.api.nvim_set_keymap('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- 自动格式化（保存时自动格式化）
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
