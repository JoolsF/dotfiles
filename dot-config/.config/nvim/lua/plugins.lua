-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use({'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" }})
  use "nvim-lua/plenary.nvim"
  use "hrsh7th/cmp-nvim-lsp" 
  use "hrsh7th/cmp-vsnip"
  use "hrsh7th/vim-vsnip"

end)
