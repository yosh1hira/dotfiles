vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- package manager
  ------------------------------------
  use {
    "wbthomason/packer.nvim"
  }

  -- colorscheme
  ------------------------------------
  use {
    "sainnhe/gruvbox-material"
  }

  -- treesitter
  ------------------------------------
  use {
    "nvim-treesitter/nvim-treesitter"
  }

  -- fuzzy finder
  ------------------------------------
  use {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  }

  -- statusline
  ------------------------------------
  use {
    "glepnir/galaxyline.nvim"
  }

  -- for web development
  ------------------------------------
  use {
    "mattn/emmet-vim",
    opt = true,
    ft = {js, ts, html, css}
  }

  use {
    "norcalli/nvim-colorizer.lua",
    opt = true,
    ft = {js, ts, html, css}
  }

  -- for utility
  ------------------------------------
  use {
    "kana/vim-submode"
  }

  use {
    "cohama/lexima.vim"
  }

  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require("surround").setup {mapping_style = "surround"}
    end
  }

  use {
    "kyazdani42/nvim-web-devicons"
  }

end)
