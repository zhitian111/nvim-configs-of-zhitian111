local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("folke/tokyonight.nvim") --主题
	use({
		"nvim-lualine/lualine.nvim", --状态栏
		requires = { "kyazdani42/nvim-web-devicons" }, --状态栏图标
	})
	use({ --文件树
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	})
	use("christoomey/vim-tmux-navigator") -- 切换窗口
	use("nvim-treesitter/nvim-treesitter") -- 语法高亮
	use("p00f/nvim-ts-rainbow")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip") -- snippets引擎，不装这个自动补全会出问题
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("hrsh7th/cmp-path") -- 文件路径
	use("numToStr/Comment.nvim") -- gcc注释和gc注释
	use("windwp/nvim-autopairs") -- 自动补全括号
	use("akinsho/bufferline.nvim") -- buffer分割
	use("lewis6991/gitsigns.nvim") -- 左侧git提示
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("voldikss/vim-floaterm") -- 悬浮终端
	--use 'ms-jpq/chadtree'       -- 另一个文件树
	--use 'neoclide/coc.nvim'  -- 高亮
	use("majutsushi/tagbar") -- 浏览一个文件中的所有函数
	use({
		"luozhiya/fittencode.nvim",
		config = function()
			require("fittencode").setup()
		end,
	})
	use("jose-elias-alvarez/null-ls.nvim") -- 代码格式化
	use("lukas-reineke/indent-blankline.nvim") -- 缩进列高亮
	use({
		"gen740/SmoothCursor.nvim", -- 丝滑左侧指示标识
		config = function()
			require("smoothcursor").setup()
		end,
	})
	use("karb94/neoscroll.nvim") -- 平滑滚动
	use("ya2s/nvim-cursorline") -- 高亮当前行和单词
	use("sphamba/smear-cursor.nvim") -- 光标拖影
	use("norcalli/nvim-colorizer.lua") -- 颜色预览
	use({ -- 代码对齐
		"Vonr/align.nvim",
		branch = "v2",
	})
	use({ "sitiom/nvim-numbertoggle" }) -- 在不同窗口切换时保留行号
	use({ -- 书签
		"crusj/bookmarks.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("telescope").load_extension("bookmarks")
		end,
	})
	use({ -- 代码引用和定义预览
		"dnlhc/glance.nvim",
		-- cmd = "Glance",
	})
	use("sindrets/diffview.nvim") -- git diff
	use({ -- 浮动窗口代码引用和定义预览
		"rmagatti/goto-preview",
		requires = { "rmagatti/logger.nvim" },
	})
	use("petertriho/nvim-scrollbar") -- 右侧滚动条
	use({
		"jghauser/fold-cycle.nvim",
		config = function()
			require("fold-cycle").setup()
		end,
	})
	if packer_bootstrap then
		require("packer").sync()
	end
end)
