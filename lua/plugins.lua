-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies". 
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'Shatur/neovim-ayu'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp' 
    use 'hrsh7th/cmp-buffer'        -- buffer auto-completion
    use 'hrsh7th/cmp-path'          -- path auto-completion
    use 'hrsh7th/cmp-cmdline'       -- cmdline auto-completion
    use 'hrsh7th/nvim-cmp'    
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use { 'rcarriga/nvim-dap-ui', requires = { 'mfussenegger/nvim-dap' } }
    use 'mhartington/formatter.nvim'
    use 'nvim-treesitter/nvim-treesitter'

    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
    use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
    use 'mfussenegger/nvim-lint'

    use 'tpope/vim-endwise'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-rhubarb'
    use 'tpope/vim-surround'
    use 'vim-scripts/tComment'
    use 'junegunn/fzf.vim'
    use 'godlygeek/tabular'
    use 'vim-airline/vim-airline'
    use 'pbrisbin/vim-mkdir'
    use 'knubie/vim-kitty-navigator'
    use {
      "zbirenbaum/copilot-cmp",
      requires = { "zbirenbaum/copilot.lua" },
      after = { "copilot.lua" },
      config = function ()
        require("copilot_cmp").setup()
      end
    }
    use({ "elixir-tools/elixir-tools.nvim", tag = "stable", requires = { "nvim-lua/plenary.nvim" }})

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

