-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jinnakamura/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/jinnakamura/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/jinnakamura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/jinnakamura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jinnakamura/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AbbrevMan.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/AbbrevMan.nvim",
    url = "https://github.com/Pocco81/AbbrevMan.nvim"
  },
  ["BackAndForward.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/BackAndForward.vim",
    url = "https://github.com/Bakudankun/BackAndForward.vim"
  },
  CamelCaseMotion = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/CamelCaseMotion",
    url = "https://github.com/bkad/CamelCaseMotion"
  },
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\2a\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0" },
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["artify.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/artify.vim",
    url = "https://github.com/sainnhe/artify.vim"
  },
  ["auto-paste-mode.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/auto-paste-mode.vim",
    url = "https://github.com/yutkat/auto-paste-mode.vim"
  },
  ["auto-session"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/auto-session",
    url = "https://github.com/rmagatti/auto-session"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["bufresize.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/bufresize.nvim",
    url = "https://github.com/kwkarlwang/bufresize.nvim"
  },
  ["capture.vim"] = {
    commands = { "Capture" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/capture.vim",
    url = "https://github.com/tyru/capture.vim"
  },
  ["chowcho.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/chowcho.nvim",
    url = "https://github.com/tkmpypy/chowcho.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-dictionary"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-dictionary",
    url = "https://github.com/uga-rosa/cmp-dictionary"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-mocword"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-mocword",
    url = "https://github.com/yutkat/cmp-mocword"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["comment-box.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/comment-box.nvim",
    url = "https://github.com/LudoPinelli/comment-box.nvim"
  },
  ["confirm-quit.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/confirm-quit.nvim",
    url = "https://github.com/yutkat/confirm-quit.nvim"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["cosco.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/cosco.vim",
    url = "https://github.com/lfilho/cosco.vim"
  },
  ["csv-tools.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/csv-tools.lua",
    url = "https://github.com/chen244/csv-tools.lua"
  },
  ["defx-icons"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/defx-icons",
    url = "https://github.com/kristijanhusak/defx-icons"
  },
  ["dial.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["git-messenger.vim"] = {
    commands = { "GitMessenger" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/git-messenger.vim",
    url = "https://github.com/rhysd/git-messenger.vim"
  },
  ["glow.nvim"] = {
    commands = { "Glow", "GlowInstall" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/glow.nvim",
    url = "https://github.com/npxbr/glow.nvim"
  },
  ["history-ignore.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/history-ignore.vim",
    url = "https://github.com/yutkat/history-ignore.vim"
  },
  ["hlargs.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["linediff.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/linediff.vim",
    url = "https://github.com/AndrewRadev/linediff.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["marks.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/marks.nvim",
    url = "https://github.com/chentau/marks.nvim"
  },
  ["mkdir.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/mkdir.nvim",
    url = "https://github.com/jghauser/mkdir.nvim"
  },
  ["modes.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2�\20\0\0\5\0A\0o6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\16\0005\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2=\2 \0015\2!\0005\3\"\0=\3#\0025\3%\0005\4$\0=\4&\3=\3'\2=\2(\0014\2\0\0=\2)\0015\2/\0005\3*\0005\4+\0=\4,\0034\4\0\0=\4-\0034\4\0\0=\4.\3=\0030\0025\0032\0005\0041\0=\4'\3=\3(\2=\0023\0015\0024\0005\0036\0005\0045\0=\4'\3=\3(\2=\0027\0015\2:\0005\0038\0005\0049\0=\4'\3=\3(\2=\2\31\1B\0\2\0016\0\0\0009\0\1\0'\1;\0B\0\2\0016\0\0\0009\0\1\0'\1<\0B\0\2\0016\0\0\0009\0\1\0'\1=\0B\0\2\0016\0\0\0009\0\1\0'\1>\0B\0\2\0016\0\0\0009\0\1\0'\1?\0B\0\2\0016\0\0\0009\0\1\0'\1@\0B\0\2\1K\0\1\0+nnoremap <leader>e :Neotree reveal<cr>2highlight EndOfBuffer ctermbg=NONE guibg=NONE-highlight Folded ctermbg=NONE guibg=NONE-highlight LineNr ctermbg=NONE guibg=NONE.highlight NonText ctermbg=NONE guibg=NONE-highlight Normal ctermbg=NONE guibg=NONE\1\0\0\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\n<c-x>\17clear_filter\6f\21filter_on_submit\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\6/\17fuzzy_finder\19filtered_items\1\0\3\24follow_current_file\2\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\15never_show\20hide_by_pattern\17hide_by_name\1\3\0\0\14.DS_Store\14thumbs.db\1\0\4\16hide_hidden\2\20hide_gitignored\2\fvisible\1\18hide_dotfiles\2\18nesting_rules\vwindow\rmappings\f<space>\1\0\18\6p\25paste_from_clipboard\6a\badd\6d\vdelete\6C\15close_node\18<2-LeftMouse>\topen\6w\28open_with_window_picker\6q\17close_window\6R\frefresh\6A\18add_directory\t<cr>\topen\6m\tmove\6t\16open_tabnew\6r\vrename\6s\16open_vsplit\6c\tcopy\6y\22copy_to_clipboard\6S\15open_split\6x\21cut_to_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\fdeleted\b✖\nadded\5\rconflict\b\frenamed\b\vstaged\b\runstaged\b\14untracked\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\18folder_closed\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\23expander_collapsed\b\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\22expander_expanded\b\18indent_marker\b│\17with_markers\2\16indent_size\3\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\4\25close_if_last_window\1\23popup_border_style\frounded\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogen = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["numbers.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/numbers.vim",
    url = "https://github.com/myusuf3/numbers.vim"
  },
  ["nvim-anywise-reg.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-anywise-reg.lua",
    url = "https://github.com/AckslD/nvim-anywise-reg.lua"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-comment-frame"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-comment-frame",
    url = "https://github.com/s1n7ax/nvim-comment-frame"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lsp-smag"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-lsp-smag",
    url = "https://github.com/weilbith/nvim-lsp-smag"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollbar"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-scrollbar",
    url = "https://github.com/petertriho/nvim-scrollbar"
  },
  ["nvim-test"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-test",
    url = "https://github.com/klen/nvim-test"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/romgrk/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\t\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\n\2=\2\v\1B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["nvim-yati"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim-yati",
    url = "https://github.com/yioneko/nvim-yati"
  },
  nvim_context_vt = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/nvim_context_vt",
    url = "https://github.com/haringsrob/nvim_context_vt"
  },
  ["open-browser-github.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/open-browser-github.vim",
    url = "https://github.com/tyru/open-browser-github.vim"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["other.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/other.nvim",
    url = "https://github.com/rgroli/other.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["quickfix-reflector.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/quickfix-reflector.vim",
    url = "https://github.com/stefandtw/quickfix-reflector.vim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/registers.nvim",
    url = "https://github.com/tversteeg/registers.nvim"
  },
  ["save-clipboard-on-exit.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/save-clipboard-on-exit.vim",
    url = "https://github.com/yutkat/save-clipboard-on-exit.vim"
  },
  ["sidebar.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/sidebar.nvim",
    url = "https://github.com/GustavoKatel/sidebar.nvim"
  },
  sniprun = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["sort.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/sort.nvim",
    url = "https://github.com/sQVe/sort.nvim"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/specs.nvim",
    url = "https://github.com/edluffy/specs.nvim"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "https://github.com/tami5/sqlite.lua"
  },
  ["stylish.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/stylish.nvim",
    url = "https://github.com/sunjon/stylish.nvim"
  },
  ["taskrun.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/taskrun.nvim",
    url = "https://github.com/yutkat/taskrun.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "https://github.com/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/telescope-github.nvim",
    url = "https://github.com/nvim-telescope/telescope-github.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://github.com/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["toolwindow.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/toolwindow.nvim",
    url = "https://github.com/EthanJWright/toolwindow.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-asterisk"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-asterisk",
    url = "https://github.com/haya14busa/vim-asterisk"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-columnmove"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-columnmove",
    url = "https://github.com/machakann/vim-columnmove"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-edgemotion"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-edgemotion",
    url = "https://github.com/haya14busa/vim-edgemotion"
  },
  ["vim-fold-cycle"] = {
    keys = { { "", "<CR>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-fold-cycle",
    url = "https://github.com/arecarn/vim-fold-cycle"
  },
  ["vim-fontzoom"] = {
    cond = { "return vim.fn.has'gui' == 1" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-fontzoom",
    url = "https://github.com/thinca/vim-fontzoom"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-ipmotion"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-ipmotion",
    url = "https://github.com/justinmk/vim-ipmotion"
  },
  ["vim-log-highlighting"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-log-highlighting",
    url = "https://github.com/MTDL9/vim-log-highlighting"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-milfeulle"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-milfeulle",
    url = "https://github.com/osyo-manga/vim-milfeulle"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-niceblock"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-niceblock",
    url = "https://github.com/kana/vim-niceblock"
  },
  ["vim-prettyprint"] = {
    commands = { "PP", "PrettyPrint" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-prettyprint",
    url = "https://github.com/thinca/vim-prettyprint"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-quickhl"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-quickhl",
    url = "https://github.com/t9md/vim-quickhl"
  },
  ["vim-ref"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-ref",
    url = "https://github.com/thinca/vim-ref"
  },
  ["vim-rengbang"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-rengbang",
    url = "https://github.com/deris/vim-rengbang"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-sandwich",
    url = "https://github.com/machakann/vim-sandwich"
  },
  ["vim-silicon"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-silicon",
    url = "https://github.com/segeljakt/vim-silicon"
  },
  ["vim-sonictemplate"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-sonictemplate",
    url = "https://github.com/mattn/vim-sonictemplate"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  ["vim-unimpaired"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-uppercase-sql"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vim-uppercase-sql",
    url = "https://github.com/alcesleo/vim-uppercase-sql"
  },
  vimwiki = {
    config = { "\27LJ\2\2�\1\0\0\3\0\6\0\v6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\0\3\14.markdown\rmarkdown\b.md\rmarkdown\v.mdown\rmarkdown\23vimwiki_ext2syntax\1\0\3\bext\b.md\vsyntax\rmarkdown\tpath!~/devenv/codevion.github.io/\17vimwiki_list\6g\bvim\0" },
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
  },
  ["vinarise.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/vinarise.vim",
    url = "https://github.com/Shougo/vinarise.vim"
  },
  ["wb-only-current-line.vim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/wb-only-current-line.vim",
    url = "https://github.com/yutkat/wb-only-current-line.vim"
  },
  ["yanky.nvim"] = {
    loaded = true,
    path = "/home/jinnakamura/.local/share/nvim/site/pack/packer/start/yanky.nvim",
    url = "https://github.com/gbprod/yanky.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2�\20\0\0\5\0A\0o6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\16\0005\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2=\2 \0015\2!\0005\3\"\0=\3#\0025\3%\0005\4$\0=\4&\3=\3'\2=\2(\0014\2\0\0=\2)\0015\2/\0005\3*\0005\4+\0=\4,\0034\4\0\0=\4-\0034\4\0\0=\4.\3=\0030\0025\0032\0005\0041\0=\4'\3=\3(\2=\0023\0015\0024\0005\0036\0005\0045\0=\4'\3=\3(\2=\0027\0015\2:\0005\0038\0005\0049\0=\4'\3=\3(\2=\2\31\1B\0\2\0016\0\0\0009\0\1\0'\1;\0B\0\2\0016\0\0\0009\0\1\0'\1<\0B\0\2\0016\0\0\0009\0\1\0'\1=\0B\0\2\0016\0\0\0009\0\1\0'\1>\0B\0\2\0016\0\0\0009\0\1\0'\1?\0B\0\2\0016\0\0\0009\0\1\0'\1@\0B\0\2\1K\0\1\0+nnoremap <leader>e :Neotree reveal<cr>2highlight EndOfBuffer ctermbg=NONE guibg=NONE-highlight Folded ctermbg=NONE guibg=NONE-highlight LineNr ctermbg=NONE guibg=NONE.highlight NonText ctermbg=NONE guibg=NONE-highlight Normal ctermbg=NONE guibg=NONE\1\0\0\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\1\18show_unloaded\2\15filesystem\1\0\0\1\0\6\n<c-x>\17clear_filter\6f\21filter_on_submit\6H\18toggle_hidden\t<bs>\16navigate_up\6.\rset_root\6/\17fuzzy_finder\19filtered_items\1\0\3\24follow_current_file\2\27use_libuv_file_watcher\1\26hijack_netrw_behavior\17open_default\15never_show\20hide_by_pattern\17hide_by_name\1\3\0\0\14.DS_Store\14thumbs.db\1\0\4\16hide_hidden\2\20hide_gitignored\2\fvisible\1\18hide_dotfiles\2\18nesting_rules\vwindow\rmappings\f<space>\1\0\18\6p\25paste_from_clipboard\6a\badd\6d\vdelete\6C\15close_node\18<2-LeftMouse>\topen\6w\28open_with_window_picker\6q\17close_window\6R\frefresh\6A\18add_directory\t<cr>\topen\6m\tmove\6t\16open_tabnew\6r\vrename\6s\16open_vsplit\6c\tcopy\6y\22copy_to_clipboard\6S\15open_split\6x\21cut_to_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3(\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\fdeleted\b✖\nadded\5\rconflict\b\frenamed\b\vstaged\b\runstaged\b\14untracked\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\18folder_closed\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\23expander_collapsed\b\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\22expander_expanded\b\18indent_marker\b│\17with_markers\2\16indent_size\3\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\4\25close_if_last_window\1\23popup_border_style\frounded\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\t\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\n\2=\2\v\1B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\2�\1\0\0\3\0\6\0\v6\0\0\0009\0\1\0004\1\3\0005\2\3\0>\2\1\1=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0K\0\1\0\1\0\3\14.markdown\rmarkdown\b.md\rmarkdown\v.mdown\rmarkdown\23vimwiki_ext2syntax\1\0\3\bext\b.md\vsyntax\rmarkdown\tpath!~/devenv/codevion.github.io/\17vimwiki_list\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\2a\0\0\3\0\5\0\n6\0\0\0'\1\1\0B\0\2\0029\0\2\0006\1\0\0'\2\3\0B\1\2\0029\1\4\1B\0\2\1K\0\1\0\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Conditional loads
time([[Conditional loading of vim-fontzoom]], true)
  require("packer.load")({"vim-fontzoom"}, {}, _G.packer_plugins)
time([[Conditional loading of vim-fontzoom]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Capture lua require("packer.load")({'capture.vim'}, { cmd = "Capture", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Glow lua require("packer.load")({'glow.nvim'}, { cmd = "Glow", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GlowInstall lua require("packer.load")({'glow.nvim'}, { cmd = "GlowInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PP lua require("packer.load")({'vim-prettyprint'}, { cmd = "PP", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GitMessenger lua require("packer.load")({'git-messenger.vim'}, { cmd = "GitMessenger", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file PrettyPrint lua require("packer.load")({'vim-prettyprint'}, { cmd = "PrettyPrint", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <CR> <cmd>lua require("packer.load")({'vim-fold-cycle'}, { keys = "<lt>CR>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au FocusLost * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "FocusLost *" }, _G.packer_plugins)]]
vim.cmd [[au CursorHold * ++once lua require("packer.load")({'vim-unimpaired'}, { event = "CursorHold *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
  -- Function lazy-loads
time([[Defining lazy-load function autocommands]], true)
vim.cmd[[au FuncUndefined Artify ++once lua require("packer.load")({'artify.vim'}, {}, _G.packer_plugins)]]
time([[Defining lazy-load function autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/jinnakamura/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
