

vim.cmd[[packadd packer.nvim]]

vim.cmd([[
augroup packaer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

require('packer').startup(function()
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      {
        -- only needed if you want to use the commands with "_with_window_picker" suffix
        's1n7ax/nvim-window-picker',
        tag = "1.*",
        config = function()
          require'window-picker'.setup({
            autoselect_one = true,
            include_current = false,
            filter_rules = {
              -- filter using buffer options
              bo = {
                -- if the file type is one of following, the window will be ignored
                filetype = { 'neo-tree', "neo-tree-popup", "notify", "quickfix" },

                -- if the buffer type is one of following, the window will be ignored
                buftype = { 'terminal' },
              },
            },
            other_win_hl_color = '#e35e4f',
          })
        end,
      }
    },
    config = function ()
      -- Unless you are still migrating, remove the deprecated commands from v1.x
      vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

      -- If you want icons for diagnostic errors, you'll need to define them somewhere:
      vim.fn.sign_define("DiagnosticSignError",
        {text = " ", texthl = "DiagnosticSignError"})
      vim.fn.sign_define("DiagnosticSignWarn",
        {text = " ", texthl = "DiagnosticSignWarn"})
      vim.fn.sign_define("DiagnosticSignInfo",
        {text = " ", texthl = "DiagnosticSignInfo"})
      vim.fn.sign_define("DiagnosticSignHint",
        {text = "", texthl = "DiagnosticSignHint"})
      -- NOTE: this is changed from v1.x, which used the old style of highlight groups
      -- in the form "LspDiagnosticsSignWarning"

      require("neo-tree").setup({
        close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        default_component_configs = {
          container = {
            enable_character_fade = true
          },
          indent = {
            indent_size = 2,
            padding = 1, -- extra padding on left hand side
            -- indent guides
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            -- expander config, needed for nesting files
            with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "ﰊ",
            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
            -- then these will never be used.
            default = "*",
            highlight = "NeoTreeFileIcon"
          },
          modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
          },
          name = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              -- Change type
              added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "",-- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "",
              staged    = "",
              conflict  = "",
            }
          },
        },
        window = {
          position = "left",
          width = 40,
          mapping_options = {
            noremap = true,
            nowait = true,
          },
          mappings = {
            ["<space>"] = {
                "toggle_node",
                nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use
            },
            ["<2-LeftMouse>"] = "open",
            ["<cr>"] = "open",
            ["S"] = "open_split",
            -- ["S"] = "split_with_window_picker",
            ["s"] = "open_vsplit",
            -- ["s"] = "vsplit_with_window_picker",
            ["t"] = "open_tabnew",
            ["w"] = "open_with_window_picker",
            ["C"] = "close_node",
            ["a"] = "add",
            ["A"] = "add_directory",
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy", -- takes text input for destination
            ["m"] = "move", -- takes text input for destination
            ["q"] = "close_window",
            ["R"] = "refresh",
          }
        },
        nesting_rules = {},
        filesystem = {
          filtered_items = {
            visible = false, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_hidden = true, -- only works on Windows for hidden files/directories
            hide_by_name = {
              ".DS_Store",
              "thumbs.db"
              --"node_modules"
            },
            hide_by_pattern = { -- uses glob style patterns
              --"*.meta"
            },
            never_show = { -- remains hidden even if visible is toggled to true
              --".DS_Store",
              --"thumbs.db"
            },
          },
          follow_current_file = true, -- This will find and focus the file in the active buffer every
                                       -- time the current file is changed while the tree is open.
          hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                                                  -- in whatever position is specified in window.position
                                -- "open_current",  -- netrw disabled, opening a directory opens within the
                                                  -- window like netrw would, regardless of window.position
                                -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
          use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                                          -- instead of relying on nvim autocmd events.
          window = {
            mappings = {
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
              ["H"] = "toggle_hidden",
              ["/"] = "fuzzy_finder",
              ["f"] = "filter_on_submit",
              ["<c-x>"] = "clear_filter",
            }
          }
        },
        buffers = {
          show_unloaded = true,
          window = {
            mappings = {
              ["bd"] = "buffer_delete",
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
            }
          },
        },
        git_status = {
          window = {
            position = "float",
            mappings = {
              ["A"]  = "git_add_all",
              ["gu"] = "git_unstage_file",
              ["ga"] = "git_add_file",
              ["gr"] = "git_revert_file",
              ["gc"] = "git_commit",
              ["gp"] = "git_push",
              ["gg"] = "git_commit_and_push",
            }
          }
        }
      })

vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
vim.cmd("highlight NonText ctermbg=NONE guibg=NONE")
vim.cmd("highlight LineNr ctermbg=NONE guibg=NONE")
vim.cmd("highlight Folded ctermbg=NONE guibg=NONE")
vim.cmd("highlight EndOfBuffer ctermbg=NONE guibg=NONE")
      vim.cmd([[nnoremap <leader>e :Neotree reveal<cr>]])
    end
}

use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}


  use 'ntpeters/vim-better-whitespace'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-repeat'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'tami5/sqlite.lua'
  use 'MunifTanjim/nui.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'rcarriga/nvim-notify'
  use 'EdenEast/nightfox.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-nvim-lsp-document-symbol'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  --use 'zbirenbaum/copilot-cmp'
  use 'hrsh7th/cmp-emoji'
  use 'hrsh7th/cmp-calc'
  use 'f3fora/cmp-spell'
  use 'yutkat/cmp-mocword'
  use 'uga-rosa/cmp-dictionary'
  use 'saadparwaiz1/cmp_luasnip'
  use 'ray-x/cmp-treesitter'
  use 'hrsh7th/cmp-cmdline'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'tamago324/nlsp-settings.nvim'
  use 'weilbith/nvim-lsp-smag'
  use 'tami5/lspsaga.nvim'
  use 'folke/lsp-colors.nvim'
  use 'folke/trouble.nvim'
  use 'EthanJWright/toolwindow.nvim'
  use 'j-hui/fidget.nvim'
  use 'github/copilot.vim'
  use 'zbirenbaum/copilot.lua'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-frecency.nvim'
  use 'nvim-telescope/telescope-packer.nvim'
  use 'nvim-telescope/telescope-github.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'yioneko/nvim-yati'
  use 'romgrk/nvim-treesitter-context'
  use 'p00f/nvim-ts-rainbow'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'haringsrob/nvim_context_vt'
  use 'm-demare/hlargs.nvim'
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/bufferline.nvim'
  use 'RRethy/vim-illuminate'
  use 'norcalli/nvim-colorizer.lua'
  use 't9md/vim-quickhl'
  use 'mvllow/modes.nvim'
  use 'myusuf3/numbers.vim'
  use 'GustavoKatel/sidebar.nvim'
  use 'sunjon/stylish.nvim'
  use 'petertriho/nvim-scrollbar'
  use 'edluffy/specs.nvim'
  use 'phaazon/hop.nvim'
  use 'unblevable/quick-scope'
  use 'haya14busa/vim-edgemotion'
  use 'machakann/vim-columnmove'
  use 'justinmk/vim-ipmotion'
  use 'bkad/CamelCaseMotion'
  use 'yutkat/wb-only-current-line.vim'
  use 'osyo-manga/vim-milfeulle'
  use 'Bakudankun/BackAndForward.vim'
  use 'kana/vim-niceblock'
  use 'machakann/vim-sandwich'
  use 'deris/vim-rengbang'
  use 'monaqa/dial.nvim'
  use 'gbprod/yanky.nvim'
  use 'AckslD/nvim-neoclip.lua'
  use 'yutkat/save-clipboard-on-exit.vim'
  use 'yutkat/auto-paste-mode.vim'
  use 'tversteeg/registers.nvim'
  use 'AckslD/nvim-anywise-reg.lua'
  use 'kevinhwang91/nvim-hlslens'
  use 'haya14busa/vim-asterisk'
  use 'tkmpypy/chowcho.nvim'
  use 'kwkarlwang/bufresize.nvim'
  use 'simnalamburt/vim-mundo'
  use 'AndrewRadev/linediff.vim'
  use 'chentau/marks.nvim'
  use 'thinca/vim-ref'
  use 'rmagatti/auto-session'
  use 'Pocco81/AbbrevMan.nvim'
  use 'jghauser/mkdir.nvim'
  use 'sQVe/sort.nvim'
  use 'yutkat/confirm-quit.nvim'
  use 'yutkat/history-ignore.vim'
  use 'segeljakt/vim-silicon'
  use 'Shougo/vinarise.vim'
  use 'tyru/open-browser.vim'
  use 'tyru/open-browser-github.vim'
  use 'mattn/vim-sonictemplate'
  use 'lfilho/cosco.vim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'numToStr/Comment.nvim'
  use 's1n7ax/nvim-comment-frame'
  use 'LudoPinelli/comment-box.nvim'
  use 'danymat/neogen'
  use 'andymass/vim-matchup'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'rgroli/other.nvim'
  use 'klen/nvim-test'
  use 'michaelb/sniprun'
  use 'yutkat/taskrun.nvim'
  use 'alcesleo/vim-uppercase-sql'
  use 'chen244/csv-tools.lua'
  use 'MTDL9/vim-log-highlighting'
  use 'ryanoasis/vim-devicons'
  use 'kristijanhusak/defx-icons'

  -- Testing
  use 'vim-test/vim-test'

  -- Projection
  use 'tpope/vim-projectionist'

  -- Quickfix
  use 'stefandtw/quickfix-reflector.vim'

  -- Terminal
  use({ 'akinsho/toggleterm.nvim' })

  -- Comment
  use 'terrortylor/nvim-comment'

  -- Statusline
  use 'feline-nvim/feline.nvim'

  use {'wbthomason/packer.nvim', opt = true}
  use {'rhysd/git-messenger.vim', opt = true, cmd = {'GitMessenger'}}
  use {'tpope/vim-unimpaired', opt = true, event = {'FocusLost', 'CursorHold'}}
  use {'fatih/vim-go', opt = true, ft = {'go'}}
  use {
    'arecarn/vim-fold-cycle',
    opt = true,
    keys = {'<CR>'},
  }
  use {'sainnhe/artify.vim', opt = true, fn = {'Artify'}}
  use {
    'npxbr/glow.nvim',
    cmd = {'Glow', 'GlowInstall'},
    run = [[:GlowInstall]],
  }
  use {
    'thinca/vim-fontzoom',
    cond = [[vim.fn.has'gui' == 1]],
  }
  use {
    'tyru/capture.vim',
    requires = {
      {'thinca/vim-prettyprint', cmd = {'PP', 'PrettyPrint'}},
    },
    cmd = {'Capture'},
  }
  use {
    'vimwiki/vimwiki',
    config = function()

      vim.g.vimwiki_list = {
        {
          path = '~/devenv/codevion.github.io/',
          syntax = 'markdown',
          ext = '.md',
        }
      }

      vim.g.vimwiki_ext2syntax = {
        ['.md'] = 'markdown',
        ['.markdown'] = 'markdown',
        ['.mdown'] = 'markdown',
      }
    end
  }
end)


