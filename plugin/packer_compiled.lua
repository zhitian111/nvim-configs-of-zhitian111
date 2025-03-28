-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
	vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
	return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
	_G._packer = _G._packer or {}
	_G._packer.inside_compile = true

	local time
	local profile_info
	local should_profile = false
	if should_profile then
		local hrtime = vim.loop.hrtime
		profile_info = {}
		time = function(chunk, start)
			if start then
				profile_info[chunk] = hrtime()
			else
				profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
			end
		end
	else
		time = function(chunk, start) end
	end

	local function save_profiles(threshold)
		local sorted_times = {}
		for chunk_name, time_taken in pairs(profile_info) do
			sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
		end
		table.sort(sorted_times, function(a, b)
			return a[2] > b[2]
		end)
		local results = {}
		for i, elem in ipairs(sorted_times) do
			if not threshold or threshold and elem[2] > threshold then
				results[i] = elem[1] .. " took " .. elem[2] .. "ms"
			end
		end
		if threshold then
			table.insert(results, "(Only showing plugins that took longer than " .. threshold .. " ms " .. "to load)")
		end

		_G._packer.profile_output = results
	end

	time([[Luarocks path setup]], true)
	local package_path_str =
		"/home/zhitian/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/zhitian/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/zhitian/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/zhitian/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
	local install_cpath_pattern = "/home/zhitian/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
	if not string.find(package.path, package_path_str, 1, true) then
		package.path = package.path .. ";" .. package_path_str
	end

	if not string.find(package.cpath, install_cpath_pattern, 1, true) then
		package.cpath = package.cpath .. ";" .. install_cpath_pattern
	end

	time([[Luarocks path setup]], false)
	time([[try_loadstring definition]], true)
	local function try_loadstring(s, component, name)
		local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
		if not success then
			vim.schedule(function()
				vim.api.nvim_notify(
					"packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
					vim.log.levels.ERROR,
					{}
				)
			end)
		end
		return result
	end

	time([[try_loadstring definition]], false)
	time([[Defining packer_plugins]], true)
	_G.packer_plugins = {
		["Comment.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/Comment.nvim",
			url = "https://github.com/numToStr/Comment.nvim",
		},
		LuaSnip = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/LuaSnip",
			url = "https://github.com/L3MON4D3/LuaSnip",
		},
		["SmoothCursor.nvim"] = {
			config = {
				"\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0",
			},
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
			url = "https://github.com/gen740/SmoothCursor.nvim",
		},
		["align.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/align.nvim",
			url = "https://github.com/Vonr/align.nvim",
		},
		["bookmarks.nvim"] = {
			config = {
				"\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\14bookmarks\19load_extension\14telescope\frequire\0",
			},
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/bookmarks.nvim",
			url = "https://github.com/crusj/bookmarks.nvim",
		},
		["bufferline.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
			url = "https://github.com/akinsho/bufferline.nvim",
		},
		["cmp-nvim-lsp"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
			url = "https://github.com/hrsh7th/cmp-nvim-lsp",
		},
		["cmp-path"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/cmp-path",
			url = "https://github.com/hrsh7th/cmp-path",
		},
		cmp_luasnip = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
			url = "https://github.com/saadparwaiz1/cmp_luasnip",
		},
		["diffview.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/diffview.nvim",
			url = "https://github.com/sindrets/diffview.nvim",
		},
		["fittencode.nvim"] = {
			config = {
				"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15fittencode\frequire\0",
			},
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/fittencode.nvim",
			url = "https://github.com/luozhiya/fittencode.nvim",
		},
		["fold-cycle.nvim"] = {
			config = {
				"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15fold-cycle\frequire\0",
			},
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/fold-cycle.nvim",
			url = "https://github.com/jghauser/fold-cycle.nvim",
		},
		["friendly-snippets"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/friendly-snippets",
			url = "https://github.com/rafamadriz/friendly-snippets",
		},
		["gitsigns.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
			url = "https://github.com/lewis6991/gitsigns.nvim",
		},
		["glance.nvim"] = {
			commands = { "Glance" },
			loaded = false,
			needs_bufread = false,
			only_cond = false,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/opt/glance.nvim",
			url = "https://github.com/dnlhc/glance.nvim",
		},
		["goto-preview"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/goto-preview",
			url = "https://github.com/rmagatti/goto-preview",
		},
		["indent-blankline.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
			url = "https://github.com/lukas-reineke/indent-blankline.nvim",
		},
		["logger.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/logger.nvim",
			url = "https://github.com/rmagatti/logger.nvim",
		},
		["lualine.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/lualine.nvim",
			url = "https://github.com/nvim-lualine/lualine.nvim",
		},
		["mason-lspconfig.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
			url = "https://github.com/williamboman/mason-lspconfig.nvim",
		},
		["mason.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/mason.nvim",
			url = "https://github.com/williamboman/mason.nvim",
		},
		["neo-tree.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
			url = "https://github.com/nvim-neo-tree/neo-tree.nvim",
		},
		["neoscroll.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
			url = "https://github.com/karb94/neoscroll.nvim",
		},
		["nui.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nui.nvim",
			url = "https://github.com/MunifTanjim/nui.nvim",
		},
		["null-ls.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
			url = "https://github.com/jose-elias-alvarez/null-ls.nvim",
		},
		["nvim-autopairs"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
			url = "https://github.com/windwp/nvim-autopairs",
		},
		["nvim-cmp"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-cmp",
			url = "https://github.com/hrsh7th/nvim-cmp",
		},
		["nvim-colorizer.lua"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
			url = "https://github.com/norcalli/nvim-colorizer.lua",
		},
		["nvim-cursorline"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-cursorline",
			url = "https://github.com/ya2s/nvim-cursorline",
		},
		["nvim-lspconfig"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
			url = "https://github.com/neovim/nvim-lspconfig",
		},
		["nvim-numbertoggle"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-numbertoggle",
			url = "https://github.com/sitiom/nvim-numbertoggle",
		},
		["nvim-scrollbar"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
			url = "https://github.com/petertriho/nvim-scrollbar",
		},
		["nvim-treesitter"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
			url = "https://github.com/nvim-treesitter/nvim-treesitter",
		},
		["nvim-ts-rainbow"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
			url = "https://github.com/p00f/nvim-ts-rainbow",
		},
		["nvim-web-devicons"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
			url = "https://github.com/kyazdani42/nvim-web-devicons",
		},
		["packer.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/packer.nvim",
			url = "https://github.com/wbthomason/packer.nvim",
		},
		["plenary.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/plenary.nvim",
			url = "https://github.com/nvim-lua/plenary.nvim",
		},
		["smear-cursor.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/smear-cursor.nvim",
			url = "https://github.com/sphamba/smear-cursor.nvim",
		},
		tagbar = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/tagbar",
			url = "https://github.com/majutsushi/tagbar",
		},
		["telescope.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/telescope.nvim",
			url = "https://github.com/nvim-telescope/telescope.nvim",
		},
		["tokyonight.nvim"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
			url = "https://github.com/folke/tokyonight.nvim",
		},
		["vim-floaterm"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/vim-floaterm",
			url = "https://github.com/voldikss/vim-floaterm",
		},
		["vim-tmux-navigator"] = {
			loaded = true,
			path = "/home/zhitian/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
			url = "https://github.com/christoomey/vim-tmux-navigator",
		},
	}

	time([[Defining packer_plugins]], false)
	-- Config for: fold-cycle.nvim
	time([[Config for fold-cycle.nvim]], true)
	try_loadstring(
		"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15fold-cycle\frequire\0",
		"config",
		"fold-cycle.nvim"
	)
	time([[Config for fold-cycle.nvim]], false)
	-- Config for: bookmarks.nvim
	time([[Config for bookmarks.nvim]], true)
	try_loadstring(
		"\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\14bookmarks\19load_extension\14telescope\frequire\0",
		"config",
		"bookmarks.nvim"
	)
	time([[Config for bookmarks.nvim]], false)
	-- Config for: SmoothCursor.nvim
	time([[Config for SmoothCursor.nvim]], true)
	try_loadstring(
		"\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17smoothcursor\frequire\0",
		"config",
		"SmoothCursor.nvim"
	)
	time([[Config for SmoothCursor.nvim]], false)
	-- Config for: fittencode.nvim
	time([[Config for fittencode.nvim]], true)
	try_loadstring(
		"\27LJ\2\n8\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\15fittencode\frequire\0",
		"config",
		"fittencode.nvim"
	)
	time([[Config for fittencode.nvim]], false)

	-- Command lazy-loads
	time([[Defining lazy-load commands]], true)
	pcall(vim.api.nvim_create_user_command, "Glance", function(cmdargs)
		require("packer.load")(
			{ "glance.nvim" },
			{
				cmd = "Glance",
				l1 = cmdargs.line1,
				l2 = cmdargs.line2,
				bang = cmdargs.bang,
				args = cmdargs.args,
				mods = cmdargs.mods,
			},
			_G.packer_plugins
		)
	end, {
		nargs = "*",
		range = true,
		bang = true,
		complete = function()
			require("packer.load")({ "glance.nvim" }, {}, _G.packer_plugins)
			return vim.fn.getcompletion("Glance ", "cmdline")
		end,
	})
	time([[Defining lazy-load commands]], false)

	_G._packer.inside_compile = false
	if _G._packer.needs_bufread == true then
		vim.cmd("doautocmd BufRead")
	end
	_G._packer.needs_bufread = false

	if should_profile then
		save_profiles()
	end
end)

if not no_errors then
	error_msg = error_msg:gsub('"', '\\"')
	vim.api.nvim_command(
		'echohl ErrorMsg | echom "Error in packer_compiled: '
			.. error_msg
			.. '" | echom "Please check your config for correctness" | echohl None'
	)
end
