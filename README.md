# 使用须知
## 安装neovim
本人目前使用的neovim的版本为v0.10.4，考虑到一些插件的兼容性问题，推荐使用v0.10.4版本。
此处不提供安装命令，请自行在[neovim在github上的release页面](https://github.com/neovim/neovim/releases)下载对应版本的release包，并按照官方文档进行安装。
## 插件管理器说明
本人目前使用的插件管理器为packer，如果您有对于其他插件管理器(如lazy等)的偏好，可以仅参考插件选择和插件的配置。
因为已经设置了autocmd，所以只需要在修改完./lua/plugins/plugins-setup.lua中的插件列表后保存文件(:w注意不要退出)即可触发插件的自动安装和更新。
## 前置软件
如果您的电脑上没有git，请务必先安装git。否则插件管理器无法使用。以Ubuntu为例，可以使用以下命令安装git：
```bash
sudo apt install git
```
## 使用方法
### 下载配置文件
方法1：直接克隆仓库到本地配置文件目录：
```bash
git clone https://github.com/zhitian111/nvim-configs-of-zhitian111.git ~/.config/nvim
```
ps:请确保~/.config/nvim目录不存在，或其中的内容为空，或您已备份自己的配置文件，因为这个操作会覆盖原有配置文件。
方法3：克隆到临时目录，手动复制到配置文件目录：
```bash
git clone https://github.com/zhitian111/nvim-configs-of-zhitian111.git
```
复制请使用命令行或文件管理器，注意事项同上。复制的参考命令如下：
```bash
cp -r ./nvim-configs-of-zhitian111/ ~/.config/nvim/
```
ps:不要忘记清理临时下载的仓库。
方法3：下载zip压缩包，解压到本地配置文件目录：
请将解压后的所有文件放入~/.config/nvim目录下。
### 安装Packer
如果你还没有安装packer，请先安装packer。
方法1：
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
方法2：
使用配置文件自动安装：
```bash
nvim ~/.config/nvim/lua/plugins/plugins-setup.lua
```
```
:so
```
方法3：
使用在终端中运行以下neovim命令完成自动安装：
```bash
$ nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
```
### 安装插件
方法1：
在neovim中运行命令：
```bash
:PackerSync
```
方法2：
使用neovim打开配置文件，执行保存命令：
```bash
nvim ~/.config/nvim/lua/plugins/plugins-setup.lua
```
```bash
:w
```
然后会开始自动安装插件，等待完成后，按q退出安装界面。退出后，重新打开neovim，即可使用插件。
ps:因为插件会从github上下载，所以请注意一下网络环境。
# 字体设置
因为一些字符的原因，请务必使用nerd-font系列的字体。
关于nerd-font的下载，请参考[这里](https://www.nerdfonts.com/)。
ps:我主要使用的字体是Hack Nerd Font和Fira Code Nerd Font.
# 快捷键说明
请务必在使用之前查看./lua/core/keymaps.lua文件中的快捷键设置。
# 插件列表
此处只列出插件名称，具体的配置请查看对应配置文件。关于插件的功能介绍，可以选择查看官方文档，也可以选择查看./lua/plugins/plugins-setup.lua中的注释。
1. [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
2. [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
3. [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
    - 前置插件：
        1. [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
4. [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
    - 前置插件：
        1. [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
        2. [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
        3. [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim)
5. [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
6. [p00f/nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)
    - 前置插件：
        1. [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
7. [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
8. [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
    - 前置插件：
        1. [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
9. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
10. [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
11. [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
12. [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
13. [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
14. [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
    - 前置插件：
        1. [rafamadriz/friendly-snippets](预https://github.com/rafamadriz/friendly-snippets)
15. [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
16. [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
17. [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
18. [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
19. [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    - 前置插件：
        1. [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
20. [voldikss/vim-floaterm](https://github.com/voldikss/vim-floaterm)
21. [majutsushi/tagbar](https://github.com/majutsushi/tagbar)
22. [luozhiya/fittencode.nvim](https://github.com/luozhiya/fittencode.nvim)
23. [jose-elias-alvarez/null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
    - 前置插件：
        1. [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) 
24. [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
25. [gen740/SmoothCursor.nvim](https://github.com/gen740/SmoothCursor.nvim)
26. [karb94/neoscroll.nvim](https://github.com/karb94/neoscroll.nvim)
27. [ya2s/nvim-cursorline](https://github.com/ya2s/nvim-cursorline)
28. [sphamba/smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim)
29. [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)
30. [Vonr/align.nvim](https://github.com/Vonr/align.nvim)
31. [sitiom/nvim-numbertoggle](https://github.com/sitiom/nvim-numbertoggle)
