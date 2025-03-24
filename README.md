# 使用须知
## 安装neovim
本人目前使用的neovim的版本为v0.10.4，考虑到一些插件的兼容性问题，推荐使用v0.10.4版本。
此处不提供安装命令，请自行在[neovim在github上的release页面](https://github.com/neovim/neovim/releases)下载对应版本的release包，并按照官方文档进行安装。
## 插件管理器说明
本人目前使用的插件管理器为packer，如果您有对于其他插件管理器(如lazy等)的偏好，可以仅参考插件选择和插件的配置。
因为已经设置了autocmd，所以只需要在修改完./lua/plugins/plugins-setup.lua中的插件列表后保存文件(:w注意不要退出)即可触发插件的自动安装和更新。
## 前置软件
如果你的电脑上没有git，请务必先安装git。否则插件管理器无法使用。以Ubuntu为例，可以使用以下命令安装git：
```bash
sudo apt install
```
# 字体设置
因为一些字符的原因，请务必使用nerd-font系列的字体。
关于nerd-font的下载，请参考[这里](https://www.nerdfonts.com/)。
ps:我主要使用的字体是Hack Nerd Font和Fira Code Nerd Font.
# 快捷键说明
请务必在使用之前查看./lua/core/keymaps.lua文件中的快捷键设置。
# 插件列表
此处只列出插件名称，具体的配置请查看对应配置文件。关于插件的功能介绍，可以选择查看官方文档，也可以选择查看./lua/plugins/plugins-setup.lua中的注释。
[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
    前置插件：
        [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
[nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
    前置插件：
        [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
        [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
        [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
[christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
[p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
        前置插件：
            [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    前置插件：
        mason.nvim(链接见上)
[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
[hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
[hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
    前置插件：
        [rafamadriz/friendly-snippets](预https://github.com/rafamadriz/friendly-snippets)
[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    前置插件：
        nvim-lua/plenary.nvim(链接见上)
[voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
[majutsushi/tagbar](https://github.com/majutsushi/tagbar)
[luozhiya/fittencode.nvim](https://github.com/luozhiya/fittencode.nvim)
[jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
    前置插件：
        neovim/nvim-lspconfig(链接见上)
[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
[gen740/SmoothCursor.nvim](https://github.com/gen740/SmoothCursor.nvim)
[karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
[ya2s/nvim-cursorline](https://github.com/ya2s/nvim-cursorline)
[sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim)
[norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
